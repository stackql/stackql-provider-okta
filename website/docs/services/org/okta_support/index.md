--- 
title: okta_support
hide_title: false
hide_table_of_contents: false
keywords:
  - okta_support
  - org
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

Creates, updates, deletes, gets or lists an <code>okta_support</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>okta_support</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.okta_support" /></td></tr>
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
    <td><a href="#grant_okta_support"><CopyableCode code="grant_okta_support" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Grants Okta Support temporary access to your org as an administrator for eight hours<br /><br />&gt; **Note:** This resource is deprecated. Use the [Update an Okta Support case](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/OrgSettingSupport/#tag/OrgSettingSupport/operation/updateOktaSupportCase) resource to grant Okta Support access for a support case.<br />&gt; For the corresponding Okta Admin Console feature, see [Give access to Okta Support](https://help.okta.com/okta_help.htm?type=oie&id=settings-support-access).</td>
</tr>
<tr>
    <td><a href="#revoke_okta_support"><CopyableCode code="revoke_okta_support" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes Okta Support access to your org<br /><br />&gt; **Note:** This resource is deprecated. Use the [Update an Okta Support case](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/OrgSettingSupport/#tag/OrgSettingSupport/operation/updateOktaSupportCase) resource to revoke Okta Support access for a support case.<br />&gt; For the corresponding Okta Admin Console feature, see [Give access to Okta Support](https://help.okta.com/okta_help.htm?type=oie&id=settings-support-access).</td>
</tr>
<tr>
    <td><a href="#extend_okta_support"><CopyableCode code="extend_okta_support" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Extends the length of time that Okta Support can access your org by 24 hours. This means that 24 hours are added to the remaining access time.<br /><br />&gt; **Note:** This resource is deprecated. Use the [Update an Okta Support case](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/OrgSettingSupport/#tag/OrgSettingSupport/operation/updateOktaSupportCase) resource to extend Okta Support access for a support case.<br />&gt; For the corresponding Okta Admin Console feature, see [Give access to Okta Support](https://help.okta.com/okta_help.htm?type=oie&id=settings-support-access).</td>
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

## `INSERT` examples

<Tabs
    defaultValue="grant_okta_support"
    values={[
        { label: 'grant_okta_support', value: 'grant_okta_support' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="grant_okta_support">

Grants Okta Support temporary access to your org as an administrator for eight hours<br /><br />&gt; **Note:** This resource is deprecated. Use the [Update an Okta Support case](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/OrgSettingSupport/#tag/OrgSettingSupport/operation/updateOktaSupportCase) resource to grant Okta Support access for a support case.<br />&gt; For the corresponding Okta Admin Console feature, see [Give access to Okta Support](https://help.okta.com/okta_help.htm?type=oie&id=settings-support-access).

```sql
INSERT INTO okta.org.okta_support (
subdomain
)
SELECT 
'{{ subdomain }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: okta_support
  props:
    - name: subdomain
      value: string
      description: Required parameter for the okta_support resource.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="revoke_okta_support"
    values={[
        { label: 'revoke_okta_support', value: 'revoke_okta_support' }
    ]}
>
<TabItem value="revoke_okta_support">

Revokes Okta Support access to your org<br /><br />&gt; **Note:** This resource is deprecated. Use the [Update an Okta Support case](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/OrgSettingSupport/#tag/OrgSettingSupport/operation/updateOktaSupportCase) resource to revoke Okta Support access for a support case.<br />&gt; For the corresponding Okta Admin Console feature, see [Give access to Okta Support](https://help.okta.com/okta_help.htm?type=oie&id=settings-support-access).

```sql
DELETE FROM okta.org.okta_support
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="extend_okta_support"
    values={[
        { label: 'extend_okta_support', value: 'extend_okta_support' }
    ]}
>
<TabItem value="extend_okta_support">

Extends the length of time that Okta Support can access your org by 24 hours. This means that 24 hours are added to the remaining access time.<br /><br />&gt; **Note:** This resource is deprecated. Use the [Update an Okta Support case](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/OrgSettingSupport/#tag/OrgSettingSupport/operation/updateOktaSupportCase) resource to extend Okta Support access for a support case.<br />&gt; For the corresponding Okta Admin Console feature, see [Give access to Okta Support](https://help.okta.com/okta_help.htm?type=oie&id=settings-support-access).

```sql
EXEC okta.org.okta_support.extend_okta_support 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
