--- 
title: rules
hide_title: false
hide_table_of_contents: false
keywords:
  - rules
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

Creates, updates, deletes, gets or lists a <code>rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.groups.rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_group_rules"
    values={[
        { label: 'list_group_rules', value: 'list_group_rules' },
        { label: 'get_group_rule', value: 'get_group_rule' }
    ]}
>
<TabItem value="list_group_rules">

Success

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
    <td>ID of the group rule</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the group rule</td>
</tr>
<tr>
    <td><CopyableCode code="actions" /></td>
    <td><code>object</code></td>
    <td>Defines which users and groups to assign</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td>Defines group rule conditions</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation date for group rule</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Date group rule was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of group rule</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type to indicate a group rule operation. Only `group_rule` is allowed.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_group_rule">

Success

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
    <td>ID of the group rule</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the group rule</td>
</tr>
<tr>
    <td><CopyableCode code="actions" /></td>
    <td><code>object</code></td>
    <td>Defines which users and groups to assign</td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td>Defines group rule conditions</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Creation date for group rule</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Date group rule was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of group rule</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type to indicate a group rule operation. Only `group_rule` is allowed.</td>
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
    <td><a href="#list_group_rules"><CopyableCode code="list_group_rules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-search"><code>search</code></a>, <a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists all group rules for your org</td>
</tr>
<tr>
    <td><a href="#get_group_rule"><CopyableCode code="get_group_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves a specific group rule by ID from your org</td>
</tr>
<tr>
    <td><a href="#create_group_rule"><CopyableCode code="create_group_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a group rule to dynamically add users to the specified group if they match the condition<br />&gt; **Note:** Group rules are created with the status set to `'INACTIVE'`.</td>
</tr>
<tr>
    <td><a href="#replace_group_rule"><CopyableCode code="replace_group_rule" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a group rule<br />&gt; **Notes:** You can only update rules with a group whose status is set to `'INACTIVE'`.<br />&gt;<br />&gt; You currently can't update the `action` section.</td>
</tr>
<tr>
    <td><a href="#delete_group_rule"><CopyableCode code="delete_group_rule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-removeUsers"><code>removeUsers</code></a></td>
    <td>Deletes a specific group rule by `groupRuleId`</td>
</tr>
<tr>
    <td><a href="#activate_group_rule"><CopyableCode code="activate_group_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a specific group rule by ID from your org</td>
</tr>
<tr>
    <td><a href="#deactivate_group_rule"><CopyableCode code="deactivate_group_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a specific group rule by ID from your org</td>
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
    <td>Specifies the pagination cursor for the next page of rules</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>If specified as `groupIdToGroupNameMap`, then show group names</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of rule results in a page</td>
</tr>
<tr id="parameter-removeUsers">
    <td><CopyableCode code="removeUsers" /></td>
    <td><code>boolean</code></td>
    <td>If set to `true`, removes users from groups assigned by this rule</td>
</tr>
<tr id="parameter-search">
    <td><CopyableCode code="search" /></td>
    <td><code>string</code></td>
    <td>Specifies the keyword to search rules for</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_group_rules"
    values={[
        { label: 'list_group_rules', value: 'list_group_rules' },
        { label: 'get_group_rule', value: 'get_group_rule' }
    ]}
>
<TabItem value="list_group_rules">

Lists all group rules for your org

```sql
SELECT
id,
name,
actions,
conditions,
created,
lastUpdated,
status,
type
FROM okta.groups.rules
WHERE subdomain = '{{ subdomain }}' -- required
AND limit = '{{ limit }}'
AND after = '{{ after }}'
AND search = '{{ search }}'
AND expand = '{{ expand }}';
```
</TabItem>
<TabItem value="get_group_rule">

Retrieves a specific group rule by ID from your org

```sql
SELECT
id,
name,
actions,
conditions,
created,
lastUpdated,
status,
type
FROM okta.groups.rules
WHERE subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}';
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_group_rule"
    values={[
        { label: 'create_group_rule', value: 'create_group_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_group_rule">

Creates a group rule to dynamically add users to the specified group if they match the condition<br />&gt; **Note:** Group rules are created with the status set to `'INACTIVE'`.

```sql
INSERT INTO okta.groups.rules (
data__actions,
data__conditions,
data__name,
data__type,
subdomain
)
SELECT 
'{{ actions }}',
'{{ conditions }}',
'{{ name }}',
'{{ type }}',
'{{ subdomain }}'
RETURNING
id,
name,
actions,
conditions,
created,
lastUpdated,
status,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: rules
  props:
    - name: subdomain
      value: string
      description: Required parameter for the rules resource.
    - name: actions
      value: object
      description: >
        Defines which users and groups to assign
        
    - name: conditions
      value: object
      description: >
        Defines group rule conditions
        
    - name: name
      value: string
      description: >
        Name of the group rule
        
    - name: type
      value: string
      valid_values: ['group_rule']
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_group_rule"
    values={[
        { label: 'replace_group_rule', value: 'replace_group_rule' }
    ]}
>
<TabItem value="replace_group_rule">

Replaces a group rule<br />&gt; **Notes:** You can only update rules with a group whose status is set to `'INACTIVE'`.<br />&gt;<br />&gt; You currently can't update the `action` section.

```sql
REPLACE okta.groups.rules
SET 
data__actions = '{{ actions }}',
data__conditions = '{{ conditions }}',
data__name = '{{ name }}',
data__status = '{{ status }}',
data__type = '{{ type }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
actions,
conditions,
created,
lastUpdated,
status,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_group_rule"
    values={[
        { label: 'delete_group_rule', value: 'delete_group_rule' }
    ]}
>
<TabItem value="delete_group_rule">

Deletes a specific group rule by `groupRuleId`

```sql
DELETE FROM okta.groups.rules
WHERE subdomain = '{{ subdomain }}' --required
AND removeUsers = '{{ removeUsers }}';
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_group_rule"
    values={[
        { label: 'activate_group_rule', value: 'activate_group_rule' },
        { label: 'deactivate_group_rule', value: 'deactivate_group_rule' }
    ]}
>
<TabItem value="activate_group_rule">

Activates a specific group rule by ID from your org

```sql
EXEC okta.groups.rules.activate_group_rule 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="deactivate_group_rule">

Deactivates a specific group rule by ID from your org

```sql
EXEC okta.groups.rules.deactivate_group_rule 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
