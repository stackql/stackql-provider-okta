--- 
title: rules
hide_title: false
hide_table_of_contents: false
keywords:
  - rules
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

Creates, updates, deletes, gets or lists a <code>rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_authorization_server_policy_rules"
    values={[
        { label: 'list_authorization_server_policy_rules', value: 'list_authorization_server_policy_rules' },
        { label: 'get_authorization_server_policy_rule', value: 'get_authorization_server_policy_rule' }
    ]}
>
<TabItem value="list_authorization_server_policy_rules">

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
    <td>Identifier of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="actions" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the rule was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the rule was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Priority of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Set to `true` for system rules. You can't delete system rules.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Rule type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_authorization_server_policy_rule">

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
    <td>Identifier of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="actions" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="conditions" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the rule was created</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the rule was last modified</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Priority of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Set to `true` for system rules. You can't delete system rules.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Rule type</td>
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
    <td><a href="#list_authorization_server_policy_rules"><CopyableCode code="list_authorization_server_policy_rules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all policy rules for the specified Custom Authorization Server and Policy</td>
</tr>
<tr>
    <td><a href="#get_authorization_server_policy_rule"><CopyableCode code="get_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a policy rule by `ruleId`</td>
</tr>
<tr>
    <td><a href="#create_authorization_server_policy_rule"><CopyableCode code="create_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__conditions"><code>data__conditions</code></a>, <a href="#parameter-data__type"><code>data__type</code></a></td>
    <td></td>
    <td>Creates a policy rule for the specified Custom Authorization Server and Policy</td>
</tr>
<tr>
    <td><a href="#replace_authorization_server_policy_rule"><CopyableCode code="replace_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__conditions"><code>data__conditions</code></a>, <a href="#parameter-data__type"><code>data__type</code></a></td>
    <td></td>
    <td>Replaces the configuration of the Policy Rule defined in the specified Custom Authorization Server and Policy</td>
</tr>
<tr>
    <td><a href="#delete_authorization_server_policy_rule"><CopyableCode code="delete_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a Policy Rule defined in the specified Custom Authorization Server and Policy</td>
</tr>
<tr>
    <td><a href="#activate_authorization_server_policy_rule"><CopyableCode code="activate_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an authorization server policy rule</td>
</tr>
<tr>
    <td><a href="#deactivate_authorization_server_policy_rule"><CopyableCode code="deactivate_authorization_server_policy_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an authorization server policy rule</td>
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
    defaultValue="list_authorization_server_policy_rules"
    values={[
        { label: 'list_authorization_server_policy_rules', value: 'list_authorization_server_policy_rules' },
        { label: 'get_authorization_server_policy_rule', value: 'get_authorization_server_policy_rule' }
    ]}
>
<TabItem value="list_authorization_server_policy_rules">

Lists all policy rules for the specified Custom Authorization Server and Policy

```sql
SELECT
id,
name,
_links,
actions,
conditions,
created,
lastUpdated,
priority,
status,
system,
type
FROM okta.authorizationservers.rules
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_authorization_server_policy_rule">

Retrieves a policy rule by `ruleId`

```sql
SELECT
id,
name,
_links,
actions,
conditions,
created,
lastUpdated,
priority,
status,
system,
type
FROM okta.authorizationservers.rules
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_authorization_server_policy_rule"
    values={[
        { label: 'create_authorization_server_policy_rule', value: 'create_authorization_server_policy_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_authorization_server_policy_rule">

Creates a policy rule for the specified Custom Authorization Server and Policy

```sql
INSERT INTO okta.authorizationservers.rules (
data__actions,
data__conditions,
data__name,
data__priority,
data__status,
data__system,
data__type,
subdomain
)
SELECT 
'{{ actions }}',
'{{ conditions }}' /* required */,
'{{ name }}' /* required */,
{{ priority }},
'{{ status }}',
{{ system }},
'{{ type }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
name,
_links,
actions,
conditions,
created,
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
- name: rules
  props:
    - name: subdomain
      value: string
      description: Required parameter for the rules resource.
    - name: actions
      value: object
    - name: conditions
      value: object
    - name: name
      value: string
      description: >
        Name of the rule
        
    - name: priority
      value: integer
      description: >
        Priority of the rule
        
    - name: status
      value: string
      description: >
        Status of the rule
        
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: system
      value: boolean
      description: >
        Set to `true` for system rules. You can't delete system rules.
        
    - name: type
      value: string
      description: >
        Rule type
        
      valid_values: ['RESOURCE_ACCESS']
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_authorization_server_policy_rule"
    values={[
        { label: 'replace_authorization_server_policy_rule', value: 'replace_authorization_server_policy_rule' }
    ]}
>
<TabItem value="replace_authorization_server_policy_rule">

Replaces the configuration of the Policy Rule defined in the specified Custom Authorization Server and Policy

```sql
REPLACE okta.authorizationservers.rules
SET 
data__actions = '{{ actions }}',
data__conditions = '{{ conditions }}',
data__name = '{{ name }}',
data__priority = {{ priority }},
data__status = '{{ status }}',
data__system = {{ system }},
data__type = '{{ type }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__name = '{{ name }}' --required
AND data__conditions = '{{ conditions }}' --required
AND data__type = '{{ type }}' --required
RETURNING
id,
name,
_links,
actions,
conditions,
created,
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
    defaultValue="delete_authorization_server_policy_rule"
    values={[
        { label: 'delete_authorization_server_policy_rule', value: 'delete_authorization_server_policy_rule' }
    ]}
>
<TabItem value="delete_authorization_server_policy_rule">

Deletes a Policy Rule defined in the specified Custom Authorization Server and Policy

```sql
DELETE FROM okta.authorizationservers.rules
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_authorization_server_policy_rule"
    values={[
        { label: 'activate_authorization_server_policy_rule', value: 'activate_authorization_server_policy_rule' },
        { label: 'deactivate_authorization_server_policy_rule', value: 'deactivate_authorization_server_policy_rule' }
    ]}
>
<TabItem value="activate_authorization_server_policy_rule">

Activates an authorization server policy rule

```sql
EXEC okta.authorizationservers.rules.activate_authorization_server_policy_rule 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_authorization_server_policy_rule">

Deactivates an authorization server policy rule

```sql
EXEC okta.authorizationservers.rules.deactivate_authorization_server_policy_rule 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
