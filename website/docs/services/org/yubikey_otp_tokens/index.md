--- 
title: yubikey_otp_tokens
hide_title: false
hide_table_of_contents: false
keywords:
  - yubikey_otp_tokens
  - org
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

Creates, updates, deletes, gets or lists a <code>yubikey_otp_tokens</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>yubikey_otp_tokens</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.org.yubikey_otp_tokens" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_yubikey_otp_tokens"
    values={[
        { label: 'list_yubikey_otp_tokens', value: 'list_yubikey_otp_tokens' },
        { label: 'get_yubikey_otp_token_by_id', value: 'get_yubikey_otp_token_by_id' }
    ]}
>
<TabItem value="list_yubikey_otp_tokens">

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
    <td>ID of the token (example: ykkwcx13nrDq8g4oy0g3)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the token was created (example: 2022-08-25T00:31:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the token was last updated (example: 2022-08-25T00:31:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastVerified" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the token was last verified (example: 2022-08-25T00:31:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Specified profile information for token</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Token status</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_yubikey_otp_token_by_id">

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
    <td>ID of the token (example: ykkwcx13nrDq8g4oy0g3)</td>
</tr>
<tr>
    <td><CopyableCode code="_embedded" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the token was created (example: 2022-08-25T00:31:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the token was last updated (example: 2022-08-25T00:31:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="lastVerified" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the token was last verified (example: 2022-08-25T00:31:00.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Specified profile information for token</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Token status</td>
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
    <td><a href="#list_yubikey_otp_tokens"><CopyableCode code="list_yubikey_otp_tokens" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all YubiKey OTP tokens</td>
</tr>
<tr>
    <td><a href="#get_yubikey_otp_token_by_id"><CopyableCode code="get_yubikey_otp_token_by_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-tokenId"><code>tokenId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the specified YubiKey OTP token by `id`</td>
</tr>
<tr>
    <td><a href="#upload_yubikey_otp_token_seed"><CopyableCode code="upload_yubikey_otp_token_seed" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads a seed for a user to enroll a YubiKey OTP</td>
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
<tr id="parameter-tokenId">
    <td><CopyableCode code="tokenId" /></td>
    <td><code>string</code></td>
    <td>The YubiKey OTP token ID</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_yubikey_otp_tokens"
    values={[
        { label: 'list_yubikey_otp_tokens', value: 'list_yubikey_otp_tokens' },
        { label: 'get_yubikey_otp_token_by_id', value: 'get_yubikey_otp_token_by_id' }
    ]}
>
<TabItem value="list_yubikey_otp_tokens">

Lists all YubiKey OTP tokens

```sql
SELECT
id,
_embedded,
_links,
created,
lastUpdated,
lastVerified,
profile,
status
FROM okta.org.yubikey_otp_tokens
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_yubikey_otp_token_by_id">

Retrieves the specified YubiKey OTP token by `id`

```sql
SELECT
id,
_embedded,
_links,
created,
lastUpdated,
lastVerified,
profile,
status
FROM okta.org.yubikey_otp_tokens
WHERE tokenId = '{{ tokenId }}' -- required
AND subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="upload_yubikey_otp_token_seed"
    values={[
        { label: 'upload_yubikey_otp_token_seed', value: 'upload_yubikey_otp_token_seed' }
    ]}
>
<TabItem value="upload_yubikey_otp_token_seed">

Uploads a seed for a user to enroll a YubiKey OTP

```sql
EXEC okta.org.yubikey_otp_tokens.upload_yubikey_otp_token_seed 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"serialNumber": "{{ serialNumber }}", 
"publicId": "{{ publicId }}", 
"privateId": "{{ privateId }}", 
"aesKey": "{{ aesKey }}"
}';
```
</TabItem>
</Tabs>
