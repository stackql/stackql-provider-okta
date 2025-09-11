--- 
title: mfa_recovery_pin_setting
hide_title: false
hide_table_of_contents: false
keywords:
  - mfa_recovery_pin_setting
  - device_access
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

Creates, updates, deletes, gets or lists a <code>mfa_recovery_pin_setting</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>mfa_recovery_pin_setting</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.device_access.mfa_recovery_pin_setting" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_desktop_mfarecovery_pin_org_setting"
    values={[
        { label: 'get_desktop_mfarecovery_pin_org_setting', value: 'get_desktop_mfarecovery_pin_org_setting' }
    ]}
>
<TabItem value="get_desktop_mfarecovery_pin_org_setting">

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
    <td><CopyableCode code="desktopMFARecoveryPinEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether or not the Desktop MFA Recovery PIN feature is enabled</td>
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
    <td><a href="#get_desktop_mfarecovery_pin_org_setting"><CopyableCode code="get_desktop_mfarecovery_pin_org_setting" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the status of the Desktop MFA Recovery PIN feature. That is, whether or not the feature is enabled for your org.</td>
</tr>
<tr>
    <td><a href="#replace_desktop_mfarecovery_pin_org_setting"><CopyableCode code="replace_desktop_mfarecovery_pin_org_setting" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the Desktop MFA Recovery PIN feature for your org</td>
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
    defaultValue="get_desktop_mfarecovery_pin_org_setting"
    values={[
        { label: 'get_desktop_mfarecovery_pin_org_setting', value: 'get_desktop_mfarecovery_pin_org_setting' }
    ]}
>
<TabItem value="get_desktop_mfarecovery_pin_org_setting">

Retrieves the status of the Desktop MFA Recovery PIN feature. That is, whether or not the feature is enabled for your org.

```sql
SELECT
desktopMFARecoveryPinEnabled
FROM okta.device_access.mfa_recovery_pin_setting
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_desktop_mfarecovery_pin_org_setting"
    values={[
        { label: 'replace_desktop_mfarecovery_pin_org_setting', value: 'replace_desktop_mfarecovery_pin_org_setting' }
    ]}
>
<TabItem value="replace_desktop_mfarecovery_pin_org_setting">

Replaces the Desktop MFA Recovery PIN feature for your org

```sql
REPLACE okta.device_access.mfa_recovery_pin_setting
SET 
data__desktopMFARecoveryPinEnabled = {{ desktopMFARecoveryPinEnabled }}
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
desktopMFARecoveryPinEnabled
;
```
</TabItem>
</Tabs>
