--- 
title: ssf_streams
hide_title: false
hide_table_of_contents: false
keywords:
  - ssf_streams
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

Creates, updates, deletes, gets or lists a <code>ssf_streams</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ssf_streams</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.ssf.ssf_streams" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_ssf_streams"
    values={[
        { label: 'get_ssf_streams', value: 'get_ssf_streams' }
    ]}
>
<TabItem value="get_ssf_streams">

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
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
    <td><a href="#get_ssf_streams"><CopyableCode code="get_ssf_streams" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-stream_id"><code>stream_id</code></a></td>
    <td>Retrieves either a list of all known SSF Stream configurations or the individual configuration if specified by ID.<br /><br />As Stream configurations are tied to a Client ID, only the Stream associated with the Client ID of the request OAuth 2.0 access token can be viewed.</td>
</tr>
<tr>
    <td><a href="#create_ssf_stream"><CopyableCode code="create_ssf_stream" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__events_requested"><code>data__events_requested</code></a>, <a href="#parameter-data__delivery"><code>data__delivery</code></a></td>
    <td></td>
    <td>Creates an SSF Stream for an event receiver to start receiving security events in the form of Security Event Tokens (SETs) from Okta.<br /><br />An SSF Stream is associated with the Client ID of the OAuth 2.0 access token used to create the stream. The Client ID is provided by Okta for an [OAuth 2.0 app integration](https://help.okta.com/okta_help.htm?id=ext_Apps_App_Integration_Wizard-oidc). One SSF Stream is allowed for each Client ID, hence, one SSF Stream is allowed for each app integration in Okta.<br /><br />A maximum of 10 SSF Stream configurations can be created for one org.</td>
</tr>
<tr>
    <td><a href="#update_ssf_stream"><CopyableCode code="update_ssf_stream" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__events_requested"><code>data__events_requested</code></a>, <a href="#parameter-data__delivery"><code>data__delivery</code></a></td>
    <td></td>
    <td>Updates properties for an existing SSF Stream configuration.<br /><br />If the `stream_id` isn't provided in the request body, the associated stream with the Client ID (through the request OAuth 2.0 access token) is updated.</td>
</tr>
<tr>
    <td><a href="#replace_ssf_stream"><CopyableCode code="replace_ssf_stream" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__events_requested"><code>data__events_requested</code></a>, <a href="#parameter-data__delivery"><code>data__delivery</code></a></td>
    <td></td>
    <td>Replaces all properties for an existing SSF Stream configuration.<br /><br />If the `stream_id` isn't provided in the request body, the associated stream with the Client ID (through the request OAuth 2.0 access token) is replaced.</td>
</tr>
<tr>
    <td><a href="#delete_ssf_stream"><CopyableCode code="delete_ssf_stream" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-stream_id"><code>stream_id</code></a></td>
    <td>Deletes the specified SSF Stream.<br /><br />If the `stream_id` is not provided in the query string, the associated stream with the Client ID (through the request OAuth 2.0 access token) is deleted. Otherwise, the SSF Stream with the `stream_id` is deleted, if found.</td>
</tr>
<tr>
    <td><a href="#verify_ssf_stream"><CopyableCode code="verify_ssf_stream" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-stream_id"><code>stream_id</code></a></td>
    <td></td>
    <td>Verifies an SSF Stream by publishing a Verification Event requested by a Security Events Provider.<br /><br />&gt; **Note:** A successful response doesn't indicate that the Verification Event<br />    was transmitted successfully, only that Okta has transmitted the event or will<br />    at some point in the future. The SSF Receiver is responsible for validating and acknowledging<br />    successful transmission of the request by responding with HTTP Response Status Code 202.</td>
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
<tr id="parameter-stream_id">
    <td><CopyableCode code="stream_id" /></td>
    <td><code>string</code></td>
    <td>The ID of the specified SSF Stream configuration (example: esc1k235GIIztAuGK0g5)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_ssf_streams"
    values={[
        { label: 'get_ssf_streams', value: 'get_ssf_streams' }
    ]}
>
<TabItem value="get_ssf_streams">

Retrieves either a list of all known SSF Stream configurations or the individual configuration if specified by ID.<br /><br />As Stream configurations are tied to a Client ID, only the Stream associated with the Client ID of the request OAuth 2.0 access token can be viewed.

```sql
SELECT
*
FROM okta.ssf.ssf_streams
WHERE subdomain = '{{ subdomain }}' -- required
AND stream_id = '{{ stream_id }}';
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_ssf_stream"
    values={[
        { label: 'create_ssf_stream', value: 'create_ssf_stream' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_ssf_stream">

Creates an SSF Stream for an event receiver to start receiving security events in the form of Security Event Tokens (SETs) from Okta.<br /><br />An SSF Stream is associated with the Client ID of the OAuth 2.0 access token used to create the stream. The Client ID is provided by Okta for an [OAuth 2.0 app integration](https://help.okta.com/okta_help.htm?id=ext_Apps_App_Integration_Wizard-oidc). One SSF Stream is allowed for each Client ID, hence, one SSF Stream is allowed for each app integration in Okta.<br /><br />A maximum of 10 SSF Stream configurations can be created for one org.

```sql
INSERT INTO okta.ssf.ssf_streams (
data__delivery,
data__events_requested,
data__format,
subdomain
)
SELECT 
'{{ delivery }}' --required,
'{{ events_requested }}' --required,
'{{ format }}',
'{{ subdomain }}'
RETURNING
stream_id,
aud,
delivery,
events_delivered,
events_requested,
events_supported,
format,
iss,
min_verification_interval
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: ssf_streams
  props:
    - name: subdomain
      value: string
      description: Required parameter for the ssf_streams resource.
    - name: delivery
      value: object
      description: >
        Contains information about the intended SET delivery method by the receiver
        
    - name: events_requested
      value: array
      description: >
        The events (mapped by the array of event type URIs) that the receiver wants to receive
        
    - name: format
      value: string
      description: >
        The Subject Identifier format expected for any SET transmitted.
        
      valid_values: ['iss_sub']
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_ssf_stream"
    values={[
        { label: 'update_ssf_stream', value: 'update_ssf_stream' }
    ]}
>
<TabItem value="update_ssf_stream">

Updates properties for an existing SSF Stream configuration.<br /><br />If the `stream_id` isn't provided in the request body, the associated stream with the Client ID (through the request OAuth 2.0 access token) is updated.

```sql
UPDATE okta.ssf.ssf_streams
SET 
data__aud = '{{ aud }}',
data__delivery = '{{ delivery }}',
data__events_delivered = '{{ events_delivered }}',
data__events_requested = '{{ events_requested }}',
data__events_supported = '{{ events_supported }}',
data__format = '{{ format }}',
data__iss = '{{ iss }}',
data__min_verification_interval = {{ min_verification_interval }},
data__stream_id = '{{ stream_id }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__events_requested = '{{ events_requested }}' --required
AND data__delivery = '{{ delivery }}' --required
RETURNING
stream_id,
aud,
delivery,
events_delivered,
events_requested,
events_supported,
format,
iss,
min_verification_interval;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_ssf_stream"
    values={[
        { label: 'replace_ssf_stream', value: 'replace_ssf_stream' }
    ]}
>
<TabItem value="replace_ssf_stream">

Replaces all properties for an existing SSF Stream configuration.<br /><br />If the `stream_id` isn't provided in the request body, the associated stream with the Client ID (through the request OAuth 2.0 access token) is replaced.

```sql
REPLACE okta.ssf.ssf_streams
SET 
data__aud = '{{ aud }}',
data__delivery = '{{ delivery }}',
data__events_delivered = '{{ events_delivered }}',
data__events_requested = '{{ events_requested }}',
data__events_supported = '{{ events_supported }}',
data__format = '{{ format }}',
data__iss = '{{ iss }}',
data__min_verification_interval = {{ min_verification_interval }},
data__stream_id = '{{ stream_id }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__events_requested = '{{ events_requested }}' --required
AND data__delivery = '{{ delivery }}' --required
RETURNING
stream_id,
aud,
delivery,
events_delivered,
events_requested,
events_supported,
format,
iss,
min_verification_interval;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_ssf_stream"
    values={[
        { label: 'delete_ssf_stream', value: 'delete_ssf_stream' }
    ]}
>
<TabItem value="delete_ssf_stream">

Deletes the specified SSF Stream.<br /><br />If the `stream_id` is not provided in the query string, the associated stream with the Client ID (through the request OAuth 2.0 access token) is deleted. Otherwise, the SSF Stream with the `stream_id` is deleted, if found.

```sql
DELETE FROM okta.ssf.ssf_streams
WHERE subdomain = '{{ subdomain }}' --required
AND stream_id = '{{ stream_id }}';
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="verify_ssf_stream"
    values={[
        { label: 'verify_ssf_stream', value: 'verify_ssf_stream' }
    ]}
>
<TabItem value="verify_ssf_stream">

Verifies an SSF Stream by publishing a Verification Event requested by a Security Events Provider.<br /><br />&gt; **Note:** A successful response doesn't indicate that the Verification Event<br />    was transmitted successfully, only that Okta has transmitted the event or will<br />    at some point in the future. The SSF Receiver is responsible for validating and acknowledging<br />    successful transmission of the request by responding with HTTP Response Status Code 202.

```sql
EXEC okta.ssf.ssf_streams.verify_ssf_stream 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"state": "{{ state }}", 
"stream_id": "{{ stream_id }}"
}';
```
</TabItem>
</Tabs>
