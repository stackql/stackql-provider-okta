--- 
title: federated_claims
hide_title: false
hide_table_of_contents: false
keywords:
  - federated_claims
  - apps
  - okta
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage okta resources using SQL
custom_edit_url: null
image: /img/stackql-okta-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>federated_claims</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>federated_claims</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.federated_claims" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_federated_claims"
    values={[
        { label: 'list_federated_claims', value: 'list_federated_claims' },
        { label: 'get_federated_claim', value: 'get_federated_claim' }
    ]}
>
<TabItem value="list_federated_claims">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The unique ID of the federated claim (example: ofc2f4zrZbs8nUa7p0g4)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the claim to be used in the produced token (example: roleg)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the federated claim was created (example: 2024-02-29T20:08:24.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="expression" /></td>
    <td><code>string</code></td>
    <td>The Okta Expression Language expression to be evaluated at runtime (example: appuser.entitlements.role)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string</code></td>
    <td>Timestamp when the federated claim was updated (example: 2023-02-21T20:08:24.000Z)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_federated_claim">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the claim to be used in the produced token (example: role)</td>
</tr>
<tr>
    <td><CopyableCode code="expression" /></td>
    <td><code>string</code></td>
    <td>The Okta Expression Language expression to be evaluated at runtime (example: appuser.entitlements.role)</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#list_federated_claims"><CopyableCode code="list_federated_claims" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all federated claims for your app</td>
</tr>
<tr>
    <td><a href="#get_federated_claim"><CopyableCode code="get_federated_claim" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a federated claim by `claimId`</td>
</tr>
<tr>
    <td><a href="#create_federated_claim"><CopyableCode code="create_federated_claim" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a claim that will be included in tokens produced by federation protocols (for example: OIDC `id_tokens` or SAML Assertions)</td>
</tr>
<tr>
    <td><a href="#replace_federated_claim"><CopyableCode code="replace_federated_claim" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a claim that will be included in tokens produced by federation protocols (for example: OIDC `id_tokens` or SAML Assertions)</td>
</tr>
<tr>
    <td><a href="#delete_federated_claim"><CopyableCode code="delete_federated_claim" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a federated claim by `claimId`</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>The domain of your organization. This can be a provided subdomain of an official okta domain (okta.com, oktapreview.com, etc) or one of your configured custom domains. (default: my-org)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_federated_claims"
    values={[
        { label: 'list_federated_claims', value: 'list_federated_claims' },
        { label: 'get_federated_claim', value: 'get_federated_claim' }
    ]}
>
<TabItem value="list_federated_claims">

Lists all federated claims for your app

```sql
SELECT
id,
name,
created,
expression,
lastUpdated
FROM okta.apps.federated_claims
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_federated_claim">

Retrieves a federated claim by `claimId`

```sql
SELECT
name,
expression
FROM okta.apps.federated_claims
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_federated_claim"
    values={[
        { label: 'create_federated_claim', value: 'create_federated_claim' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_federated_claim">

Creates a claim that will be included in tokens produced by federation protocols (for example: OIDC `id_tokens` or SAML Assertions)

```sql
INSERT INTO okta.apps.federated_claims (
data__expression,
data__name,
subdomain
)
SELECT 
'{{ expression }}',
'{{ name }}',
'{{ subdomain }}'
RETURNING
id,
name,
created,
expression,
lastUpdated
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: federated_claims
  props:
    - name: subdomain
      value: string
      description: Required parameter for the federated_claims resource.
    - name: expression
      value: string
      description: >
        The Okta Expression Language expression to be evaluated at runtime
        
    - name: name
      value: string
      description: >
        The name of the claim to be used in the produced token
        
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_federated_claim"
    values={[
        { label: 'replace_federated_claim', value: 'replace_federated_claim' }
    ]}
>
<TabItem value="replace_federated_claim">

Replaces a claim that will be included in tokens produced by federation protocols (for example: OIDC `id_tokens` or SAML Assertions)

```sql
REPLACE okta.apps.federated_claims
SET 
data__expression = '{{ expression }}',
data__name = '{{ name }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
created,
expression,
lastUpdated;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_federated_claim"
    values={[
        { label: 'delete_federated_claim', value: 'delete_federated_claim' }
    ]}
>
<TabItem value="delete_federated_claim">

Deletes a federated claim by `claimId`

```sql
DELETE FROM okta.apps.federated_claims
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
