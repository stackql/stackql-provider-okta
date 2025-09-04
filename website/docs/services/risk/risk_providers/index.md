--- 
title: risk_providers
hide_title: false
hide_table_of_contents: false
keywords:
  - risk_providers
  - risk
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

Creates, updates, deletes, gets or lists a <code>risk_providers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>risk_providers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.risk.risk_providers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_risk_providers"
    values={[
        { label: 'list_risk_providers', value: 'list_risk_providers' },
        { label: 'get_risk_provider', value: 'get_risk_provider' }
    ]}
>
<TabItem value="list_risk_providers">

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
    <td>The ID of the risk provider object (example: 00rp12r4skkjkjgsn)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the risk provider (example: Risk-Partner-X)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="action" /></td>
    <td><code>string</code></td>
    <td>Action taken by Okta during authentication attempts based on the risk events sent by this provider (default: log_only)</td>
</tr>
<tr>
    <td><CopyableCode code="clientId" /></td>
    <td><code>string</code></td>
    <td>The ID of the [OAuth 2.0 service app](https://developer.okta.com/docs/guides/implement-oauth-for-okta-serviceapp/main/#create-a-service-app-and-grant-scopes) that's used to send risk events to Okta (example: 00cjkjjkkgjkdkjdkkljjsd)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the risk provider object was created (example: 2021-01-05 22:18:30)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the risk provider object was last updated (example: 2021-01-05 22:18:30)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_risk_provider">

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
    <td>The ID of the risk provider object (example: 00rp12r4skkjkjgsn)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the risk provider (example: Risk-Partner-X)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="action" /></td>
    <td><code>string</code></td>
    <td>Action taken by Okta during authentication attempts based on the risk events sent by this provider (default: log_only)</td>
</tr>
<tr>
    <td><CopyableCode code="clientId" /></td>
    <td><code>string</code></td>
    <td>The ID of the [OAuth 2.0 service app](https://developer.okta.com/docs/guides/implement-oauth-for-okta-serviceapp/main/#create-a-service-app-and-grant-scopes) that's used to send risk events to Okta (example: 00cjkjjkkgjkdkjdkkljjsd)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the risk provider object was created (example: 2021-01-05 22:18:30)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the risk provider object was last updated (example: 2021-01-05 22:18:30)</td>
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
    <td><a href="#list_risk_providers"><CopyableCode code="list_risk_providers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all risk provider objects</td>
</tr>
<tr>
    <td><a href="#get_risk_provider"><CopyableCode code="get_risk_provider" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a risk provider object by ID</td>
</tr>
<tr>
    <td><a href="#create_risk_provider"><CopyableCode code="create_risk_provider" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__clientId"><code>data__clientId</code></a>, <a href="#parameter-data__action"><code>data__action</code></a>, <a href="#parameter-data__id"><code>data__id</code></a>, <a href="#parameter-data___links"><code>data___links</code></a></td>
    <td></td>
    <td>Creates a risk provider object. You can create a maximum of three risk provider objects.</td>
</tr>
<tr>
    <td><a href="#replace_risk_provider"><CopyableCode code="replace_risk_provider" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__clientId"><code>data__clientId</code></a>, <a href="#parameter-data__action"><code>data__action</code></a>, <a href="#parameter-data__id"><code>data__id</code></a>, <a href="#parameter-data___links"><code>data___links</code></a></td>
    <td></td>
    <td>Replaces the properties for a given risk provider object ID</td>
</tr>
<tr>
    <td><a href="#delete_risk_provider"><CopyableCode code="delete_risk_provider" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a risk provider object by its ID</td>
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
    defaultValue="list_risk_providers"
    values={[
        { label: 'list_risk_providers', value: 'list_risk_providers' },
        { label: 'get_risk_provider', value: 'get_risk_provider' }
    ]}
>
<TabItem value="list_risk_providers">

Lists all risk provider objects

```sql
SELECT
id,
name,
_links,
action,
clientId,
created,
lastUpdated
FROM okta.risk.risk_providers
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_risk_provider">

Retrieves a risk provider object by ID

```sql
SELECT
id,
name,
_links,
action,
clientId,
created,
lastUpdated
FROM okta.risk.risk_providers
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_risk_provider"
    values={[
        { label: 'create_risk_provider', value: 'create_risk_provider' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_risk_provider">

Creates a risk provider object. You can create a maximum of three risk provider objects.

```sql
INSERT INTO okta.risk.risk_providers (
data__action,
data__clientId,
data__name,
subdomain
)
SELECT 
'{{ action }}' --required,
'{{ clientId }}' --required,
'{{ name }}' --required,
'{{ subdomain }}'
RETURNING
id,
name,
_links,
action,
clientId,
created,
lastUpdated
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: risk_providers
  props:
    - name: subdomain
      value: string
      description: Required parameter for the risk_providers resource.
    - name: action
      value: string
      description: >
        Action taken by Okta during authentication attempts based on the risk events sent by this provider
        
      valid_values: ['enforce_and_log', 'log_only', 'none']
      default: log_only
    - name: clientId
      value: string
      description: >
        The ID of the [OAuth 2.0 service app](https://developer.okta.com/docs/guides/implement-oauth-for-okta-serviceapp/main/#create-a-service-app-and-grant-scopes) that's used to send risk events to Okta
        
    - name: name
      value: string
      description: >
        Name of the risk provider
        
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_risk_provider"
    values={[
        { label: 'replace_risk_provider', value: 'replace_risk_provider' }
    ]}
>
<TabItem value="replace_risk_provider">

Replaces the properties for a given risk provider object ID

```sql
REPLACE okta.risk.risk_providers
SET 
data__action = '{{ action }}',
data__clientId = '{{ clientId }}',
data__name = '{{ name }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__name = '{{ name }}' --required
AND data__clientId = '{{ clientId }}' --required
AND data__action = '{{ action }}' --required
RETURNING
id,
name,
_links,
action,
clientId,
created,
lastUpdated;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_risk_provider"
    values={[
        { label: 'delete_risk_provider', value: 'delete_risk_provider' }
    ]}
>
<TabItem value="delete_risk_provider">

Deletes a risk provider object by its ID

```sql
DELETE FROM okta.risk.risk_providers
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
