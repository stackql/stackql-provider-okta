--- 
title: well_known_uris
hide_title: false
hide_table_of_contents: false
keywords:
  - well_known_uris
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

Creates, updates, deletes, gets or lists a <code>well_known_uris</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>well_known_uris</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.well_known_uris" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_all_well_known_uris"
    values={[
        { label: 'get_all_well_known_uris', value: 'get_all_well_known_uris' },
        { label: 'get_root_brand_well_known_uri', value: 'get_root_brand_well_known_uri' }
    ]}
>
<TabItem value="get_all_well_known_uris">

Successfully retrieved all the well-known URIs

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
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
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
<TabItem value="get_root_brand_well_known_uri">

Successfully retrieved the well-known URI

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
    <td><CopyableCode code="representation" /></td>
    <td><code>object</code></td>
    <td>The well-known URI content in JSON format</td>
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
    <td><a href="#get_all_well_known_uris"><CopyableCode code="get_all_well_known_uris" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the content from each of the well-known URIs for a specified brand</td>
</tr>
<tr>
    <td><a href="#get_root_brand_well_known_uri"><CopyableCode code="get_root_brand_well_known_uri" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the well-known URI of a specific brand and well-known URI path</td>
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
    defaultValue="get_all_well_known_uris"
    values={[
        { label: 'get_all_well_known_uris', value: 'get_all_well_known_uris' },
        { label: 'get_root_brand_well_known_uri', value: 'get_root_brand_well_known_uri' }
    ]}
>
<TabItem value="get_all_well_known_uris">

Retrieves the content from each of the well-known URIs for a specified brand

```sql
SELECT
_embedded,
_links
FROM okta.brands.well_known_uris
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_root_brand_well_known_uri">

Retrieves the well-known URI of a specific brand and well-known URI path

```sql
SELECT
_links,
representation
FROM okta.brands.well_known_uris
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>
