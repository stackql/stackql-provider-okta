--- 
title: policy_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - policy_rules
  - policies
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

Creates, updates, deletes, gets or lists a <code>policy_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>policy_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.policies.policy_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_policy_rules"
    values={[
        { label: 'list_policy_rules', value: 'list_policy_rules' },
        { label: 'get_policy_rule', value: 'get_policy_rule' }
    ]}
>
<TabItem value="list_policy_rules">

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
    <td>Identifier for the rule</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
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
    <td>Whether or not the rule is active. Use the `activate` query parameter to set the status of a rule.</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether Okta created the policy rule (`system=true`). You can't delete policy rules that have `system` set to `true`.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Rule type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_policy_rule">

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
    <td>Identifier for the rule</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the rule</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
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
    <td>Whether or not the rule is active. Use the `activate` query parameter to set the status of a rule.</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether Okta created the policy rule (`system=true`). You can't delete policy rules that have `system` set to `true`.</td>
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
    <td><a href="#list_policy_rules"><CopyableCode code="list_policy_rules" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all policy rules</td>
</tr>
<tr>
    <td><a href="#get_policy_rule"><CopyableCode code="get_policy_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a policy rule</td>
</tr>
<tr>
    <td><a href="#create_policy_rule"><CopyableCode code="create_policy_rule" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-activate"><code>activate</code></a></td>
    <td>Creates a policy rule<br /><br />&gt; **Note:** You can't create additional rules for the `PROFILE_ENROLLMENT` or `POST_AUTH_SESSION` policies.</td>
</tr>
<tr>
    <td><a href="#replace_policy_rule"><CopyableCode code="replace_policy_rule" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the properties for a policy rule identified by `policyId` and `ruleId`</td>
</tr>
<tr>
    <td><a href="#delete_policy_rule"><CopyableCode code="delete_policy_rule" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a policy rule identified by `policyId` and `ruleId`</td>
</tr>
<tr>
    <td><a href="#activate_policy_rule"><CopyableCode code="activate_policy_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a policy rule identified by `policyId` and `ruleId`</td>
</tr>
<tr>
    <td><a href="#deactivate_policy_rule"><CopyableCode code="deactivate_policy_rule" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a policy rule identified by `policyId` and `ruleId`</td>
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
<tr id="parameter-activate">
    <td><CopyableCode code="activate" /></td>
    <td><code>boolean</code></td>
    <td>Set this parameter to `false` to create an `INACTIVE` rule.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_policy_rules"
    values={[
        { label: 'list_policy_rules', value: 'list_policy_rules' },
        { label: 'get_policy_rule', value: 'get_policy_rule' }
    ]}
>
<TabItem value="list_policy_rules">

Lists all policy rules

```sql
SELECT
id,
name,
_links,
created,
lastUpdated,
priority,
status,
system,
type
FROM okta.policies.policy_rules
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_policy_rule">

Retrieves a policy rule

```sql
SELECT
id,
name,
_links,
created,
lastUpdated,
priority,
status,
system,
type
FROM okta.policies.policy_rules
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_policy_rule"
    values={[
        { label: 'create_policy_rule', value: 'create_policy_rule' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_policy_rule">

Creates a policy rule<br /><br />&gt; **Note:** You can't create additional rules for the `PROFILE_ENROLLMENT` or `POST_AUTH_SESSION` policies.

```sql
INSERT INTO okta.policies.policy_rules (
data__name,
data__priority,
data__status,
data__system,
data__type,
subdomain,
activate
)
SELECT 
'{{ name }}',
{{ priority }},
'{{ status }}',
{{ system }},
'{{ type }}',
'{{ subdomain }}',
'{{ activate }}'
RETURNING
id,
name,
_links,
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
- name: policy_rules
  props:
    - name: subdomain
      value: string
      description: Required parameter for the policy_rules resource.
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
        Whether or not the rule is active. Use the `activate` query parameter to set the status of a rule.
        
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: system
      value: boolean
      description: >
        Specifies whether Okta created the policy rule (`system=true`). You can't delete policy rules that have `system` set to `true`.
        
      default: false
    - name: type
      value: string
      description: >
        Rule type
        
      valid_values: ['ACCESS_POLICY', 'DEVICE_SIGNAL_COLLECTION', 'ENTITY_RISK', 'IDP_DISCOVERY', 'MFA_ENROLL', 'PASSWORD', 'POST_AUTH_SESSION', 'PROFILE_ENROLLMENT', 'SIGN_ON']
    - name: activate
      value: boolean
      description: Set this parameter to `false` to create an `INACTIVE` rule.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_policy_rule"
    values={[
        { label: 'replace_policy_rule', value: 'replace_policy_rule' }
    ]}
>
<TabItem value="replace_policy_rule">

Replaces the properties for a policy rule identified by `policyId` and `ruleId`

```sql
REPLACE okta.policies.policy_rules
SET 
data__name = '{{ name }}',
data__priority = {{ priority }},
data__status = '{{ status }}',
data__system = {{ system }},
data__type = '{{ type }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
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
    defaultValue="delete_policy_rule"
    values={[
        { label: 'delete_policy_rule', value: 'delete_policy_rule' }
    ]}
>
<TabItem value="delete_policy_rule">

Deletes a policy rule identified by `policyId` and `ruleId`

```sql
DELETE FROM okta.policies.policy_rules
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_policy_rule"
    values={[
        { label: 'activate_policy_rule', value: 'activate_policy_rule' },
        { label: 'deactivate_policy_rule', value: 'deactivate_policy_rule' }
    ]}
>
<TabItem value="activate_policy_rule">

Activates a policy rule identified by `policyId` and `ruleId`

```sql
EXEC okta.policies.policy_rules.activate_policy_rule 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_policy_rule">

Deactivates a policy rule identified by `policyId` and `ruleId`

```sql
EXEC okta.policies.policy_rules.deactivate_policy_rule 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
