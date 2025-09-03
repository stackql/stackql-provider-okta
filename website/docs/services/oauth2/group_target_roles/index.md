--- 
title: group_target_roles
hide_title: false
hide_table_of_contents: false
keywords:
  - group_target_roles
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

Creates, updates, deletes, gets or lists a <code>group_target_roles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>group_target_roles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.oauth2.group_target_roles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_group_target_role_for_client"
    values={[
        { label: 'list_group_target_role_for_client', value: 'list_group_target_role_for_client' }
    ]}
>
<TabItem value="list_group_target_role_for_client">

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
    <td>Unique ID for the group (example: 0gabcd1234)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the group</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastMembershipUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the groups memberships were last updated</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the group's profile was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="objectClass" /></td>
    <td><code>array</code></td>
    <td>Determines the group's `profile`</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code></code></td>
    <td>Specifies required and optional properties for a group. The `objectClass` of a group determines which additional properties are available.  You can extend group profiles with custom properties, but you must first add the properties to the group profile schema before you can reference them. Use the Profile Editor in the Admin Console or the [Schemas API](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/Schema/)to manage schema extensions.  Custom properties can contain HTML tags. It is the client's responsibility to escape or encode this data before displaying it. Use [best-practices](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html) to prevent cross-site scripting.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Determines how a group's profile and memberships are managed</td>
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
    <td><a href="#list_group_target_role_for_client"><CopyableCode code="list_group_target_role_for_client" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all group targets for a [`USER_ADMIN`](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles), `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to a client. If the role isn't scoped to specific group targets, Okta returns an empty array `[]`.</td>
</tr>
<tr>
    <td><a href="#assign_group_target_role_for_client"><CopyableCode code="assign_group_target_role_for_client" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Assigns a group target to a [`USER_ADMIN`](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles), `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to a client app. When you assign the first group target, you reduce the scope of the role assignment. The role no longer applies to all targets, but applies only to the specified target.</td>
</tr>
<tr>
    <td><a href="#remove_group_target_role_from_client"><CopyableCode code="remove_group_target_role_from_client" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Unassigns a Group target from a `USER_ADMIN`, `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to a client app.<br /><br />&gt; **Note:** You can't remove the last group target from a role assignment. If you need a role assignment that applies to all groups, delete the role assignment with the target and create another one. See [Unassign a client role](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/RoleAssignmentClient/#tag/RoleAssignmentClient/operation/deleteRoleFromClient).</td>
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
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination).</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>A limit on the number of objects to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_group_target_role_for_client"
    values={[
        { label: 'list_group_target_role_for_client', value: 'list_group_target_role_for_client' }
    ]}
>
<TabItem value="list_group_target_role_for_client">

Lists all group targets for a [`USER_ADMIN`](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles), `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to a client. If the role isn't scoped to specific group targets, Okta returns an empty array `[]`.

```sql
SELECT
id,
_embedded,
_links,
created,
lastMembershipUpdated,
lastUpdated,
objectClass,
profile,
type
FROM okta.oauth2.group_target_roles
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}';
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="assign_group_target_role_for_client"
    values={[
        { label: 'assign_group_target_role_for_client', value: 'assign_group_target_role_for_client' }
    ]}
>
<TabItem value="assign_group_target_role_for_client">

Assigns a group target to a [`USER_ADMIN`](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles), `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to a client app. When you assign the first group target, you reduce the scope of the role assignment. The role no longer applies to all targets, but applies only to the specified target.

```sql
REPLACE okta.oauth2.group_target_roles
SET 
-- No updatable properties
WHERE 
subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="remove_group_target_role_from_client"
    values={[
        { label: 'remove_group_target_role_from_client', value: 'remove_group_target_role_from_client' }
    ]}
>
<TabItem value="remove_group_target_role_from_client">

Unassigns a Group target from a `USER_ADMIN`, `HELP_DESK_ADMIN`, or `GROUP_MEMBERSHIP_ADMIN` role assignment to a client app.<br /><br />&gt; **Note:** You can't remove the last group target from a role assignment. If you need a role assignment that applies to all groups, delete the role assignment with the target and create another one. See [Unassign a client role](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/RoleAssignmentClient/#tag/RoleAssignmentClient/operation/deleteRoleFromClient).

```sql
DELETE FROM okta.oauth2.group_target_roles
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
