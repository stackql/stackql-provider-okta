--- 
title: grants
hide_title: false
hide_table_of_contents: false
keywords:
  - grants
  - apps
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

Creates, updates, deletes, gets or lists a <code>grants</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>grants</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.grants" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_scope_consent_grants"
    values={[
        { label: 'list_scope_consent_grants', value: 'list_scope_consent_grants' },
        { label: 'get_scope_consent_grant', value: 'get_scope_consent_grant' }
    ]}
>
<TabItem value="list_scope_consent_grants">

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
    <td>ID of the Grant object (example: oag3ih1zrm1cBFOiq0h6)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the Grant</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="clientId" /></td>
    <td><code>string</code></td>
    <td>Client ID of the app integration (example: oag3ih1zrm1cBFOiq0h6)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2017-03-28T01:11:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>object</code></td>
    <td>User that created the object</td>
</tr>
<tr>
    <td><CopyableCode code="issuer" /></td>
    <td><code>string</code></td>
    <td>The issuer of your org authorization server. This is typically your Okta domain. (example: https://my_test_okta_org.oktapreview.com)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="scopeId" /></td>
    <td><code>string</code></td>
    <td>The name of the [Okta scope](https://developer.okta.com/docs/api/oauth2/#oauth-20-scopes) for which consent is granted (example: okta.users.read)</td>
</tr>
<tr>
    <td><CopyableCode code="source" /></td>
    <td><code>string</code></td>
    <td>User type source that granted consent (example: ADMIN)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>User ID that granted consent (if `source` is `END_USER`) (example: 00u5t60iloOHN9pBi0h7)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_scope_consent_grant">

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
    <td>ID of the Grant object (example: oag3ih1zrm1cBFOiq0h6)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td>Embedded resources related to the Grant</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="clientId" /></td>
    <td><code>string</code></td>
    <td>Client ID of the app integration (example: oag3ih1zrm1cBFOiq0h6)</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2017-03-28T01:11:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="createdBy" /></td>
    <td><code>object</code></td>
    <td>User that created the object</td>
</tr>
<tr>
    <td><CopyableCode code="issuer" /></td>
    <td><code>string</code></td>
    <td>The issuer of your org authorization server. This is typically your Okta domain. (example: https://my_test_okta_org.oktapreview.com)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="scopeId" /></td>
    <td><code>string</code></td>
    <td>The name of the [Okta scope](https://developer.okta.com/docs/api/oauth2/#oauth-20-scopes) for which consent is granted (example: okta.users.read)</td>
</tr>
<tr>
    <td><CopyableCode code="source" /></td>
    <td><code>string</code></td>
    <td>User type source that granted consent (example: ADMIN)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status (example: ACTIVE)</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>User ID that granted consent (if `source` is `END_USER`) (example: 00u5t60iloOHN9pBi0h7)</td>
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
    <td><a href="#list_scope_consent_grants"><CopyableCode code="list_scope_consent_grants" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Lists all scope consent Grants for the app</td>
</tr>
<tr>
    <td><a href="#get_scope_consent_grant"><CopyableCode code="get_scope_consent_grant" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Retrieves a single scope consent Grant object for the app</td>
</tr>
<tr>
    <td><a href="#grant_consent_to_scope"><CopyableCode code="grant_consent_to_scope" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Grants consent for the app to request an OAuth 2.0 Okta scope</td>
</tr>
<tr>
    <td><a href="#revoke_scope_consent_grant"><CopyableCode code="revoke_scope_consent_grant" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes permission for the app to grant the given scope</td>
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
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>An optional parameter to return scope details in the `_embedded` property. Valid value: `scope`</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_scope_consent_grants"
    values={[
        { label: 'list_scope_consent_grants', value: 'list_scope_consent_grants' },
        { label: 'get_scope_consent_grant', value: 'get_scope_consent_grant' }
    ]}
>
<TabItem value="list_scope_consent_grants">

Lists all scope consent Grants for the app

```sql
SELECT
id,
_embedded,
_links,
clientId,
created,
createdBy,
issuer,
lastUpdated,
scopeId,
source,
status,
userId
FROM okta.apps.grants
WHERE subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}';
```
</TabItem>
<TabItem value="get_scope_consent_grant">

Retrieves a single scope consent Grant object for the app

```sql
SELECT
id,
_embedded,
_links,
clientId,
created,
createdBy,
issuer,
lastUpdated,
scopeId,
source,
status,
userId
FROM okta.apps.grants
WHERE subdomain = '{{ subdomain }}' -- required
AND expand = '{{ expand }}';
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="grant_consent_to_scope"
    values={[
        { label: 'grant_consent_to_scope', value: 'grant_consent_to_scope' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="grant_consent_to_scope">

Grants consent for the app to request an OAuth 2.0 Okta scope

```sql
INSERT INTO okta.apps.grants (
data__issuer,
data__scopeId,
subdomain
)
SELECT 
'{{ issuer }}' --required,
'{{ scopeId }}' --required,
'{{ subdomain }}'
RETURNING
id,
_embedded,
_links,
clientId,
created,
createdBy,
issuer,
lastUpdated,
scopeId,
source,
status,
userId
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: grants
  props:
    - name: subdomain
      value: string
      description: Required parameter for the grants resource.
    - name: issuer
      value: string
      description: >
        The issuer of your org authorization server. This is typically your Okta domain.
        
    - name: scopeId
      value: string
      description: >
        The name of the [Okta scope](https://developer.okta.com/docs/api/oauth2/#oauth-20-scopes) for which consent is granted
        
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="revoke_scope_consent_grant"
    values={[
        { label: 'revoke_scope_consent_grant', value: 'revoke_scope_consent_grant' }
    ]}
>
<TabItem value="revoke_scope_consent_grant">

Revokes permission for the app to grant the given scope

```sql
DELETE FROM okta.apps.grants
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
