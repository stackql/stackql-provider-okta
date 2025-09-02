## `okta` provider for [`stackql`](https://github.com/stackql/stackql)

This repository is used to generate and document the Okta provider for StackQL, allowing you to query and manipulate Okta resources using SQL-like syntax. The provider is built using the `@stackql/provider-utils` package, which provides tools for converting OpenAPI specifications into StackQL-compatible provider schemas.

The `@stackql/provider-utils` package offers several utilities that this provider uses:
- `split` - Divides a large OpenAPI spec into smaller service-specific files
- `analyze` - Examines OpenAPI specs and generates mapping configuration files
- `generate` - Creates StackQL provider extensions from OpenAPI specs and mappings
- `docgen` - Builds documentation for the provider

### Prerequisites

To use the Okta provider with StackQL, you'll need:

1. An Okta account with appropriate API credentials
2. An Okta API token with sufficient permissions for the resources you want to access
3. StackQL CLI installed on your system (see [StackQL](https://github.com/stackql/stackql))

### 1. Download the Open API Specification

First, download the Okta Management API OpenAPI specification:

```bash
curl -L https://raw.githubusercontent.com/okta/okta-management-openapi-spec/master/dist/current/management-minimal.yaml \
  -o provider-dev/downloaded/management-minimal.yaml
```

This downloads the official Okta Management API specification, which defines all available API endpoints, request parameters, and response schemas.

### 2. Split into Service Specs

Next, split the monolithic OpenAPI specification into service-specific files:

```bash
npm run split -- \
  --provider-name okta \
  --api-doc provider-dev/downloaded/management-minimal.yaml \
  --svc-discriminator path \
  --output-dir provider-dev/source \
  --overwrite
```

This step breaks down the large Okta API specification into smaller, more manageable service files. The `--svc-discriminator path` option tells the tool to use the URL path structure to determine which API endpoints belong to which service. For Okta, this creates separate files for different functional areas like users, groups, applications, etc.

### 3. Generate Mappings

Generate the mapping configuration that connects OpenAPI operations to StackQL resources:

```bash
npm run generate-mappings -- \
  --provider-name okta \
  --input-dir provider-dev/source \
  --output-dir provider-dev/config
```

This step analyzes the service specs and creates a CSV mapping file that defines how OpenAPI operations translate to StackQL resources, methods, and SQL verbs. The mapping process handles two scenarios:

1. **New Provider Development**: If no mapping file exists yet, this creates a new `all_services.csv` file with all operations from the OpenAPI spec. You'll need to edit this file to assign appropriate resource names, method names, and SQL verbs.

2. **Updating Existing Mappings**: If a mapping file already exists, the tool will:
   - Load the existing mappings
   - Identify new operations that aren't yet mapped
   - Flag operations with incomplete mappings (missing resource, method, or SQL verb)
   - Skip operations that are already fully mapped

After running this command, you should review and edit the generated `all_services.csv` file to ensure all operations are properly mapped to appropriate resources.

### 4. Generate Provider

This step transforms the split OpenAPI service specs into a fully-functional StackQL provider by applying the resource and method mappings defined in your CSV file.

```bash
npm run generate-provider -- \
  --provider-name okta \
  --input-dir provider-dev/source \
  --output-dir provider-dev/openapi/src/okta \
  --config-path provider-dev/config/all_services.csv \
  --servers '[{"url": "https://{subdomain}.okta.com/", "variables": {"subdomain": {"default": "my-org","description": "The domain of your organization. This can be a provided subdomain of an official okta domain (okta.com, oktapreview.com, etc) or one of your configured custom domains."}}}]' \
  --provider-config '{"config": {"auth": {"credentialsenvvar": "OKTA_API_TOKEN","type": "api_key","valuePrefix": "SSWS "}}}' \
  --skip-files _well_known.yaml \
  --overwrite
```

sh provider-dev/scripts/fix_mappings_issue.sh

The `--servers` parameter defines the base URL pattern for API requests, with variables that users can customize. For Okta, this allows specifying different subdomains for different Okta instances.

The `--provider-config` parameter sets up the authentication method. For Okta, this configures an API token authentication scheme that:
- Looks for the API token in the `OKTA_API_TOKEN` environment variable
- Applies the `SSWS ` prefix required by Okta's API
- Uses the token as an API key in the Authorization header

The generated provider will be structured according to the StackQL conventions, with properly organized resources and methods that map to the underlying API operations.

After running this command, you'll have a complete provider structure in the `provider-dev/openapi/src` directory, ready for testing or packaging.

### 5. Test Provider

#### Starting the StackQL Server

Before running tests, start a StackQL server with your provider:

```bash
PROVIDER_REGISTRY_ROOT_DIR="$(pwd)/provider-dev/openapi"
npm run start-server -- --provider okta --registry $PROVIDER_REGISTRY_ROOT_DIR
```

```bash
PROVIDER_REGISTRY_ROOT_DIR="$(pwd)/provider-dev/openapi"
REG_STR='{"url": "file://'${PROVIDER_REGISTRY_ROOT_DIR}'", "localDocRoot": "'${PROVIDER_REGISTRY_ROOT_DIR}'", "verifyConfig": {"nopVerify": true}}'
./stackql shell --registry="${REG_STR}"
```

#### Test Meta Routes

Test all metadata routes (services, resources, methods) in the provider:

```bash
npm run test-meta-routes -- okta --verbose
```

When you're done testing, stop the StackQL server:

npm run server-status

```bash
npm run stop-server
```
npm run server-status

npm run test-meta-routes -- okta --verbose



### 5. Generate Provider Docs





These should include:

- how to get the providers Open API spec (download these to the [`provider-dev/source`](provider-dev/source) dir)
- if and how to pre process the spec if required
- how to analyze routes and generate a mapping csv in the [`provider-dev/config`](provider-dev/config) dir
- how to generate `stackql` extensions referencing the mapping csv using the included `openapi_to_stackql` python module
- if an how to post process the spec if required

### Steps to test the provider

Steps to inspect and test the provider, such as:



Provide some reference queries for the provider.


```bash
bash ./bin/openapi-to-stackql.sh analyze \
--input provider-dev/source/snowflake-rest-api-specs-main/specifications \
--output provider-dev/config
```

update the resultant `provider-dev/config/all_services.csv` to add the `stackql_resource_name`, `stackql_method_name`, `stackql_verb` values for each operation, save the file as `provider-dev/config/snowflake.csv`

### 3. Pre process the specs

The `common.yaml` contains schemas to be injected into all other service specs, use the following code to do this...

```bash
bash ./provider-dev/scripts/pre_process.sh provider-dev/source/snowflake-rest-api-specs-main/specifications
```

### 4. Generate the provider

Run the following code to generate the `snowflake` stackql provider:

```bash
bash ./bin/openapi-to-stackql.sh convert \
--input provider-dev/source/snowflake-rest-api-specs-main/specifications \
--output provider-dev/src/snowflake \
--config provider-dev/config/snowflake.csv \
--provider snowflake \
--servers '[{"url":"https://{endpoint}.snowflakecomputing.com","description":"Multi-tenant Snowflake endpoint","variables":{"endpoint":{"default":"orgid-acctid","description":"Organization and Account Name"}}}]' \
--provider-config '{"auth":{"type":"bearer","credentialsenvvar":"SNOWFLAKE_PAT" }}' \
--skip common.yaml
```

### 5. Post process the specs
Post process the specs to remove redundant reference paths:

```bash
python3 ./provider-dev/scripts/post_process.py provider-dev/src/snowflake/v00.00.00000/services
```

### 6. Test the provider locally

Download `stackql`: 

```bash
curl -L https://bit.ly/stackql-zip -O \
&& unzip stackql-zip
```

Test the provider locally:

```bash
PROVIDER_REGISTRY_ROOT_DIR="$(pwd)"
REG_STR='{"url": "file://'${PROVIDER_REGISTRY_ROOT_DIR}/provider-dev'", "localDocRoot": "'${PROVIDER_REGISTRY_ROOT_DIR}/provider-dev'", "verifyConfig": {"nopVerify": true}}'
./stackql shell --registry="${REG_STR}"
```

```sql
select name, owner from snowflake.database.databases where endpoint = 'OKXVNMC-VH34026';

SELECT name, bytes, data_retention_time_in_days, table_type FROM snowflake.table.tables WHERE database_name = 'SNOWFLAKE_SAMPLE_DATA' AND schema_name = 'TPCH_SF10' AND endpoint = 'OKXVNMC-VH34026' order by bytes DESC;
```

### 5. Publish the provider

To publish the provider push the `snowflake` dir to `providers/src` in a feature branch of the [`stackql-provider-registry`](https://github.com/stackql/stackql-provider-registry).  Follow the [registry release flow](https://github.com/stackql/stackql-provider-registry/blob/dev/docs/build-and-deployment.md).

### 6. Test the provider in the `dev` registry

Launch the StackQL shell:

```bash
export DEV_REG="{ \"url\": \"https://registry-dev.stackql.app/providers\" }"
./stackql --registry="${DEV_REG}" shell
```

pull the latest dev `snowflake` provider:

```sql
registry pull snowflake;
```

Run some test queries

### 7. Generate web docs

```bash
rm -rf ./website/docs/*
npm i
npm run generate-docs -- \
  --provider-name snowflake \
  --provider-dir ./provider-dev/src/snowflake/v00.00.00000 \
  --output-dir ./website \
  --provider-data-dir ./provider-dev/docgen/provider-data
```  

### 8. Test web docs locally

```bash
cd website
yarn start
```