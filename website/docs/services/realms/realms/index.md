--- 
title: realms
hide_title: false
hide_table_of_contents: false
keywords:
  - realms
  - realms
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

Creates, updates, deletes, gets or lists a <code>realms</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>realms</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.realms.realms" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_realms"
    values={[
        { label: 'list_realms', value: 'list_realms' },
        { label: 'get_realm', value: 'get_realm' }
    ]}
>
<TabItem value="list_realms">

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
    <td>Unique ID for the realm</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the realm was created</td>
</tr>
<tr>
    <td><CopyableCode code="isDefault" /></td>
    <td><code>boolean</code></td>
    <td>Indicates the default realm. Existing users will start out in the default realm and can be moved to other realms individually or through realm assignments. See [Realms Assignments API](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/RealmAssignment/).</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the realm was updated</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_realm">

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
    <td>Unique ID for the realm</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the realm was created</td>
</tr>
<tr>
    <td><CopyableCode code="isDefault" /></td>
    <td><code>boolean</code></td>
    <td>Indicates the default realm. Existing users will start out in the default realm and can be moved to other realms individually or through realm assignments. See [Realms Assignments API](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/RealmAssignment/).</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the realm was updated</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td></td>
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
    <td><a href="#list_realms"><CopyableCode code="list_realms" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-limit"><code>limit</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-search"><code>search</code></a>, <a href="#parameter-sortBy"><code>sortBy</code></a>, <a href="#parameter-sortOrder"><code>sortOrder</code></a></td>
    <td>Lists all Realms</td>
</tr>
<tr>
    <td><a href="#get_realm"><CopyableCode code="get_realm" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a realm</td>
</tr>
<tr>
    <td><a href="#create_realm"><CopyableCode code="create_realm" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a new realm</td>
</tr>
<tr>
    <td><a href="#replace_realm"><CopyableCode code="replace_realm" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces the realm profile</td>
</tr>
<tr>
    <td><a href="#delete_realm"><CopyableCode code="delete_realm" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a realm permanently. This operation can only be performed after disassociating other entities like users and identity providers from a realm.</td>
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
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies the number of results returned. Defaults to 10 if `search` is provided.</td>
</tr>
<tr id="parameter-search">
    <td><CopyableCode code="search" /></td>
    <td><code>string</code></td>
    <td>Searches for realms with a supported filtering expression for most properties.  Searches for realms can be filtered by the contains (`co`) operator. You can only use `co` with the `profile.name` property. See [Operators](https://developer.okta.com/docs/api/#operators).</td>
</tr>
<tr id="parameter-sortBy">
    <td><CopyableCode code="sortBy" /></td>
    <td><code>string</code></td>
    <td>Specifies the field to sort by and can be any single property (for search queries only)</td>
</tr>
<tr id="parameter-sortOrder">
    <td><CopyableCode code="sortOrder" /></td>
    <td><code>string</code></td>
    <td>Specifies the sort order: `asc` or `desc` (for search queries only). This parameter is ignored if `sortBy` isn't present.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_realms"
    values={[
        { label: 'list_realms', value: 'list_realms' },
        { label: 'get_realm', value: 'get_realm' }
    ]}
>
<TabItem value="list_realms">

Lists all Realms

```sql
SELECT
id,
_links,
created,
isDefault,
lastUpdated,
profile
FROM okta.realms.realms
WHERE subdomain = '{{ subdomain }}' -- required
AND limit = '{{ limit }}'
AND after = '{{ after }}'
AND search = '{{ search }}'
AND sortBy = '{{ sortBy }}'
AND sortOrder = '{{ sortOrder }}';
```
</TabItem>
<TabItem value="get_realm">

Retrieves a realm

```sql
SELECT
id,
_links,
created,
isDefault,
lastUpdated,
profile
FROM okta.realms.realms
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_realm"
    values={[
        { label: 'create_realm', value: 'create_realm' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_realm">

Creates a new realm

```sql
INSERT INTO okta.realms.realms (
data__profile,
subdomain
)
SELECT 
'{{ profile }}',
'{{ subdomain }}'
RETURNING
id,
_links,
created,
isDefault,
lastUpdated,
profile
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: realms
  props:
    - name: subdomain
      value: string
      description: Required parameter for the realms resource.
    - name: profile
      value: object
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_realm"
    values={[
        { label: 'replace_realm', value: 'replace_realm' }
    ]}
>
<TabItem value="replace_realm">

Replaces the realm profile

```sql
REPLACE okta.realms.realms
SET 
data__profile = '{{ profile }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
_links,
created,
isDefault,
lastUpdated,
profile;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_realm"
    values={[
        { label: 'delete_realm', value: 'delete_realm' }
    ]}
>
<TabItem value="delete_realm">

Deletes a realm permanently. This operation can only be performed after disassociating other entities like users and identity providers from a realm.

```sql
DELETE FROM okta.realms.realms
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
