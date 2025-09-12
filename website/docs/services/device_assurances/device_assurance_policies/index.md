--- 
title: device_assurance_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - device_assurance_policies
  - device_assurances
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

Creates, updates, deletes, gets or lists a <code>device_assurance_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>device_assurance_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.device_assurances.device_assurance_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_device_assurance_policies"
    values={[
        { label: 'list_device_assurance_policies', value: 'list_device_assurance_policies' },
        { label: 'get_device_assurance_policy', value: 'get_device_assurance_policy' }
    ]}
>
<TabItem value="list_device_assurance_policies">

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
    <td>Display name of the device assurance policy</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="devicePostureChecks" /></td>
    <td><code>object</code></td>
    <td>&lt;x-lifecycle-container&gt;&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt;&lt;/x-lifecycle-container&gt;Represents the Device Posture Checks configuration for the device assurance policy</td>
</tr>
<tr>
    <td><CopyableCode code="displayRemediationMode" /></td>
    <td><code>string</code></td>
    <td>&lt;x-lifecycle-container&gt;&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt;&lt;/x-lifecycle-container&gt;Represents the remediation mode of this device assurance policy when users are denied access due to device noncompliance (example: SHOW)</td>
</tr>
<tr>
    <td><CopyableCode code="gracePeriod" /></td>
    <td><code>object</code></td>
    <td>&lt;x-lifecycle-container&gt;&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt;&lt;/x-lifecycle-container&gt;Represents the Grace Period configuration for the device assurance policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdate" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="platform" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_device_assurance_policy">

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
    <td>Display name of the device assurance policy</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="devicePostureChecks" /></td>
    <td><code>object</code></td>
    <td>&lt;x-lifecycle-container&gt;&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt;&lt;/x-lifecycle-container&gt;Represents the Device Posture Checks configuration for the device assurance policy</td>
</tr>
<tr>
    <td><CopyableCode code="displayRemediationMode" /></td>
    <td><code>string</code></td>
    <td>&lt;x-lifecycle-container&gt;&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt;&lt;/x-lifecycle-container&gt;Represents the remediation mode of this device assurance policy when users are denied access due to device noncompliance (example: SHOW)</td>
</tr>
<tr>
    <td><CopyableCode code="gracePeriod" /></td>
    <td><code>object</code></td>
    <td>&lt;x-lifecycle-container&gt;&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt;&lt;/x-lifecycle-container&gt;Represents the Grace Period configuration for the device assurance policy</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdate" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdatedBy" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="platform" /></td>
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
    <td><a href="#list_device_assurance_policies"><CopyableCode code="list_device_assurance_policies" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all device assurance policies</td>
</tr>
<tr>
    <td><a href="#get_device_assurance_policy"><CopyableCode code="get_device_assurance_policy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a device assurance policy by `deviceAssuranceId`</td>
</tr>
<tr>
    <td><a href="#create_device_assurance_policy"><CopyableCode code="create_device_assurance_policy" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a new device assurance policy</td>
</tr>
<tr>
    <td><a href="#replace_device_assurance_policy"><CopyableCode code="replace_device_assurance_policy" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a device assurance policy by `deviceAssuranceId`</td>
</tr>
<tr>
    <td><a href="#delete_device_assurance_policy"><CopyableCode code="delete_device_assurance_policy" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a device assurance policy by `deviceAssuranceId`. If the device assurance policy is currently being used in the org Authentication Policies, the delete will not be allowed.</td>
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
    defaultValue="list_device_assurance_policies"
    values={[
        { label: 'list_device_assurance_policies', value: 'list_device_assurance_policies' },
        { label: 'get_device_assurance_policy', value: 'get_device_assurance_policy' }
    ]}
>
<TabItem value="list_device_assurance_policies">

Lists all device assurance policies

```sql
SELECT
id,
name,
_links,
createdBy,
createdDate,
devicePostureChecks,
displayRemediationMode,
gracePeriod,
lastUpdate,
lastUpdatedBy,
platform
FROM okta.device_assurances.device_assurance_policies
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_device_assurance_policy">

Retrieves a device assurance policy by `deviceAssuranceId`

```sql
SELECT
id,
name,
_links,
createdBy,
createdDate,
devicePostureChecks,
displayRemediationMode,
gracePeriod,
lastUpdate,
lastUpdatedBy,
platform
FROM okta.device_assurances.device_assurance_policies
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_device_assurance_policy"
    values={[
        { label: 'create_device_assurance_policy', value: 'create_device_assurance_policy' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_device_assurance_policy">

Creates a new device assurance policy

```sql
INSERT INTO okta.device_assurances.device_assurance_policies (
data__devicePostureChecks,
data__displayRemediationMode,
data__gracePeriod,
data__name,
data__platform,
subdomain
)
SELECT 
'{{ devicePostureChecks }}',
'{{ displayRemediationMode }}',
'{{ gracePeriod }}',
'{{ name }}',
'{{ platform }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
createdBy,
createdDate,
devicePostureChecks,
displayRemediationMode,
gracePeriod,
lastUpdate,
lastUpdatedBy,
platform
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: device_assurance_policies
  props:
    - name: subdomain
      value: string
      description: Required parameter for the device_assurance_policies resource.
    - name: devicePostureChecks
      value: object
      description: >
        <x-lifecycle-container><x-lifecycle class="ea"></x-lifecycle></x-lifecycle-container>Represents the Device Posture Checks configuration for the device assurance policy
        
    - name: displayRemediationMode
      value: string
      description: >
        <x-lifecycle-container><x-lifecycle class="ea"></x-lifecycle></x-lifecycle-container>Represents the remediation mode of this device assurance policy when users are denied access due to device noncompliance
        
      valid_values: ['HIDE', 'SHOW']
    - name: gracePeriod
      value: object
      description: >
        <x-lifecycle-container><x-lifecycle class="ea"></x-lifecycle></x-lifecycle-container>Represents the Grace Period configuration for the device assurance policy
        
    - name: name
      value: string
      description: >
        Display name of the device assurance policy
        
    - name: platform
      value: string
      valid_values: ['ANDROID', 'CHROMEOS', 'IOS', 'MACOS', 'WINDOWS']
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_device_assurance_policy"
    values={[
        { label: 'replace_device_assurance_policy', value: 'replace_device_assurance_policy' }
    ]}
>
<TabItem value="replace_device_assurance_policy">

Replaces a device assurance policy by `deviceAssuranceId`

```sql
REPLACE okta.device_assurances.device_assurance_policies
SET 
data__devicePostureChecks = '{{ devicePostureChecks }}',
data__displayRemediationMode = '{{ displayRemediationMode }}',
data__gracePeriod = '{{ gracePeriod }}',
data__name = '{{ name }}',
data__platform = '{{ platform }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
createdBy,
createdDate,
devicePostureChecks,
displayRemediationMode,
gracePeriod,
lastUpdate,
lastUpdatedBy,
platform
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_device_assurance_policy"
    values={[
        { label: 'delete_device_assurance_policy', value: 'delete_device_assurance_policy' }
    ]}
>
<TabItem value="delete_device_assurance_policy">

Deletes a device assurance policy by `deviceAssuranceId`. If the device assurance policy is currently being used in the org Authentication Policies, the delete will not be allowed.

```sql
DELETE FROM okta.device_assurances.device_assurance_policies
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
