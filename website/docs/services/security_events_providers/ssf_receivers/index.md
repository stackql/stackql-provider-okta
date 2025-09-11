--- 
title: ssf_receivers
hide_title: false
hide_table_of_contents: false
keywords:
  - ssf_receivers
  - security_events_providers
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

Creates, updates, deletes, gets or lists a <code>ssf_receivers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ssf_receivers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.security_events_providers.ssf_receivers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_security_events_provider_instances"
    values={[
        { label: 'list_security_events_provider_instances', value: 'list_security_events_provider_instances' },
        { label: 'get_security_events_provider_instance', value: 'get_security_events_provider_instance' }
    ]}
>
<TabItem value="list_security_events_provider_instances">

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
    <td>The unique identifier of this instance (example: sse1qg25RpusjUP6m0g5)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the Security Events Provider instance (example: Target SSF Provider)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="settings" /></td>
    <td><code>object</code></td>
    <td>Information about the Security Events Provider for signal ingestion (title: Security Events Provider settings)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the Security Events Provider is active or not</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The application type of the Security Events Provider (example: okta)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_security_events_provider_instance">

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
    <td>The unique identifier of this instance (example: sse1qg25RpusjUP6m0g5)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the Security Events Provider instance (example: Target SSF Provider)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="settings" /></td>
    <td><code>object</code></td>
    <td>Information about the Security Events Provider for signal ingestion (title: Security Events Provider settings)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the Security Events Provider is active or not</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The application type of the Security Events Provider (example: okta)</td>
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
    <td><a href="#list_security_events_provider_instances"><CopyableCode code="list_security_events_provider_instances" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all Security Events Provider instances</td>
</tr>
<tr>
    <td><a href="#get_security_events_provider_instance"><CopyableCode code="get_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the Security Events Provider instance specified by `id`</td>
</tr>
<tr>
    <td><a href="#create_security_events_provider_instance"><CopyableCode code="create_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__settings"><code>data__settings</code></a>, <a href="#parameter-data__type"><code>data__type</code></a></td>
    <td></td>
    <td>Creates a Security Events Provider instance</td>
</tr>
<tr>
    <td><a href="#replace_security_events_provider_instance"><CopyableCode code="replace_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__name"><code>data__name</code></a>, <a href="#parameter-data__settings"><code>data__settings</code></a>, <a href="#parameter-data__type"><code>data__type</code></a></td>
    <td></td>
    <td>Replaces a Security Events Provider instance specified by `id`</td>
</tr>
<tr>
    <td><a href="#delete_security_events_provider_instance"><CopyableCode code="delete_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a Security Events Provider instance specified by `id`</td>
</tr>
<tr>
    <td><a href="#activate_security_events_provider_instance"><CopyableCode code="activate_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a Security Events Provider instance by setting its status to `ACTIVE`.<br />This operation resumes the flow of events from the Security Events Provider to Okta.</td>
</tr>
<tr>
    <td><a href="#deactivate_security_events_provider_instance"><CopyableCode code="deactivate_security_events_provider_instance" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates a Security Events Provider instance by setting its status to `INACTIVE`.<br />This operation stops the flow of events from the Security Events Provider to Okta.</td>
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
    defaultValue="list_security_events_provider_instances"
    values={[
        { label: 'list_security_events_provider_instances', value: 'list_security_events_provider_instances' },
        { label: 'get_security_events_provider_instance', value: 'get_security_events_provider_instance' }
    ]}
>
<TabItem value="list_security_events_provider_instances">

Lists all Security Events Provider instances

```sql
SELECT
id,
name,
_links,
settings,
status,
type
FROM okta.security_events_providers.ssf_receivers
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_security_events_provider_instance">

Retrieves the Security Events Provider instance specified by `id`

```sql
SELECT
id,
name,
_links,
settings,
status,
type
FROM okta.security_events_providers.ssf_receivers
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_security_events_provider_instance"
    values={[
        { label: 'create_security_events_provider_instance', value: 'create_security_events_provider_instance' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_security_events_provider_instance">

Creates a Security Events Provider instance

```sql
INSERT INTO okta.security_events_providers.ssf_receivers (
data__name,
data__settings,
data__type,
subdomain
)
SELECT 
'{{ name }}' /* required */,
'{{ settings }}' /* required */,
'{{ type }}' /* required */,
'{{ subdomain }}'
RETURNING
id,
name,
_links,
settings,
status,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: ssf_receivers
  props:
    - name: subdomain
      value: string
      description: Required parameter for the ssf_receivers resource.
    - name: name
      value: string
      description: >
        The name of the Security Events Provider instance
        
    - name: settings
      value: object
      description: >
        Information about the Security Events Provider for signal ingestion
        
    - name: type
      value: string
      description: >
        The application type of the Security Events Provider
        
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_security_events_provider_instance"
    values={[
        { label: 'replace_security_events_provider_instance', value: 'replace_security_events_provider_instance' }
    ]}
>
<TabItem value="replace_security_events_provider_instance">

Replaces a Security Events Provider instance specified by `id`

```sql
REPLACE okta.security_events_providers.ssf_receivers
SET 
data__name = '{{ name }}',
data__settings = '{{ settings }}',
data__type = '{{ type }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__name = '{{ name }}' --required
AND data__settings = '{{ settings }}' --required
AND data__type = '{{ type }}' --required
RETURNING
id,
name,
_links,
settings,
status,
type
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_security_events_provider_instance"
    values={[
        { label: 'delete_security_events_provider_instance', value: 'delete_security_events_provider_instance' }
    ]}
>
<TabItem value="delete_security_events_provider_instance">

Deletes a Security Events Provider instance specified by `id`

```sql
DELETE FROM okta.security_events_providers.ssf_receivers
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_security_events_provider_instance"
    values={[
        { label: 'activate_security_events_provider_instance', value: 'activate_security_events_provider_instance' },
        { label: 'deactivate_security_events_provider_instance', value: 'deactivate_security_events_provider_instance' }
    ]}
>
<TabItem value="activate_security_events_provider_instance">

Activates a Security Events Provider instance by setting its status to `ACTIVE`.<br />This operation resumes the flow of events from the Security Events Provider to Okta.

```sql
EXEC okta.security_events_providers.ssf_receivers.activate_security_events_provider_instance 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_security_events_provider_instance">

Deactivates a Security Events Provider instance by setting its status to `INACTIVE`.<br />This operation stops the flow of events from the Security Events Provider to Okta.

```sql
EXEC okta.security_events_providers.ssf_receivers.deactivate_security_events_provider_instance 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
