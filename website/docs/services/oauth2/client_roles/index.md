--- 
title: client_roles
hide_title: false
hide_table_of_contents: false
keywords:
  - client_roles
  - oauth2
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

Creates, updates, deletes, gets or lists a <code>client_roles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>client_roles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.oauth2.client_roles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_roles_for_client"
    values={[
        { label: 'list_roles_for_client', value: 'list_roles_for_client' },
        { label: 'retrieve_client_role', value: 'retrieve_client_role' }
    ]}
>
<TabItem value="list_roles_for_client">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
</tbody>
</table>
</TabItem>
<TabItem value="retrieve_client_role">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
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
    <td><a href="#list_roles_for_client"><CopyableCode code="list_roles_for_client" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all roles assigned to a client app identified by `clientId`</td>
</tr>
<tr>
    <td><a href="#retrieve_client_role"><CopyableCode code="retrieve_client_role" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a role assignment (identified by `roleAssignmentId`) for a client app (identified by `clientId`)</td>
</tr>
<tr>
    <td><a href="#assign_role_to_client"><CopyableCode code="assign_role_to_client" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns a [standard role](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles) to a client app.<br /><br />You can also assign a custom role to a client app, but the preferred method to assign a custom role to a client is to create a binding between the custom role, the resource set, and the client app. See [Create a role resource set binding](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/RoleDResourceSetBinding/#tag/RoleDResourceSetBinding/operation/createResourceSetBinding).<br /><br />&gt; **Notes:**<br />&gt; * The request payload is different for standard and custom role assignments.<br />&gt; * For IAM-based standard role assignments, use the request payload for standard roles. However, the response payload for IAM-based role assignments is similar to the custom role's assignment response.</td>
</tr>
<tr>
    <td><a href="#delete_role_from_client"><CopyableCode code="delete_role_from_client" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns a role assignment (identified by `roleAssignmentId`) from a client app (identified by `clientId`)</td>
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
    defaultValue="list_roles_for_client"
    values={[
        { label: 'list_roles_for_client', value: 'list_roles_for_client' },
        { label: 'retrieve_client_role', value: 'retrieve_client_role' }
    ]}
>
<TabItem value="list_roles_for_client">

Lists all roles assigned to a client app identified by `clientId`

```sql
SELECT
*
FROM okta.oauth2.client_roles
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="retrieve_client_role">

Retrieves a role assignment (identified by `roleAssignmentId`) for a client app (identified by `clientId`)

```sql
SELECT
*
FROM okta.oauth2.client_roles
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="assign_role_to_client"
    values={[
        { label: 'assign_role_to_client', value: 'assign_role_to_client' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="assign_role_to_client">

Assigns a [standard role](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles) to a client app.<br /><br />You can also assign a custom role to a client app, but the preferred method to assign a custom role to a client is to create a binding between the custom role, the resource set, and the client app. See [Create a role resource set binding](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/RoleDResourceSetBinding/#tag/RoleDResourceSetBinding/operation/createResourceSetBinding).<br /><br />&gt; **Notes:**<br />&gt; * The request payload is different for standard and custom role assignments.<br />&gt; * For IAM-based standard role assignments, use the request payload for standard roles. However, the response payload for IAM-based role assignments is similar to the custom role's assignment response.

```sql
INSERT INTO okta.oauth2.client_roles (
subdomain
)
SELECT 
'{{ subdomain }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: client_roles
  props:
    - name: subdomain
      value: string
      description: Required parameter for the client_roles resource.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_role_from_client"
    values={[
        { label: 'delete_role_from_client', value: 'delete_role_from_client' }
    ]}
>
<TabItem value="delete_role_from_client">

Unassigns a role assignment (identified by `roleAssignmentId`) from a client app (identified by `clientId`)

```sql
DELETE FROM okta.oauth2.client_roles
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
