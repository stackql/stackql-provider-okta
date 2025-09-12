--- 
title: ssf_stream_status
hide_title: false
hide_table_of_contents: false
keywords:
  - ssf_stream_status
  - ssf
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

Creates, updates, deletes, gets or lists a <code>ssf_stream_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ssf_stream_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.ssf.ssf_stream_status" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_ssf_stream_status"
    values={[
        { label: 'get_ssf_stream_status', value: 'get_ssf_stream_status' }
    ]}
>
<TabItem value="get_ssf_stream_status">

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
    <td><CopyableCode code="stream_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the SSF Stream configuration. This corresponds to the value in the query parameter of the request. (example: esc1k235GIIztAuGK0g5)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the SSF Stream configuration</td>
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
    <td><a href="#get_ssf_stream_status"><CopyableCode code="get_ssf_stream_status" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-stream_id"><code>stream_id</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the status of an SSF Stream. The status indicates whether the transmitter is able to transmit events over the stream.</td>
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
<tr id="parameter-stream_id">
    <td><CopyableCode code="stream_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the specified SSF Stream configuration (example: esc1k235GIIztAuGK0g5)</td>
</tr>
<tr id="parameter-subdomain">
    <td><CopyableCode code="subdomain" /></td>
    <td><code>string</code></td>
    <td>The domain of your organization. This can be a provided subdomain of an official okta domain (okta.com, oktapreview.com, etc) or one of your configured custom domains. (default: my-org)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_ssf_stream_status"
    values={[
        { label: 'get_ssf_stream_status', value: 'get_ssf_stream_status' }
    ]}
>
<TabItem value="get_ssf_stream_status">

Retrieves the status of an SSF Stream. The status indicates whether the transmitter is able to transmit events over the stream.

```sql
SELECT
stream_id,
status
FROM okta.ssf.ssf_stream_status
WHERE stream_id = '{{ stream_id }}' -- required
AND subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>
