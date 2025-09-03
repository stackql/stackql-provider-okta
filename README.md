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

Update the resultant `provider-dev/config/all_services.csv` to add the `stackql_resource_name`, `stackql_method_name`, `stackql_verb` values for each operation.

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
Make necessary updates to the output docs:

```bash
sh provider-dev/scripts/post_processing.sh
```

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

#### Test Meta Routes

Test all metadata routes (services, resources, methods) in the provider:

```bash
npm run test-meta-routes -- okta --verbose
```
When you're done testing, stop the StackQL server:

```bash
npm run stop-server
```

use this command to view the server status:

```bash
npm run server-status
```

#### Run test queries

Run some test queries against the provider using the `stackql shell`:

```bash
PROVIDER_REGISTRY_ROOT_DIR="$(pwd)/provider-dev/openapi"
REG_STR='{"url": "file://'${PROVIDER_REGISTRY_ROOT_DIR}'", "localDocRoot": "'${PROVIDER_REGISTRY_ROOT_DIR}'", "verifyConfig": {"nopVerify": true}}'
./stackql shell --registry="${REG_STR}"
```

### 6. Publish the provider

To publish the provider push the `okta` dir to `providers/src` in a feature branch of the [`stackql-provider-registry`](https://github.com/stackql/stackql-provider-registry).  Follow the [registry release flow](https://github.com/stackql/stackql-provider-registry/blob/dev/docs/build-and-deployment.md).  

Launch the StackQL shell:

```bash
export DEV_REG="{ \"url\": \"https://registry-dev.stackql.app/providers\" }"
./stackql --registry="${DEV_REG}" shell
```

pull the latest dev `okta` provider:

```sql
registry pull okta;
```

Run some test queries

### 7. Generate web docs

```bash
npm run generate-docs -- \
  --provider-name okta \
  --provider-dir ./provider-dev/openapi/src/okta/v00.00.00000 \
  --output-dir ./website \
  --provider-data-dir ./provider-dev/docgen/provider-data
```  

### 8. Test web docs locally

```bash
cd website
# test build
yarn build

# run local dev server
yarn start
```

### 9. Publish web docs to GitHub Pages

Under __Pages__ in the repository, in the __Build and deployment__ section select __GitHub Actions__ as the __Source__.  In Netlify DNS create the following records:  

| Source Domain | Record Type  | Target |
|---------------|--------------|--------|
| okta-provider.stackql.io | CNAME | stackql.github.io |

## License

MIT

## Contributing

Contributions to the Okta provider are welcome! Please feel free to submit a Pull Request.