--- 
title: jwks
hide_title: false
hide_table_of_contents: false
keywords:
  - jwks
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

Creates, updates, deletes, gets or lists a <code>jwks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>jwks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.jwks" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_jwk"
    values={[
        { label: 'list_jwk', value: 'list_jwk' },
        { label: 'get_jwk', value: 'get_jwk' }
    ]}
>
<TabItem value="list_jwk">

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
<TabItem value="get_jwk">

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
    <td><a href="#list_jwk"><CopyableCode code="list_jwk" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all JSON Web Keys for an OAuth 2.0 client app</td>
</tr>
<tr>
    <td><a href="#get_jwk"><CopyableCode code="get_jwk" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an OAuth 2.0 Client JSON Web Key by `keyId`.</td>
</tr>
<tr>
    <td><a href="#add_jwk"><CopyableCode code="add_jwk" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Adds a new JSON Web Key to the client`s JSON Web Keys.<br />> **Note:** This API doesn't allow you to add a key if the existing key doesn't have a `kid`. This is also consistent with how the [Dynamic Client Registration](/openapi/okta-oauth/oauth/tag/Client/) or [Applications](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Application/) APIs behave, as they don't allow the creation of multiple keys without `kids`. Use the [Replace an Application](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Application/#tag/Application/operation/replaceApplication) or the [Replace a Client Application](/openapi/okta-oauth/oauth/tag/Client/#tag/Client/operation/replaceClient) operation to update the JWKS or [Delete an OAuth 2.0 Client JSON Web Key](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/ApplicationSSOPublicKeys/#tag/ApplicationSSOPublicKeys/operation/deletejwk) and re-add the key with a `kid`.</td>
</tr>
<tr>
    <td><a href="#deletejwk"><CopyableCode code="deletejwk" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an OAuth 2.0 Client JSON Web Key by `keyId`. You can only delete an inactive key.</td>
</tr>
<tr>
    <td><a href="#activate_oauth2_client_json_web_key"><CopyableCode code="activate_oauth2_client_json_web_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates an OAuth 2.0 Client JSON Web Key by `keyId`<br />&gt; **Note:** You can have only one active encryption key at any given time for app. When you activate an inactive key, the current active key is automatically deactivated.</td>
</tr>
<tr>
    <td><a href="#deactivate_oauth2_client_json_web_key"><CopyableCode code="deactivate_oauth2_client_json_web_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates an OAuth 2.0 Client JSON Web Key by `keyId`.<br />&gt; **Note:** You can only deactivate signing keys. Deactivating the active encryption key isn't allowed if the client has ID token encryption enabled. You can activate another encryption key, which makes the current key inactive.</td>
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
    defaultValue="list_jwk"
    values={[
        { label: 'list_jwk', value: 'list_jwk' },
        { label: 'get_jwk', value: 'get_jwk' }
    ]}
>
<TabItem value="list_jwk">

Lists all JSON Web Keys for an OAuth 2.0 client app

```sql
SELECT
*
FROM okta.apps.jwks
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_jwk">

Retrieves an OAuth 2.0 Client JSON Web Key by `keyId`.

```sql
SELECT
*
FROM okta.apps.jwks
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="add_jwk"
    values={[
        { label: 'add_jwk', value: 'add_jwk' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="add_jwk">

Adds a new JSON Web Key to the client`s JSON Web Keys.<br />> **Note:** This API doesn't allow you to add a key if the existing key doesn't have a `kid`. This is also consistent with how the [Dynamic Client Registration](/openapi/okta-oauth/oauth/tag/Client/) or [Applications](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Application/) APIs behave, as they don't allow the creation of multiple keys without `kids`. Use the [Replace an Application](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Application/#tag/Application/operation/replaceApplication) or the [Replace a Client Application](/openapi/okta-oauth/oauth/tag/Client/#tag/Client/operation/replaceClient) operation to update the JWKS or [Delete an OAuth 2.0 Client JSON Web Key](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/ApplicationSSOPublicKeys/#tag/ApplicationSSOPublicKeys/operation/deletejwk) and re-add the key with a `kid`.

```sql
INSERT INTO okta.apps.jwks (
subdomain
)
SELECT 
'{{ subdomain }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: jwks
  props:
    - name: subdomain
      value: string
      description: Required parameter for the jwks resource.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="deletejwk"
    values={[
        { label: 'deletejwk', value: 'deletejwk' }
    ]}
>
<TabItem value="deletejwk">

Deletes an OAuth 2.0 Client JSON Web Key by `keyId`. You can only delete an inactive key.

```sql
DELETE FROM okta.apps.jwks
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_oauth2_client_json_web_key"
    values={[
        { label: 'activate_oauth2_client_json_web_key', value: 'activate_oauth2_client_json_web_key' },
        { label: 'deactivate_oauth2_client_json_web_key', value: 'deactivate_oauth2_client_json_web_key' }
    ]}
>
<TabItem value="activate_oauth2_client_json_web_key">

Activates an OAuth 2.0 Client JSON Web Key by `keyId`<br />&gt; **Note:** You can have only one active encryption key at any given time for app. When you activate an inactive key, the current active key is automatically deactivated.

```sql
EXEC okta.apps.jwks.activate_oauth2_client_json_web_key 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="deactivate_oauth2_client_json_web_key">

Deactivates an OAuth 2.0 Client JSON Web Key by `keyId`.<br />&gt; **Note:** You can only deactivate signing keys. Deactivating the active encryption key isn't allowed if the client has ID token encryption enabled. You can activate another encryption key, which makes the current key inactive.

```sql
EXEC okta.apps.jwks.deactivate_oauth2_client_json_web_key 
@subdomain='{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
