--- 
title: identity_sources
hide_title: false
hide_table_of_contents: false
keywords:
  - identity_sources
  - identity_sources
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

Creates, updates, deletes, gets or lists an <code>identity_sources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>identity_sources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.identity_sources.identity_sources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#upload_identity_source_data_for_delete"><CopyableCode code="upload_identity_source_data_for_delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads external IDs of entities that need to be deleted in Okta from the identity source for the given session</td>
</tr>
<tr>
    <td><a href="#upload_identity_source_data_for_upsert"><CopyableCode code="upload_identity_source_data_for_upsert" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads entities that need to be inserted or updated in Okta from the identity source for the given session</td>
</tr>
<tr>
    <td><a href="#start_import_from_identity_source"><CopyableCode code="start_import_from_identity_source" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Starts the import from the identity source described by the uploaded bulk operations</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="upload_identity_source_data_for_delete"
    values={[
        { label: 'upload_identity_source_data_for_delete', value: 'upload_identity_source_data_for_delete' },
        { label: 'upload_identity_source_data_for_upsert', value: 'upload_identity_source_data_for_upsert' },
        { label: 'start_import_from_identity_source', value: 'start_import_from_identity_source' }
    ]}
>
<TabItem value="upload_identity_source_data_for_delete">

Uploads external IDs of entities that need to be deleted in Okta from the identity source for the given session

```sql
EXEC okta.identity_sources.identity_sources.upload_identity_source_data_for_delete 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"entityType": "{{ entityType }}", 
"profiles": "{{ profiles }}"
}';
```
</TabItem>
<TabItem value="upload_identity_source_data_for_upsert">

Uploads entities that need to be inserted or updated in Okta from the identity source for the given session

```sql
EXEC okta.identity_sources.identity_sources.upload_identity_source_data_for_upsert 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"entityType": "{{ entityType }}", 
"profiles": "{{ profiles }}"
}';
```
</TabItem>
<TabItem value="start_import_from_identity_source">

Starts the import from the identity source described by the uploaded bulk operations

```sql
EXEC okta.identity_sources.identity_sources.start_import_from_identity_source 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
