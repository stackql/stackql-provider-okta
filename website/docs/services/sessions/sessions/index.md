--- 
title: sessions
hide_title: false
hide_table_of_contents: false
keywords:
  - sessions
  - sessions
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

Creates, updates, deletes, gets or lists a <code>sessions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sessions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.sessions.sessions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_current_session"
    values={[
        { label: 'get_current_session', value: 'get_current_session' },
        { label: 'get_session', value: 'get_session' }
    ]}
>
<TabItem value="get_current_session">

Success

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
    <td>A unique key for the Session</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="amr" /></td>
    <td><code>array</code></td>
    <td>Authentication method reference</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp when the Session expires</td>
</tr>
<tr>
    <td><CopyableCode code="idp" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastFactorVerification" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp when the user last performed multifactor authentication</td>
</tr>
<tr>
    <td><CopyableCode code="lastPasswordVerification" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp when the user last performed the primary or step-up authentication with a password</td>
</tr>
<tr>
    <td><CopyableCode code="login" /></td>
    <td><code>string</code></td>
    <td>A unique identifier for the user (username)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Current Session status</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>A unique key for the user</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_session">

Success

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
    <td>A unique key for the Session</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="amr" /></td>
    <td><code>array</code></td>
    <td>Authentication method reference</td>
</tr>
<tr>
    <td><CopyableCode code="createdAt" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp when the Session expires</td>
</tr>
<tr>
    <td><CopyableCode code="idp" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="lastFactorVerification" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp when the user last performed multifactor authentication</td>
</tr>
<tr>
    <td><CopyableCode code="lastPasswordVerification" /></td>
    <td><code>string (date-time)</code></td>
    <td>A timestamp when the user last performed the primary or step-up authentication with a password</td>
</tr>
<tr>
    <td><CopyableCode code="login" /></td>
    <td><code>string</code></td>
    <td>A unique identifier for the user (username)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Current Session status</td>
</tr>
<tr>
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>A unique key for the user</td>
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
    <td><a href="#get_current_session"><CopyableCode code="get_current_session" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-Cookie"><code>Cookie</code></a></td>
    <td>Retrieves Session information for the current user. Use this method in a browser-based application to determine if the user is signed in. <br /><br />&gt; **Note:** This operation requires a session cookie for the user. An API token isn't allowed for this operation.</td>
</tr>
<tr>
    <td><a href="#get_session"><CopyableCode code="get_session" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves information about the Session specified by the given session ID</td>
</tr>
<tr>
    <td><a href="#create_session"><CopyableCode code="create_session" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a new Session for a user with a valid session token. Use this API if, for example, you want to set the session cookie yourself instead of allowing Okta to set it, or want to hold the session ID to delete a session through the API instead of visiting the logout URL.</td>
</tr>
<tr>
    <td><a href="#close_current_session"><CopyableCode code="close_current_session" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-Cookie"><code>Cookie</code></a></td>
    <td>Closes the Session for the user who is currently signed in. Use this method in a browser-based application to sign out a user.<br /><br />&gt; **Note:** This operation requires a session cookie for the user. An API token isn't allowed for this operation.</td>
</tr>
<tr>
    <td><a href="#revoke_session"><CopyableCode code="revoke_session" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes the specified Session</td>
</tr>
<tr>
    <td><a href="#refresh_current_session"><CopyableCode code="refresh_current_session" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-Cookie"><code>Cookie</code></a></td>
    <td>Refreshes the Session for the current user<br /><br />&gt; **Note:** This operation requires a session cookie for the user. An API token isn't allowed for this operation.</td>
</tr>
<tr>
    <td><a href="#refresh_session"><CopyableCode code="refresh_session" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Refreshes an existing Session using the `id` for that Session. A successful response contains the refreshed Session with an updated `expiresAt` timestamp.</td>
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
<tr id="parameter-Cookie">
    <td><CopyableCode code="Cookie" /></td>
    <td><code>string</code></td>
    <td> (example: sid=abcde-123 or idx=abcde-123)</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_current_session"
    values={[
        { label: 'get_current_session', value: 'get_current_session' },
        { label: 'get_session', value: 'get_session' }
    ]}
>
<TabItem value="get_current_session">

Retrieves Session information for the current user. Use this method in a browser-based application to determine if the user is signed in. <br /><br />&gt; **Note:** This operation requires a session cookie for the user. An API token isn't allowed for this operation.

```sql
SELECT
id,
_links,
amr,
createdAt,
expiresAt,
idp,
lastFactorVerification,
lastPasswordVerification,
login,
status,
userId
FROM okta.sessions.sessions
WHERE subdomain = '{{ subdomain }}' -- required
AND Cookie = '{{ Cookie }}';
```
</TabItem>
<TabItem value="get_session">

Retrieves information about the Session specified by the given session ID

```sql
SELECT
id,
_links,
amr,
createdAt,
expiresAt,
idp,
lastFactorVerification,
lastPasswordVerification,
login,
status,
userId
FROM okta.sessions.sessions
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_session"
    values={[
        { label: 'create_session', value: 'create_session' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_session">

Creates a new Session for a user with a valid session token. Use this API if, for example, you want to set the session cookie yourself instead of allowing Okta to set it, or want to hold the session ID to delete a session through the API instead of visiting the logout URL.

```sql
INSERT INTO okta.sessions.sessions (
data__sessionToken,
subdomain
)
SELECT 
'{{ sessionToken }}',
'{{ subdomain }}'
RETURNING
id,
_links,
amr,
createdAt,
expiresAt,
idp,
lastFactorVerification,
lastPasswordVerification,
login,
status,
userId
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: sessions
  props:
    - name: subdomain
      value: string
      description: Required parameter for the sessions resource.
    - name: sessionToken
      value: string
      description: >
        The session token obtained during authentication
        
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="close_current_session"
    values={[
        { label: 'close_current_session', value: 'close_current_session' },
        { label: 'revoke_session', value: 'revoke_session' }
    ]}
>
<TabItem value="close_current_session">

Closes the Session for the user who is currently signed in. Use this method in a browser-based application to sign out a user.<br /><br />&gt; **Note:** This operation requires a session cookie for the user. An API token isn't allowed for this operation.

```sql
DELETE FROM okta.sessions.sessions
WHERE subdomain = '{{ subdomain }}' --required
AND Cookie = '{{ Cookie }}';
```
</TabItem>
<TabItem value="revoke_session">

Revokes the specified Session

```sql
DELETE FROM okta.sessions.sessions
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="refresh_current_session"
    values={[
        { label: 'refresh_current_session', value: 'refresh_current_session' },
        { label: 'refresh_session', value: 'refresh_session' }
    ]}
>
<TabItem value="refresh_current_session">

Refreshes the Session for the current user<br /><br />&gt; **Note:** This operation requires a session cookie for the user. An API token isn't allowed for this operation.

```sql
EXEC okta.sessions.sessions.refresh_current_session 
@subdomain='{{ subdomain }}' --required, 
@Cookie='{{ Cookie }}';
```
</TabItem>
<TabItem value="refresh_session">

Refreshes an existing Session using the `id` for that Session. A successful response contains the refreshed Session with an updated `expiresAt` timestamp.

```sql
EXEC okta.sessions.sessions.refresh_session 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
