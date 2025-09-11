--- 
title: domains
hide_title: false
hide_table_of_contents: false
keywords:
  - domains
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

Creates, updates, deletes, gets or lists a <code>domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>domains</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.domains" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_brand_domains"
    values={[
        { label: 'list_brand_domains', value: 'list_brand_domains' }
    ]}
>
<TabItem value="list_brand_domains">

Successfully returned the list of domains for the brand

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
    <td>Unique ID of the domain (example: OcDz6iRyjkaCTXkdo0g3)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="brandId" /></td>
    <td><code>string</code></td>
    <td>The ID number of the brand (example: bndul904tTZ6kWVhP0g3)</td>
</tr>
<tr>
    <td><CopyableCode code="certificateSourceType" /></td>
    <td><code>string</code></td>
    <td>Certificate source type that indicates whether the certificate is provided by the user or Okta.</td>
</tr>
<tr>
    <td><CopyableCode code="dnsRecords" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="domain" /></td>
    <td><code>string</code></td>
    <td>Custom domain name (example: login.example.com)</td>
</tr>
<tr>
    <td><CopyableCode code="publicCertificate" /></td>
    <td><code>object</code></td>
    <td>Certificate metadata for the domain</td>
</tr>
<tr>
    <td><CopyableCode code="validationStatus" /></td>
    <td><code>string</code></td>
    <td>Status of the domain (example: VERIFIED)</td>
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
    <td><a href="#list_brand_domains"><CopyableCode code="list_brand_domains" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all domains associated with a brand by `brandId`</td>
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
    defaultValue="list_brand_domains"
    values={[
        { label: 'list_brand_domains', value: 'list_brand_domains' }
    ]}
>
<TabItem value="list_brand_domains">

Lists all domains associated with a brand by `brandId`

```sql
SELECT
id,
_links,
brandId,
certificateSourceType,
dnsRecords,
domain,
publicCertificate,
validationStatus
FROM okta.brands.domains
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
