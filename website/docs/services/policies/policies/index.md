--- 
title: policies
hide_title: false
hide_table_of_contents: false
keywords:
  - policies
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

Creates, updates, deletes, gets or lists a <code>policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.policies.policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_policies"
    values={[
        { label: 'list_policies', value: 'list_policies' },
        { label: 'get_policy', value: 'get_policy' }
    ]}
>
<TabItem value="list_policies">

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
    <td>Identifier of the policy (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the policy</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the policy was created (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the policy was last modified (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Specifies the order in which this policy is evaluated in relation to the other policies (default: Last / Lowest Priority, for example `1`)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Whether or not the policy is active. Use the `activate` query parameter to set the status of a policy.</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether Okta created the policy</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>All Okta orgs contain only one IdP discovery policy with an immutable default rule routing to your org's sign-in page, one entity risk policy, and one session protection policy. Creating or replacing a policy with the `IDP_DISCOVERY` type, the `ENTITY_RISK` type, or the `POST_AUTH_SESSION` type isn't supported. The following policy types are available with Identity Engine: `ACCESS_POLICY`, `PROFILE_ENROLLMENT`, `POST_AUTH_SESSION`, &lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; `DEVICE_SIGNAL_COLLECTION`, and `ENTITY_RISK`.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_policy">

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
    <td>Identifier of the policy (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the policy</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the policy was created (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the policy was last modified (default: Assigned)</td>
</tr>
<tr>
    <td><CopyableCode code="priority" /></td>
    <td><code>integer</code></td>
    <td>Specifies the order in which this policy is evaluated in relation to the other policies (default: Last / Lowest Priority, for example `1`)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Whether or not the policy is active. Use the `activate` query parameter to set the status of a policy.</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Specifies whether Okta created the policy</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>All Okta orgs contain only one IdP discovery policy with an immutable default rule routing to your org's sign-in page, one entity risk policy, and one session protection policy. Creating or replacing a policy with the `IDP_DISCOVERY` type, the `ENTITY_RISK` type, or the `POST_AUTH_SESSION` type isn't supported. The following policy types are available with Identity Engine: `ACCESS_POLICY`, `PROFILE_ENROLLMENT`, `POST_AUTH_SESSION`, &lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; `DEVICE_SIGNAL_COLLECTION`, and `ENTITY_RISK`.</td>
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
    <td><a href="#list_policies"><CopyableCode code="list_policies" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-type"><code>type</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-status"><code>status</code></a>, <a href="#parameter-q"><code>q</code></a>, <a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-sortBy"><code>sortBy</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-resourceId"><code>resourceId</code></a>, <a href="#parameter-after"><code>after</code></a></td>
    <td>Lists all policies with the specified type</td>
</tr>
<tr>
    <td><a href="#get_policy"><CopyableCode code="get_policy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves a policy</td>
</tr>
<tr>
    <td><a href="#create_policy"><CopyableCode code="create_policy" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-activate"><code>activate</code></a></td>
    <td>Creates a policy. There are many types of policies that you can create. See [Policies](https://developer.okta.com/docs/concepts/policies/) for an overview of the types of policies available and links to more indepth information.</td>
</tr>
<tr>
    <td><a href="#replace_policy"><CopyableCode code="replace_policy" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the properties of a policy identified by `policyId`</td>
</tr>
<tr>
    <td><a href="#delete_policy"><CopyableCode code="delete_policy" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a policy</td>
</tr>
<tr>
    <td><a href="#create_policy_simulation"><CopyableCode code="create_policy_simulation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a policy or policy rule simulation. The access simulation evaluates policy and policy rules based on the existing policy rule configuration.<br />The evaluation result simulates what the real-world authentication flow is and what policy rules have been applied or matched to the authentication flow.</td>
</tr>
<tr>
    <td><a href="#clone_policy"><CopyableCode code="clone_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Clones an existing policy</td>
</tr>
<tr>
    <td><a href="#activate_policy"><CopyableCode code="activate_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a policy</td>
</tr>
<tr>
    <td><a href="#deactivate_policy"><CopyableCode code="deactivate_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a policy</td>
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
<tr id="parameter-type">
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of policy to return. The following policy types are available only with the Okta Identity Engine - `ACCESS_POLICY`, &lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; `DEVICE_SIGNAL_COLLECTION`, `PROFILE_ENROLLMENT`, `POST_AUTH_SESSION`, and `ENTITY_RISK`.</td>
</tr>
<tr id="parameter-activate">
    <td><CopyableCode code="activate" /></td>
    <td><code>boolean</code></td>
    <td>This query parameter is only valid for Classic Engine orgs.</td>
</tr>
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>End page cursor for pagination, see [Pagination](https://developer.okta.com/docs/api/#pagination)</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>string</code></td>
    <td>Defines the number of policies returned, see [Pagination](https://developer.okta.com/docs/api/#pagination)</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Refines the query by policy name prefix (startWith method) passed in as `q=string`</td>
</tr>
<tr id="parameter-resourceId">
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>Reference to the associated authorization server</td>
</tr>
<tr id="parameter-sortBy">
    <td><CopyableCode code="sortBy" /></td>
    <td><code>string</code></td>
    <td>Refines the query by sorting on the policy `name` in ascending order</td>
</tr>
<tr id="parameter-status">
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Refines the query by the `status` of the policy - `ACTIVE` or `INACTIVE`</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_policies"
    values={[
        { label: 'list_policies', value: 'list_policies' },
        { label: 'get_policy', value: 'get_policy' }
    ]}
>
<TabItem value="list_policies">

Lists all policies with the specified type

```sql
SELECT
id,
name,
_embedded,
_links,
created,
description,
lastUpdated,
priority,
status,
system,
type
FROM okta.policies.policies
WHERE type = '{{ type }}' -- required
AND subdomain = '{{ subdomain }}' -- required
AND status = '{{ status }}'
AND q = '{{ q }}'
AND expand = '{{ expand }}'
AND sortBy = '{{ sortBy }}'
AND limit = '{{ limit }}'
AND resourceId = '{{ resourceId }}'
AND after = '{{ after }}';
```
</TabItem>
<TabItem value="get_policy">

Retrieves a policy

```sql
SELECT
id,
name,
_embedded,
_links,
created,
description,
lastUpdated,
priority,
status,
system,
type
FROM okta.policies.policies
WHERE subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}';
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_policy"
    values={[
        { label: 'create_policy', value: 'create_policy' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_policy">

Creates a policy. There are many types of policies that you can create. See [Policies](https://developer.okta.com/docs/concepts/policies/) for an overview of the types of policies available and links to more indepth information.

```sql
INSERT INTO okta.policies.policies (
data__description,
data__name,
data__priority,
data__status,
data__system,
data__type,
subdomain,
activate
)
SELECT 
'{{ description }}',
'{{ name }}' --required,
{{ priority }},
'{{ status }}',
{{ system }},
'{{ type }}' --required,
'{{ subdomain }}',
'{{ activate }}'
RETURNING
id,
name,
_embedded,
_links,
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
    - name: description
      value: string
      description: >
        Description of the policy
        
      default: null
    - name: name
      value: string
      description: >
        Name of the policy
        
    - name: priority
      value: integer
      description: >
        Specifies the order in which this policy is evaluated in relation to the other policies
        
      default: Last / Lowest Priority, for example `1`
    - name: status
      value: string
      description: >
        Whether or not the policy is active. Use the `activate` query parameter to set the status of a policy.
        
      valid_values: ['ACTIVE', 'INACTIVE']
    - name: system
      value: boolean
      description: >
        Specifies whether Okta created the policy
        
      default: false
    - name: type
      value: string
      description: >
        All Okta orgs contain only one IdP discovery policy with an immutable default rule routing to your org's sign-in page, one entity risk policy, and one session protection policy.
Creating or replacing a policy with the `IDP_DISCOVERY` type, the `ENTITY_RISK` type, or the `POST_AUTH_SESSION` type isn't supported.
The following policy types are available with Identity Engine: `ACCESS_POLICY`, `PROFILE_ENROLLMENT`, `POST_AUTH_SESSION`, <x-lifecycle class="ea"></x-lifecycle> `DEVICE_SIGNAL_COLLECTION`, and `ENTITY_RISK`.
        
      valid_values: ['<x-lifecycle class="ea"></x-lifecycle> DEVICE_SIGNAL_COLLECTION', 'ACCESS_POLICY', 'ENTITY_RISK', 'IDP_DISCOVERY', 'MFA_ENROLL', 'OKTA_SIGN_ON', 'PASSWORD', 'POST_AUTH_SESSION', 'PROFILE_ENROLLMENT']
    - name: activate
      value: boolean
      description: This query parameter is only valid for Classic Engine orgs.
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_policy"
    values={[
        { label: 'replace_policy', value: 'replace_policy' }
    ]}
>
<TabItem value="replace_policy">

Replaces the properties of a policy identified by `policyId`

```sql
REPLACE okta.policies.policies
SET 
data__description = '{{ description }}',
data__name = '{{ name }}',
data__priority = {{ priority }},
data__status = '{{ status }}',
data__system = {{ system }},
data__type = '{{ type }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__name = '{{ name }}' --required
AND data__type = '{{ type }}' --required
RETURNING
id,
name,
_embedded,
_links,
created,
description,
lastUpdated,
priority,
status,
system,
type;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_policy"
    values={[
        { label: 'delete_policy', value: 'delete_policy' }
    ]}
>
<TabItem value="delete_policy">

Deletes a policy

```sql
DELETE FROM okta.policies.policies
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="create_policy_simulation"
    values={[
        { label: 'create_policy_simulation', value: 'create_policy_simulation' },
        { label: 'clone_policy', value: 'clone_policy' },
        { label: 'activate_policy', value: 'activate_policy' },
        { label: 'deactivate_policy', value: 'deactivate_policy' }
    ]}
>
<TabItem value="create_policy_simulation">

Creates a policy or policy rule simulation. The access simulation evaluates policy and policy rules based on the existing policy rule configuration.<br />The evaluation result simulates what the real-world authentication flow is and what policy rules have been applied or matched to the authentication flow.

```sql
EXEC okta.policies.policies.create_policy_simulation 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="clone_policy">

Clones an existing policy

```sql
EXEC okta.policies.policies.clone_policy 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="activate_policy">

Activates a policy

```sql
EXEC okta.policies.policies.activate_policy 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="deactivate_policy">

Deactivates a policy

```sql
EXEC okta.policies.policies.deactivate_policy 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
