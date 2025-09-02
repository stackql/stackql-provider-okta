--- 
title: user_risk
hide_title: false
hide_table_of_contents: false
keywords:
  - user_risk
  - users
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

Creates, updates, deletes, gets or lists a <code>user_risk</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>user_risk</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.user_risk" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_user_risk"
    values={[
        { label: 'get_user_risk', value: 'get_user_risk' }
    ]}
>
<TabItem value="get_user_risk">

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
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="riskLevel" /></td>
    <td><code>string</code></td>
    <td>The risk level associated with the user</td>
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
    <td><a href="#get_user_risk"><CopyableCode code="get_user_risk" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the user risk object for a user ID</td>
</tr>
<tr>
    <td><a href="#upsert_user_risk"><CopyableCode code="upsert_user_risk" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Upserts (creates or updates) the user risk object for a user ID</td>
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
    defaultValue="get_user_risk"
    values={[
        { label: 'get_user_risk', value: 'get_user_risk' }
    ]}
>
<TabItem value="get_user_risk">

Retrieves the user risk object for a user ID

```sql
SELECT
_links,
riskLevel
FROM okta.users.user_risk
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="upsert_user_risk"
    values={[
        { label: 'upsert_user_risk', value: 'upsert_user_risk' }
    ]}
>
<TabItem value="upsert_user_risk">

Upserts (creates or updates) the user risk object for a user ID

```sql
REPLACE okta.users.user_risk
SET 
data__riskLevel = '{{ riskLevel }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
_links,
reason,
riskLevel;
```
</TabItem>
</Tabs>
