--- 
title: scopes
hide_title: false
hide_table_of_contents: false
keywords:
  - scopes
  - authorizationservers
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

Creates, updates, deletes, gets or lists a <code>scopes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scopes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authorizationservers.scopes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_oauth2_scopes"
    values={[
        { label: 'list_oauth2_scopes', value: 'list_oauth2_scopes' },
        { label: 'get_oauth2_scope', value: 'get_oauth2_scope' }
    ]}
>
<TabItem value="list_oauth2_scopes">

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
    <td>Scope object ID</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Scope name</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="consent" /></td>
    <td><code>string</code></td>
    <td>Indicates whether a consent dialog is needed for the Scope (default: IMPLICIT)</td>
</tr>
<tr>
    <td><CopyableCode code="default" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if this Scope is a default scope</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the Scope</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>Name of the end user displayed in a consent dialog</td>
</tr>
<tr>
    <td><CopyableCode code="metadataPublish" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the Scope is included in the metadata (default: NO_CLIENTS)</td>
</tr>
<tr>
    <td><CopyableCode code="optional" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the Scope is optional. When set to `true`, the user can skip consent for the scope.</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if Okta created the Scope</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_oauth2_scope">

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
    <td>Scope object ID</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Scope name</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="consent" /></td>
    <td><code>string</code></td>
    <td>Indicates whether a consent dialog is needed for the Scope (default: IMPLICIT)</td>
</tr>
<tr>
    <td><CopyableCode code="default" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if this Scope is a default scope</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the Scope</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>Name of the end user displayed in a consent dialog</td>
</tr>
<tr>
    <td><CopyableCode code="metadataPublish" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the Scope is included in the metadata (default: NO_CLIENTS)</td>
</tr>
<tr>
    <td><CopyableCode code="optional" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the Scope is optional. When set to `true`, the user can skip consent for the scope.</td>
</tr>
<tr>
    <td><CopyableCode code="system" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if Okta created the Scope</td>
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
    <td><a href="#list_oauth2_scopes"><CopyableCode code="list_oauth2_scopes" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-q"><code>q</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all custom token scopes</td>
</tr>
<tr>
    <td><a href="#get_oauth2_scope"><CopyableCode code="get_oauth2_scope" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a custom token scope</td>
</tr>
<tr>
    <td><a href="#create_oauth2_scope"><CopyableCode code="create_oauth2_scope" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__name"><code>data__name</code></a></td>
    <td></td>
    <td>Creates a custom token scope</td>
</tr>
<tr>
    <td><a href="#replace_oauth2_scope"><CopyableCode code="replace_oauth2_scope" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__name"><code>data__name</code></a></td>
    <td></td>
    <td>Replaces a custom token scope</td>
</tr>
<tr>
    <td><a href="#delete_oauth2_scope"><CopyableCode code="delete_oauth2_scope" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a custom token scope</td>
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
    <td>Specifies the pagination cursor for the next page of scopes. Treat the after cursor as an opaque value and obtain it through the next link relationship. See [Pagination](https://developer.okta.com/docs/api/#pagination).</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Filter expression for Custom Token Scopes</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>Specifies the number of objects to return per page. If there are multiple pages of results, the Link header contains a `next` link that you need to use as an opaque value (follow it, don't parse it). See [Pagination](https://developer.okta.com/docs/api/#pagination).</td>
</tr>
<tr id="parameter-q">
    <td><CopyableCode code="q" /></td>
    <td><code>string</code></td>
    <td>Searches the `name` of Custom Token Scopes for matching values</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_oauth2_scopes"
    values={[
        { label: 'list_oauth2_scopes', value: 'list_oauth2_scopes' },
        { label: 'get_oauth2_scope', value: 'get_oauth2_scope' }
    ]}
>
<TabItem value="list_oauth2_scopes">

Lists all custom token scopes

```sql
SELECT
id,
name,
_links,
consent,
default,
description,
displayName,
metadataPublish,
optional,
system
FROM okta.authorizationservers.scopes
WHERE subdomain = '{{ subdomain }}' -- required
AND q = '{{ q }}'
AND filter = '{{ filter }}'
AND after = '{{ after }}'
AND limit = '{{ limit }}';
```
</TabItem>
<TabItem value="get_oauth2_scope">

Retrieves a custom token scope

```sql
SELECT
id,
name,
_links,
consent,
default,
description,
displayName,
metadataPublish,
optional,
system
FROM okta.authorizationservers.scopes
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_oauth2_scope"
    values={[
        { label: 'create_oauth2_scope', value: 'create_oauth2_scope' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_oauth2_scope">

Creates a custom token scope

```sql
INSERT INTO okta.authorizationservers.scopes (
data__consent,
data__default,
data__description,
data__displayName,
data__metadataPublish,
data__name,
data__optional,
data__system,
subdomain
)
SELECT 
'{{ consent }}',
{{ default }},
'{{ description }}',
'{{ displayName }}',
'{{ metadataPublish }}',
'{{ name }}' --required,
{{ optional }},
{{ system }},
'{{ subdomain }}'
RETURNING
id,
name,
_links,
consent,
default,
description,
displayName,
metadataPublish,
optional,
system
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: scopes
  props:
    - name: subdomain
      value: string
      description: Required parameter for the scopes resource.
    - name: consent
      value: string
      description: >
        Indicates whether a consent dialog is needed for the Scope
        
      valid_values: ['FLEXIBLE', 'IMPLICIT', 'REQUIRED']
      default: IMPLICIT
    - name: default
      value: boolean
      description: >
        Indicates if this Scope is a default scope
        
      default: false
    - name: description
      value: string
      description: >
        Description of the Scope
        
    - name: displayName
      value: string
      description: >
        Name of the end user displayed in a consent dialog
        
    - name: metadataPublish
      value: string
      description: >
        Indicates whether the Scope is included in the metadata
        
      valid_values: ['ALL_CLIENTS', 'NO_CLIENTS']
      default: NO_CLIENTS
    - name: name
      value: string
      description: >
        Scope name
        
    - name: optional
      value: boolean
      description: >
        Indicates whether the Scope is optional. When set to `true`, the user can skip consent for the scope.
        
      default: false
    - name: system
      value: boolean
      description: >
        Indicates if Okta created the Scope
        
      default: false
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_oauth2_scope"
    values={[
        { label: 'replace_oauth2_scope', value: 'replace_oauth2_scope' }
    ]}
>
<TabItem value="replace_oauth2_scope">

Replaces a custom token scope

```sql
REPLACE okta.authorizationservers.scopes
SET 
data__consent = '{{ consent }}',
data__default = {{ default }},
data__description = '{{ description }}',
data__displayName = '{{ displayName }}',
data__metadataPublish = '{{ metadataPublish }}',
data__name = '{{ name }}',
data__optional = {{ optional }},
data__system = {{ system }}
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__name = '{{ name }}' --required
RETURNING
id,
name,
_links,
consent,
default,
description,
displayName,
metadataPublish,
optional,
system;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_oauth2_scope"
    values={[
        { label: 'delete_oauth2_scope', value: 'delete_oauth2_scope' }
    ]}
>
<TabItem value="delete_oauth2_scope">

Deletes a custom token scope

```sql
DELETE FROM okta.authorizationservers.scopes
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
