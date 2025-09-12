--- 
title: policies
hide_title: false
hide_table_of_contents: false
keywords:
  - policies
  - authorizationservers
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

Creates, updates, deletes, gets or lists a <code>policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_authorization_server_policies"
    values={[
        { label: 'list_authorization_server_policies', value: 'list_authorization_server_policies' },
        { label: 'get_authorization_server_policy', value: 'get_authorization_server_policy' }
    ]}
>
<TabItem value="list_authorization_server_policies">

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
    <td>ID of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Policy was created</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Policy was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Specifies the order in which this Policy is evaluated in relation to the other Policies in a custom authorization server</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Specifies whether requests have access to this Policy</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether Okta created this Policy</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Indicates that the Policy is an authorization server Policy</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_authorization_server_policy">

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
    <td>ID of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Policy was created</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the Policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the Policy was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Specifies the order in which this Policy is evaluated in relation to the other Policies in a custom authorization server</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Specifies whether requests have access to this Policy</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether Okta created this Policy</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Indicates that the Policy is an authorization server Policy</td>
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
    <td><a href="#list_authorization_server_policies"><CopyableCode code="list_authorization_server_policies" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all policies</td>
</tr>
<tr>
    <td><a href="#get_authorization_server_policy"><CopyableCode code="get_authorization_server_policy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a policy</td>
</tr>
<tr>
    <td><a href="#create_authorization_server_policy"><CopyableCode code="create_authorization_server_policy" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a policy</td>
</tr>
<tr>
    <td><a href="#replace_authorization_server_policy"><CopyableCode code="replace_authorization_server_policy" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a policy</td>
</tr>
<tr>
    <td><a href="#delete_authorization_server_policy"><CopyableCode code="delete_authorization_server_policy" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a policy</td>
</tr>
<tr>
    <td><a href="#activate_authorization_server_policy"><CopyableCode code="activate_authorization_server_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an authorization server policy</td>
</tr>
<tr>
    <td><a href="#deactivate_authorization_server_policy"><CopyableCode code="deactivate_authorization_server_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an authorization server policy</td>
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
    defaultValue="list_authorization_server_policies"
    values={[
        { label: 'list_authorization_server_policies', value: 'list_authorization_server_policies' },
        { label: 'get_authorization_server_policy', value: 'get_authorization_server_policy' }
    ]}
>
<TabItem value="list_authorization_server_policies">

Lists all policies

```sql
SELECT
id,
name,
_links,
conditions,
created,
description,
lastUpdated,
priority,
status,
system,
type
FROM okta.authorizationservers.policies
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_authorization_server_policy">

Retrieves a policy

```sql
SELECT
id,
name,
_links,
conditions,
created,
description,
lastUpdated,
priority,
status,
system,
type
FROM okta.authorizationservers.policies
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_authorization_server_policy"
    values={[
        { label: 'create_authorization_server_policy', value: 'create_authorization_server_policy' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_authorization_server_policy">

Creates a policy

```sql
INSERT INTO okta.authorizationservers.policies (
data__id,
data__type,
data__name,
data__conditions,
data__description,
data__priority,
data__status,
data__system,
subdomain
)
SELECT 
'{{ id }}',
'{{ type }}',
'{{ name }}',
'{{ conditions }}',
'{{ description }}',
{{ priority }},
'{{ status }}',
{{ system }},
'{{ subdomain }}'
RETURNING
id,
name,
_links,
conditions,
created,
description,
lastUpdated,
priority,
status,
system,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: policies
  props:
    - name: subdomain
      value: string
      description: Required parameter for the policies resource.
    - name: id
      value: string
      description: >
        ID of the Policy
        
    - name: type
      value: string
      description: >
        Indicates that the Policy is an authorization server Policy
        
      valid_values: ['OAUTH_AUTHORIZATION_POLICY']
    - name: name
      value: string
      description: >
        Name of the Policy
        
    - name: conditions
      value: object
    - name: description
      value: string
      description: >
        Description of the Policy
        
    - name: priority
      value: integer
      description: >
        Specifies the order in which this Policy is evaluated in relation to the other Policies in a custom authorization server
        
    - name: status
      value: string
      description: >
        Specifies whether requests have access to this Policy
        
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: system
      value: boolean
      description: >
        Specifies whether Okta created this Policy
        
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_authorization_server_policy"
    values={[
        { label: 'replace_authorization_server_policy', value: 'replace_authorization_server_policy' }
    ]}
>
<TabItem value="replace_authorization_server_policy">

Replaces a policy

```sql
REPLACE okta.authorizationservers.policies
SET 
data__id = '{{ id }}',
data__type = '{{ type }}',
data__name = '{{ name }}',
data__conditions = '{{ conditions }}',
data__description = '{{ description }}',
data__priority = {{ priority }},
data__status = '{{ status }}',
data__system = {{ system }}
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
conditions,
created,
description,
lastUpdated,
priority,
status,
system,
type
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_authorization_server_policy"
    values={[
        { label: 'delete_authorization_server_policy', value: 'delete_authorization_server_policy' }
    ]}
>
<TabItem value="delete_authorization_server_policy">

Deletes a policy

```sql
DELETE FROM okta.authorizationservers.policies
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_authorization_server_policy"
    values={[
        { label: 'activate_authorization_server_policy', value: 'activate_authorization_server_policy' },
        { label: 'deactivate_authorization_server_policy', value: 'deactivate_authorization_server_policy' }
    ]}
>
<TabItem value="activate_authorization_server_policy">

Activates an authorization server policy

```sql
EXEC okta.authorizationservers.policies.activate_authorization_server_policy 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_authorization_server_policy">

Deactivates an authorization server policy

```sql
EXEC okta.authorizationservers.policies.deactivate_authorization_server_policy 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
