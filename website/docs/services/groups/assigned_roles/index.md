--- 
title: assigned_roles
hide_title: false
hide_table_of_contents: false
keywords:
  - assigned_roles
  - groups
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

Creates, updates, deletes, gets or lists an <code>assigned_roles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>assigned_roles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.groups.assigned_roles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_group_assigned_roles"
    values={[
        { label: 'list_group_assigned_roles', value: 'list_group_assigned_roles' },
        { label: 'get_group_assigned_role', value: 'get_group_assigned_role' }
    ]}
>
<TabItem value="list_group_assigned_roles">

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
<TabItem value="get_group_assigned_role">

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
    <td><a href="#list_group_assigned_roles"><CopyableCode code="list_group_assigned_roles" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists all assigned roles of a group by `groupId`</td>
</tr>
<tr>
    <td><a href="#get_group_assigned_role"><CopyableCode code="get_group_assigned_role" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a role assigned to a group (identified by the `groupId`). The `roleAssignmentId` is the unique identifier for either a standard role group assignment object or a custom role resource set binding object.</td>
</tr>
<tr>
    <td><a href="#assign_role_to_group"><CopyableCode code="assign_role_to_group" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-disableNotifications"><code>disableNotifications</code></a></td>
    <td>Assigns a [standard role](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles) to a group.<br /><br />You can also assign a custom role to a group, but the preferred method to assign a custom role to a group is to create a binding between the custom role, the resource set, and the group. See [Create a role resource set binding](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/RoleDResourceSetBinding/#tag/RoleDResourceSetBinding/operation/createResourceSetBinding).<br /><br />&gt; **Notes:**<br />&gt; * The request payload is different for standard and custom role assignments.<br />&gt; * For IAM-based standard role assignments, use the request payload for standard roles. However, the response payload for IAM-based role assignments is similar to the custom role's assignment response.</td>
</tr>
<tr>
    <td><a href="#unassign_role_from_group"><CopyableCode code="unassign_role_from_group" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns a role assignment (identified by `roleAssignmentId`) from a group (identified by the `groupId`)</td>
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
<tr id="parameter-disableNotifications">
    <td><CopyableCode code="disableNotifications" /></td>
    <td><code>boolean</code></td>
    <td>Grants the group third-party admin status when set to `true`</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>An optional parameter used to return targets configured for the standard role assignment in the `embedded` property. Supported values: `targets/groups` or `targets/catalog/apps`</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_group_assigned_roles"
    values={[
        { label: 'list_group_assigned_roles', value: 'list_group_assigned_roles' },
        { label: 'get_group_assigned_role', value: 'get_group_assigned_role' }
    ]}
>
<TabItem value="list_group_assigned_roles">

Lists all assigned roles of a group by `groupId`

```sql
SELECT
*
FROM okta.groups.assigned_roles
WHERE subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}';
```
</TabItem>
<TabItem value="get_group_assigned_role">

Retrieves a role assigned to a group (identified by the `groupId`). The `roleAssignmentId` is the unique identifier for either a standard role group assignment object or a custom role resource set binding object.

```sql
SELECT
*
FROM okta.groups.assigned_roles
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="assign_role_to_group"
    values={[
        { label: 'assign_role_to_group', value: 'assign_role_to_group' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="assign_role_to_group">

Assigns a [standard role](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles) to a group.<br /><br />You can also assign a custom role to a group, but the preferred method to assign a custom role to a group is to create a binding between the custom role, the resource set, and the group. See [Create a role resource set binding](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/RoleDResourceSetBinding/#tag/RoleDResourceSetBinding/operation/createResourceSetBinding).<br /><br />&gt; **Notes:**<br />&gt; * The request payload is different for standard and custom role assignments.<br />&gt; * For IAM-based standard role assignments, use the request payload for standard roles. However, the response payload for IAM-based role assignments is similar to the custom role's assignment response.

```sql
INSERT INTO okta.groups.assigned_roles (
subdomain,
disableNotifications
)
SELECT 
'{{ subdomain }}',
'{{ disableNotifications }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: assigned_roles
  props:
    - name: subdomain
      value: string
      description: Required parameter for the assigned_roles resource.
    - name: disableNotifications
      value: boolean
      description: Grants the group third-party admin status when set to `true`
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unassign_role_from_group"
    values={[
        { label: 'unassign_role_from_group', value: 'unassign_role_from_group' }
    ]}
>
<TabItem value="unassign_role_from_group">

Unassigns a role assignment (identified by `roleAssignmentId`) from a group (identified by the `groupId`)

```sql
DELETE FROM okta.groups.assigned_roles
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
