--- 
title: brands
hide_title: false
hide_table_of_contents: false
keywords:
  - brands
  - brands
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

Creates, updates, deletes, gets or lists a <code>brands</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>brands</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.brands" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_brands"
    values={[
        { label: 'list_brands', value: 'list_brands' },
        { label: 'get_brand', value: 'get_brand' }
    ]}
>
<TabItem value="list_brands">

Successfully returned the list of brands

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
    <td>The Brand ID</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the Brand</td>
</tr>
<tr>
    <td><CopyableCode code="agreeToCustomPrivacyPolicy" /></td>
    <td><code>boolean</code></td>
    <td>Consent for updating the custom privacy URL. Not required when resetting the URL.</td>
</tr>
<tr>
    <td><CopyableCode code="customPrivacyPolicyUrl" /></td>
    <td><code>string</code></td>
    <td>Custom privacy policy URL</td>
</tr>
<tr>
    <td><CopyableCode code="defaultApp" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="emailDomainId" /></td>
    <td><code>string</code></td>
    <td>The ID of the email domain</td>
</tr>
<tr>
    <td><CopyableCode code="isDefault" /></td>
    <td><code>boolean</code></td>
    <td>If `true`, the Brand is used for the Okta subdomain</td>
</tr>
<tr>
    <td><CopyableCode code="locale" /></td>
    <td><code>string</code></td>
    <td>The language specified as an [IETF BCP 47 language tag](https://datatracker.ietf.org/doc/html/rfc5646)</td>
</tr>
<tr>
    <td><CopyableCode code="removePoweredByOkta" /></td>
    <td><code>boolean</code></td>
    <td>Removes "Powered by Okta" from the sign-in page in redirect authentication deployments, and "© [current year] Okta, Inc." from the Okta End-User Dashboard</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_brand">

Successfully retrieved the brand

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
    <td>The Brand ID</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the Brand</td>
</tr>
<tr>
    <td><CopyableCode code="agreeToCustomPrivacyPolicy" /></td>
    <td><code>boolean</code></td>
    <td>Consent for updating the custom privacy URL. Not required when resetting the URL.</td>
</tr>
<tr>
    <td><CopyableCode code="customPrivacyPolicyUrl" /></td>
    <td><code>string</code></td>
    <td>Custom privacy policy URL</td>
</tr>
<tr>
    <td><CopyableCode code="defaultApp" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="emailDomainId" /></td>
    <td><code>string</code></td>
    <td>The ID of the email domain</td>
</tr>
<tr>
    <td><CopyableCode code="isDefault" /></td>
    <td><code>boolean</code></td>
    <td>If `true`, the Brand is used for the Okta subdomain</td>
</tr>
<tr>
    <td><CopyableCode code="locale" /></td>
    <td><code>string</code></td>
    <td>The language specified as an [IETF BCP 47 language tag](https://datatracker.ietf.org/doc/html/rfc5646)</td>
</tr>
<tr>
    <td><CopyableCode code="removePoweredByOkta" /></td>
    <td><code>boolean</code></td>
    <td>Removes "Powered by Okta" from the sign-in page in redirect authentication deployments, and "© [current year] Okta, Inc." from the Okta End-User Dashboard</td>
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
    <td><a href="#list_brands"><CopyableCode code="list_brands" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-q"><code>q</code></a></td>
    <td>Lists all the brands in your org</td>
</tr>
<tr>
    <td><a href="#get_brand"><CopyableCode code="get_brand" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves a brand by `brandId`</td>
</tr>
<tr>
    <td><a href="#create_brand"><CopyableCode code="create_brand" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__name"><code>data__name</code></a></td>
    <td></td>
    <td>Creates a new brand in your org</td>
</tr>
<tr>
    <td><a href="#replace_brand"><CopyableCode code="replace_brand" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__name"><code>data__name</code></a></td>
    <td></td>
    <td>Replaces a brand by `brandId`<br /><br />Passing an invalid `brandId` returns a `404 Not Found` status code with the error code `E0000007`.<br /><br />Not providing `agreeToCustomPrivacyPolicy` with `customPrivacyPolicyUrl` returns a `400 Bad Request` status code with the error code `E0000001`.<br /><br /></td>
</tr>
<tr>
    <td><a href="#delete_brand"><CopyableCode code="delete_brand" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a brand by `brandId`</td>
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
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>array</code></td>
    <td>Specifies additional metadata to be included in the response</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>A limit on the number of objects to return</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Searches the records for matching value</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_brands"
    values={[
        { label: 'list_brands', value: 'list_brands' },
        { label: 'get_brand', value: 'get_brand' }
    ]}
>
<TabItem value="list_brands">

Lists all the brands in your org

```sql
SELECT
id,
name,
agreeToCustomPrivacyPolicy,
customPrivacyPolicyUrl,
defaultApp,
emailDomainId,
isDefault,
locale,
removePoweredByOkta
FROM okta.brands.brands
WHERE subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND q = '{{ q }}';
```
</TabItem>
<TabItem value="get_brand">

Retrieves a brand by `brandId`

```sql
SELECT
id,
name,
agreeToCustomPrivacyPolicy,
customPrivacyPolicyUrl,
defaultApp,
emailDomainId,
isDefault,
locale,
removePoweredByOkta
FROM okta.brands.brands
WHERE subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}';
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_brand"
    values={[
        { label: 'create_brand', value: 'create_brand' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_brand">

Creates a new brand in your org

```sql
INSERT INTO okta.brands.brands (
data__name,
subdomain
)
SELECT 
'{{ name }}' --required,
'{{ subdomain }}'
RETURNING
id,
name,
agreeToCustomPrivacyPolicy,
customPrivacyPolicyUrl,
defaultApp,
emailDomainId,
isDefault,
locale,
removePoweredByOkta
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: brands
  props:
    - name: subdomain
      value: string
      description: Required parameter for the brands resource.
    - name: name
      value: string
      description: >
        The name of the Brand
        
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_brand"
    values={[
        { label: 'replace_brand', value: 'replace_brand' }
    ]}
>
<TabItem value="replace_brand">

Replaces a brand by `brandId`<br /><br />Passing an invalid `brandId` returns a `404 Not Found` status code with the error code `E0000007`.<br /><br />Not providing `agreeToCustomPrivacyPolicy` with `customPrivacyPolicyUrl` returns a `400 Bad Request` status code with the error code `E0000001`.<br /><br />

```sql
REPLACE okta.brands.brands
SET 
data__agreeToCustomPrivacyPolicy = {{ agreeToCustomPrivacyPolicy }},
data__customPrivacyPolicyUrl = '{{ customPrivacyPolicyUrl }}',
data__defaultApp = '{{ defaultApp }}',
data__emailDomainId = '{{ emailDomainId }}',
data__locale = '{{ locale }}',
data__name = '{{ name }}',
data__removePoweredByOkta = {{ removePoweredByOkta }}
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__name = '{{ name }}' --required
RETURNING
id,
name,
agreeToCustomPrivacyPolicy,
customPrivacyPolicyUrl,
defaultApp,
emailDomainId,
isDefault,
locale,
removePoweredByOkta;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_brand"
    values={[
        { label: 'delete_brand', value: 'delete_brand' }
    ]}
>
<TabItem value="delete_brand">

Deletes a brand by `brandId`

```sql
DELETE FROM okta.brands.brands
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
