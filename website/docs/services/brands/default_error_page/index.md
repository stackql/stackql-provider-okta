--- 
title: default_error_page
hide_title: false
hide_table_of_contents: false
keywords:
  - default_error_page
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

Creates, updates, deletes, gets or lists a <code>default_error_page</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>default_error_page</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.default_error_page" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_default_error_page"
    values={[
        { label: 'get_default_error_page', value: 'get_default_error_page' }
    ]}
>
<TabItem value="get_default_error_page">

Successfully retrieved the default error page.

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
    <td><a href="#get_default_error_page"><CopyableCode code="get_default_error_page" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the default error page. The default error page appears when no customized error page exists.</td>
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
    defaultValue="get_default_error_page"
    values={[
        { label: 'get_default_error_page', value: 'get_default_error_page' }
    ]}
>
<TabItem value="get_default_error_page">

Retrieves the default error page. The default error page appears when no customized error page exists.

```sql
SELECT
contentSecurityPolicySetting,
pageContent
FROM okta.brands.default_error_page
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>
