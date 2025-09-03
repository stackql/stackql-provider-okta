--- 
title: profile_mappings
hide_title: false
hide_table_of_contents: false
keywords:
  - profile_mappings
  - mappings
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

Creates, updates, deletes, gets or lists a <code>profile_mappings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>profile_mappings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.mappings.profile_mappings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_profile_mappings"
    values={[
        { label: 'list_profile_mappings', value: 'list_profile_mappings' },
        { label: 'get_profile_mapping', value: 'get_profile_mapping' }
    ]}
>
<TabItem value="list_profile_mappings">

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
    <td>Unique identifier for profile mapping</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code></code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="source" /></td>
    <td><code></code></td>
    <td>The parameter is the source of a profile mapping and is a valid [JSON Schema Draft 4](https://datatracker.ietf.org/doc/html/draft-zyp-json-schema-04) document with the following properties. The data type can be an app instance or an Okta object.  &gt; **Note:** If the source is Okta and the UserTypes feature isn't enabled, then the source `_links` only has a link to the schema.</td>
</tr>
<tr>
    <td><CopyableCode code="target" /></td>
    <td><code></code></td>
    <td>The parameter is the target of a profile mapping and is a valid [JSON Schema Draft 4](https://datatracker.ietf.org/doc/html/draft-zyp-json-schema-04) document with the following properties. The data type can be an app instance or an Okta object.   &gt; **Note:** If the target is Okta and the UserTypes feature isn't enabled, then the target `_links` only has a link to the schema.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_profile_mapping">

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
    <td><a href="#list_profile_mappings"><CopyableCode code="list_profile_mappings" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-sourceId"><code>sourceId</code></a>, <a href="#parameter-targetId"><code>targetId</code></a></td>
    <td>Lists all profile mappings in your org with [pagination](https://developer.okta.com/docs/api/#pagination). You can return a subset of profile mappings that match a supported `sourceId` and/or `targetId`.<br /><br />The results are [paginated]https://developer.okta.com/docs/api#pagination according to the `limit` parameter. If there are multiple pages of results, the Link header contains a `next` link that you should treat as an opaque value (follow it, don't parse it). See [Link Header](https://developer.okta.com/docs/api/#link-header).<br /><br />The response is a collection of profile mappings that include a subset of the profile mapping object's parameters. The profile mapping object describes<br />the properties mapping between an Okta user and an app user profile using [JSON Schema Draft 4](https://datatracker.ietf.org/doc/html/draft-zyp-json-schema-04).</td>
</tr>
<tr>
    <td><a href="#get_profile_mapping"><CopyableCode code="get_profile_mapping" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a single profile mapping referenced by its ID</td>
</tr>
<tr>
    <td><a href="#update_profile_mapping"><CopyableCode code="update_profile_mapping" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates an existing profile mapping by adding, updating, or removing one or many property mappings</td>
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
    <td>Mapping `id` that specifies the pagination cursor for the next page of mappings</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of results per page</td>
</tr>
<tr id="parameter-sourceId">
    <td><CopyableCode code="sourceId" /></td>
    <td><code>string</code></td>
    <td>The user type or app instance ID that acts as the source of expressions in a mapping. If this parameter is included, all returned mappings have this as their `source.id`.</td>
</tr>
<tr id="parameter-targetId">
    <td><CopyableCode code="targetId" /></td>
    <td><code>string</code></td>
    <td>The user type or app instance ID that acts as the target of expressions in a mapping. If this parameter is included, all returned mappings have this as their `target.id`.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_profile_mappings"
    values={[
        { label: 'list_profile_mappings', value: 'list_profile_mappings' },
        { label: 'get_profile_mapping', value: 'get_profile_mapping' }
    ]}
>
<TabItem value="list_profile_mappings">

Lists all profile mappings in your org with [pagination](https://developer.okta.com/docs/api/#pagination). You can return a subset of profile mappings that match a supported `sourceId` and/or `targetId`.<br /><br />The results are [paginated]https://developer.okta.com/docs/api#pagination according to the `limit` parameter. If there are multiple pages of results, the Link header contains a `next` link that you should treat as an opaque value (follow it, don't parse it). See [Link Header](https://developer.okta.com/docs/api/#link-header).<br /><br />The response is a collection of profile mappings that include a subset of the profile mapping object's parameters. The profile mapping object describes<br />the properties mapping between an Okta user and an app user profile using [JSON Schema Draft 4](https://datatracker.ietf.org/doc/html/draft-zyp-json-schema-04).

```sql
SELECT
id,
_links,
source,
target
FROM okta.mappings.profile_mappings
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
AND sourceId = '{{ sourceId }}'
AND targetId = '{{ targetId }}';
```
</TabItem>
<TabItem value="get_profile_mapping">

Retrieves a single profile mapping referenced by its ID

```sql
SELECT
*
FROM okta.mappings.profile_mappings
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_profile_mapping"
    values={[
        { label: 'update_profile_mapping', value: 'update_profile_mapping' }
    ]}
>
<TabItem value="update_profile_mapping">

Updates an existing profile mapping by adding, updating, or removing one or many property mappings

```sql
UPDATE okta.mappings.profile_mappings
SET 
data__properties = '{{ properties }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__properties = '{{ properties }}' --required;
```
</TabItem>
</Tabs>
