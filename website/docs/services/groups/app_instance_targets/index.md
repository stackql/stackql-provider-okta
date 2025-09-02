--- 
title: app_instance_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - app_instance_targets
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

Creates, updates, deletes, gets or lists an <code>app_instance_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>app_instance_targets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.groups.app_instance_targets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#assign_app_instance_target_to_app_admin_role_for_group"><CopyableCode code="assign_app_instance_target_to_app_admin_role_for_group" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns an app instance target to an `APP_ADMIN` role assignment to a group. When you assign the first OIN app or app instance target, you reduce the scope of the role assignment.<br />The role no longer applies to all app targets, but applies only to the specified target.<br /><br />&gt; **Note:** You can target a mixture of both OIN app and app instance targets, but you can't assign permissions to manage all instances of an OIN app and then assign a subset of permissions to the same app.<br />&gt; For example, you can't specify that an admin has access to manage all instances of the Salesforce app and then also manage specific configurations of the Salesforce app.</td>
</tr>
<tr>
    <td><a href="#unassign_app_instance_target_to_app_admin_role_for_group"><CopyableCode code="unassign_app_instance_target_to_app_admin_role_for_group" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns an app instance target from an `APP_ADMIN` role assignment to a group<br /><br />&gt; **Note:** You can't remove the last app instance target from a role assignment.<br />&gt; If you need a role assignment that applies to all apps, delete the `APP_ADMIN` role assignment with the target and create another one. See [Unassign a group role](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/RoleAssignmentBGroup/#tag/RoleAssignmentBGroup/operation/unassignRoleFromGroup).</td>
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

## `REPLACE` examples

<Tabs
    defaultValue="assign_app_instance_target_to_app_admin_role_for_group"
    values={[
        { label: 'assign_app_instance_target_to_app_admin_role_for_group', value: 'assign_app_instance_target_to_app_admin_role_for_group' }
    ]}
>
<TabItem value="assign_app_instance_target_to_app_admin_role_for_group">

Assigns an app instance target to an `APP_ADMIN` role assignment to a group. When you assign the first OIN app or app instance target, you reduce the scope of the role assignment.<br />The role no longer applies to all app targets, but applies only to the specified target.<br /><br />&gt; **Note:** You can target a mixture of both OIN app and app instance targets, but you can't assign permissions to manage all instances of an OIN app and then assign a subset of permissions to the same app.<br />&gt; For example, you can't specify that an admin has access to manage all instances of the Salesforce app and then also manage specific configurations of the Salesforce app.

```sql
REPLACE okta.groups.app_instance_targets
SET 
-- No updatable properties
WHERE 
subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="unassign_app_instance_target_to_app_admin_role_for_group"
    values={[
        { label: 'unassign_app_instance_target_to_app_admin_role_for_group', value: 'unassign_app_instance_target_to_app_admin_role_for_group' }
    ]}
>
<TabItem value="unassign_app_instance_target_to_app_admin_role_for_group">

Unassigns an app instance target from an `APP_ADMIN` role assignment to a group<br /><br />&gt; **Note:** You can't remove the last app instance target from a role assignment.<br />&gt; If you need a role assignment that applies to all apps, delete the `APP_ADMIN` role assignment with the target and create another one. See [Unassign a group role](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/RoleAssignmentBGroup/#tag/RoleAssignmentBGroup/operation/unassignRoleFromGroup).

```sql
DELETE FROM okta.groups.app_instance_targets
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
