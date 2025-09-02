--- 
title: customized_sign_in_page
hide_title: false
hide_table_of_contents: false
keywords:
  - customized_sign_in_page
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

Creates, updates, deletes, gets or lists a <code>customized_sign_in_page</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>customized_sign_in_page</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.customized_sign_in_page" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_customized_sign_in_page"
    values={[
        { label: 'get_customized_sign_in_page', value: 'get_customized_sign_in_page' }
    ]}
>
<TabItem value="get_customized_sign_in_page">

Successfully retrieved the customized sign-in page.

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
    <td><CopyableCode code="contentSecurityPolicySetting" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="pageContent" /></td>
    <td><code>string</code></td>
    <td>The HTML for the page</td>
</tr>
<tr>
    <td><CopyableCode code="widgetCustomizations" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="widgetVersion" /></td>
    <td><code>string</code></td>
    <td>The version specified as a [Semantic Version](https://semver.org/). (pattern: ^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$)</td>
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
    <td><a href="#get_customized_sign_in_page"><CopyableCode code="get_customized_sign_in_page" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the customized sign-in page. The customized sign-in page appears in your live environment.</td>
</tr>
<tr>
    <td><a href="#replace_customized_sign_in_page"><CopyableCode code="replace_customized_sign_in_page" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the customized sign-in page. The customized sign-in page appears in your live environment.</td>
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
    defaultValue="get_customized_sign_in_page"
    values={[
        { label: 'get_customized_sign_in_page', value: 'get_customized_sign_in_page' }
    ]}
>
<TabItem value="get_customized_sign_in_page">

Retrieves the customized sign-in page. The customized sign-in page appears in your live environment.

```sql
SELECT
contentSecurityPolicySetting,
pageContent,
widgetCustomizations,
widgetVersion
FROM okta.brands.customized_sign_in_page
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_customized_sign_in_page"
    values={[
        { label: 'replace_customized_sign_in_page', value: 'replace_customized_sign_in_page' }
    ]}
>
<TabItem value="replace_customized_sign_in_page">

Replaces the customized sign-in page. The customized sign-in page appears in your live environment.

```sql
REPLACE okta.brands.customized_sign_in_page
SET 
data__pageContent = '{{ pageContent }}',
data__contentSecurityPolicySetting = '{{ contentSecurityPolicySetting }}',
data__widgetCustomizations = '{{ widgetCustomizations }}',
data__widgetVersion = '{{ widgetVersion }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
contentSecurityPolicySetting,
pageContent,
widgetCustomizations,
widgetVersion;
```
</TabItem>
</Tabs>
