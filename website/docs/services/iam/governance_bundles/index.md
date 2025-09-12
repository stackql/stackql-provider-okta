--- 
title: governance_bundles
hide_title: false
hide_table_of_contents: false
keywords:
  - governance_bundles
  - iam
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

Creates, updates, deletes, gets or lists a <code>governance_bundles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>governance_bundles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.iam.governance_bundles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_governance_bundles"
    values={[
        { label: 'list_governance_bundles', value: 'list_governance_bundles' },
        { label: 'get_governance_bundle', value: 'get_governance_bundle' }
    ]}
>
<TabItem value="list_governance_bundles">

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
    <td><CopyableCode code="_links" /></td>
    <td><code></code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="bundles" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_governance_bundle">

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="orn" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td></td>
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
    <td><a href="#list_governance_bundles"><CopyableCode code="list_governance_bundles" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all Governance Bundles for the Admin Console in your org</td>
</tr>
<tr>
    <td><a href="#get_governance_bundle"><CopyableCode code="get_governance_bundle" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a Governance Bundle from RAMP</td>
</tr>
<tr>
    <td><a href="#create_governance_bundle"><CopyableCode code="create_governance_bundle" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a Governance Bundle for the Admin Console in RAMP</td>
</tr>
<tr>
    <td><a href="#replace_governance_bundle"><CopyableCode code="replace_governance_bundle" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a Governance Bundle in RAMP</td>
</tr>
<tr>
    <td><a href="#delete_governance_bundle"><CopyableCode code="delete_governance_bundle" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a Governance Bundle from RAMP</td>
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
    defaultValue="list_governance_bundles"
    values={[
        { label: 'list_governance_bundles', value: 'list_governance_bundles' },
        { label: 'get_governance_bundle', value: 'get_governance_bundle' }
    ]}
>
<TabItem value="list_governance_bundles">

Lists all Governance Bundles for the Admin Console in your org

```sql
SELECT
_links,
bundles
FROM okta.iam.governance_bundles
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
<TabItem value="get_governance_bundle">

Retrieves a Governance Bundle from RAMP

```sql
SELECT
id,
name,
_links,
description,
orn,
status
FROM okta.iam.governance_bundles
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_governance_bundle"
    values={[
        { label: 'create_governance_bundle', value: 'create_governance_bundle' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_governance_bundle">

Creates a Governance Bundle for the Admin Console in RAMP

```sql
INSERT INTO okta.iam.governance_bundles (
data__description,
data__entitlements,
data__name,
subdomain
)
SELECT 
'{{ description }}',
'{{ entitlements }}',
'{{ name }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
description,
orn,
status
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: governance_bundles
  props:
    - name: subdomain
      value: string
      description: Required parameter for the governance_bundles resource.
    - name: description
      value: string
    - name: entitlements
      value: array
    - name: name
      value: string
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_governance_bundle"
    values={[
        { label: 'replace_governance_bundle', value: 'replace_governance_bundle' }
    ]}
>
<TabItem value="replace_governance_bundle">

Replaces a Governance Bundle in RAMP

```sql
REPLACE okta.iam.governance_bundles
SET 
data__description = '{{ description }}',
data__entitlements = '{{ entitlements }}',
data__name = '{{ name }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
description,
orn,
status
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_governance_bundle"
    values={[
        { label: 'delete_governance_bundle', value: 'delete_governance_bundle' }
    ]}
>
<TabItem value="delete_governance_bundle">

Deletes a Governance Bundle from RAMP

```sql
DELETE FROM okta.iam.governance_bundles
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
