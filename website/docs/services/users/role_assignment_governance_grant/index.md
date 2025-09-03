--- 
title: role_assignment_governance_grant
hide_title: false
hide_table_of_contents: false
keywords:
  - role_assignment_governance_grant
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

Creates, updates, deletes, gets or lists a <code>role_assignment_governance_grant</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>role_assignment_governance_grant</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.role_assignment_governance_grant" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_role_assignment_governance_grant"
    values={[
        { label: 'get_role_assignment_governance_grant', value: 'get_role_assignment_governance_grant' }
    ]}
>
<TabItem value="get_role_assignment_governance_grant">

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
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the resources using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification.</td>
</tr>
<tr>
    <td><CopyableCode code="bundleId" /></td>
    <td><code>string</code></td>
    <td>`id` of the entitlement bundle</td>
</tr>
<tr>
    <td><CopyableCode code="expirationDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The expiration date of the entitlement bundle</td>
</tr>
<tr>
    <td><CopyableCode code="grantId" /></td>
    <td><code>string</code></td>
    <td>`id` of the grant</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The grant type</td>
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
    <td><a href="#get_role_assignment_governance_grant"><CopyableCode code="get_role_assignment_governance_grant" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a governance source (identified by `grantId`) for a role (identified by `roleAssignmentId`) that's assigned to a user (identified by `userId`)</td>
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
    defaultValue="get_role_assignment_governance_grant"
    values={[
        { label: 'get_role_assignment_governance_grant', value: 'get_role_assignment_governance_grant' }
    ]}
>
<TabItem value="get_role_assignment_governance_grant">

Retrieves a governance source (identified by `grantId`) for a role (identified by `roleAssignmentId`) that's assigned to a user (identified by `userId`)

```sql
SELECT
_links,
bundleId,
expirationDate,
grantId,
type
FROM okta.users.role_assignment_governance_grant
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>
