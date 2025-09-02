--- 
title: policy_mappings
hide_title: false
hide_table_of_contents: false
keywords:
  - policy_mappings
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

Creates, updates, deletes, gets or lists a <code>policy_mappings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>policy_mappings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.policies.policy_mappings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_policy_mappings"
    values={[
        { label: 'list_policy_mappings', value: 'list_policy_mappings' },
        { label: 'get_policy_mapping', value: 'get_policy_mapping' }
    ]}
>
<TabItem value="list_policy_mappings">

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_policy_mapping">

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
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
    <td><a href="#list_policy_mappings"><CopyableCode code="list_policy_mappings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all resources mapped to a policy identified by `policyId`</td>
</tr>
<tr>
    <td><a href="#get_policy_mapping"><CopyableCode code="get_policy_mapping" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a resource mapping for a policy identified by `policyId` and `mappingId`</td>
</tr>
<tr>
    <td><a href="#delete_policy_resource_mapping"><CopyableCode code="delete_policy_resource_mapping" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes the resource mapping for a policy identified by `policyId` and `mappingId`</td>
</tr>
<tr>
    <td><a href="#map_resource_to_policy"><CopyableCode code="map_resource_to_policy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Maps a resource to a policy identified by `policyId`</td>
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
    defaultValue="list_policy_mappings"
    values={[
        { label: 'list_policy_mappings', value: 'list_policy_mappings' },
        { label: 'get_policy_mapping', value: 'get_policy_mapping' }
    ]}
>
<TabItem value="list_policy_mappings">

Lists all resources mapped to a policy identified by `policyId`

```sql
SELECT
id,
_links
FROM okta.policies.policy_mappings
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_policy_mapping">

Retrieves a resource mapping for a policy identified by `policyId` and `mappingId`

```sql
SELECT
id,
_links
FROM okta.policies.policy_mappings
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_policy_resource_mapping"
    values={[
        { label: 'delete_policy_resource_mapping', value: 'delete_policy_resource_mapping' }
    ]}
>
<TabItem value="delete_policy_resource_mapping">

Deletes the resource mapping for a policy identified by `policyId` and `mappingId`

```sql
DELETE FROM okta.policies.policy_mappings
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="map_resource_to_policy"
    values={[
        { label: 'map_resource_to_policy', value: 'map_resource_to_policy' }
    ]}
>
<TabItem value="map_resource_to_policy">

Maps a resource to a policy identified by `policyId`

```sql
EXEC okta.policies.policy_mappings.map_resource_to_policy 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"resourceId": "{{ resourceId }}", 
"resourceType": "{{ resourceType }}"
}';
```
</TabItem>
</Tabs>
