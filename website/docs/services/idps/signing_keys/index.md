--- 
title: signing_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - signing_keys
  - idps
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

Creates, updates, deletes, gets or lists a <code>signing_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>signing_keys</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.idps.signing_keys" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_identity_provider_signing_keys"
    values={[
        { label: 'list_identity_provider_signing_keys', value: 'list_identity_provider_signing_keys' },
        { label: 'get_identity_provider_signing_key', value: 'get_identity_provider_signing_key' }
    ]}
>
<TabItem value="list_identity_provider_signing_keys">

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
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>The exponent value for the RSA public key (example: AQAB)</td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object expires (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for the key (example: your-key-id)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Identifies the cryptographic algorithm family used with the key (example: RSA)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>The modulus value for the RSA public key (example: 101438407598598116085679865987760095721749307901605456708912786847324207000576780508113360584555007890315805735307890113536927352312915634368993759211767770602174860126854831344273970871509573365292777620005537635317282520456901584213746937262823585533063042033441296629204165064680610660631365266976782082747)</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Intended use of the public key (example: sig)</td>
</tr>
<tr>
    <td><CopyableCode code="x5c" /></td>
    <td><code>array</code></td>
    <td>Base64-encoded X.509 certificate chain with DER encoding</td>
</tr>
<tr>
    <td><CopyableCode code="x5t#S256" /></td>
    <td><code>string</code></td>
    <td>Base64url-encoded SHA-256 thumbprint of the DER encoding of an X.509 certificate (example: wzPVobIrveR1x-PCbjsFGNV-6zn7Rm9KuOWOG4Rk6jE)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_identity_provider_signing_key">

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
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="e" /></td>
    <td><code>string</code></td>
    <td>The exponent value for the RSA public key (example: AQAB)</td>
</tr>
<tr>
    <td><CopyableCode code="expiresAt" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object expires (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="kid" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for the key (example: your-key-id)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td>Identifies the cryptographic algorithm family used with the key (example: RSA)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was last updated (example: 2016-01-03T18:15:47.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="n" /></td>
    <td><code>string</code></td>
    <td>The modulus value for the RSA public key (example: 101438407598598116085679865987760095721749307901605456708912786847324207000576780508113360584555007890315805735307890113536927352312915634368993759211767770602174860126854831344273970871509573365292777620005537635317282520456901584213746937262823585533063042033441296629204165064680610660631365266976782082747)</td>
</tr>
<tr>
    <td><CopyableCode code="use" /></td>
    <td><code>string</code></td>
    <td>Intended use of the public key (example: sig)</td>
</tr>
<tr>
    <td><CopyableCode code="x5c" /></td>
    <td><code>array</code></td>
    <td>Base64-encoded X.509 certificate chain with DER encoding</td>
</tr>
<tr>
    <td><CopyableCode code="x5t#S256" /></td>
    <td><code>string</code></td>
    <td>Base64url-encoded SHA-256 thumbprint of the DER encoding of an X.509 certificate (example: wzPVobIrveR1x-PCbjsFGNV-6zn7Rm9KuOWOG4Rk6jE)</td>
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
    <td><a href="#list_identity_provider_signing_keys"><CopyableCode code="list_identity_provider_signing_keys" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all signing key credentials for an identity provider (IdP)</td>
</tr>
<tr>
    <td><a href="#get_identity_provider_signing_key"><CopyableCode code="get_identity_provider_signing_key" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a specific identity provider (IdP) key credential by `kid`</td>
</tr>
<tr>
    <td><a href="#generate_identity_provider_signing_key"><CopyableCode code="generate_identity_provider_signing_key" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-validityYears"><code>validityYears</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Generates a new X.509 certificate for an identity provider (IdP) signing key credential to be used for signing assertions sent to the IdP. IdP signing keys are read-only.<br />&gt; **Note:** To update an IdP with the newly generated key credential, [update your IdP](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProvider/#tag/IdentityProvider/operation/replaceIdentityProvider) using the returned key's `kid` in the [signing credential](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProvider/#tag/IdentityProvider/operation/replaceIdentityProvider!path=protocol/0/credentials/signing/kid&t=request).</td>
</tr>
<tr>
    <td><a href="#clone_identity_provider_key"><CopyableCode code="clone_identity_provider_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-targetIdpId"><code>targetIdpId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Clones an X.509 certificate for an identity provider (IdP) signing key credential from a source IdP to target IdP<br />&gt; **Caution:** Sharing certificates isn't a recommended security practice.<br /><br />&gt; **Note:** If the key is already present in the list of key credentials for the target IdP, you receive a 400 error response.</td>
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
<tr id="parameter-targetIdpId">
    <td><CopyableCode code="targetIdpId" /></td>
    <td><code>string</code></td>
    <td>`id` of the target IdP</td>
</tr>
<tr id="parameter-validityYears">
    <td><CopyableCode code="validityYears" /></td>
    <td><code>integer (int32)</code></td>
    <td>expiry of the IdP key credential</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_identity_provider_signing_keys"
    values={[
        { label: 'list_identity_provider_signing_keys', value: 'list_identity_provider_signing_keys' },
        { label: 'get_identity_provider_signing_key', value: 'get_identity_provider_signing_key' }
    ]}
>
<TabItem value="list_identity_provider_signing_keys">

Lists all signing key credentials for an identity provider (IdP)

```sql
SELECT
created,
e,
expiresAt,
kid,
kty,
lastUpdated,
n,
use,
x5c,
x5t#S256
FROM okta.idps.signing_keys
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_identity_provider_signing_key">

Retrieves a specific identity provider (IdP) key credential by `kid`

```sql
SELECT
created,
e,
expiresAt,
kid,
kty,
lastUpdated,
n,
use,
x5c,
x5t#S256
FROM okta.idps.signing_keys
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="generate_identity_provider_signing_key"
    values={[
        { label: 'generate_identity_provider_signing_key', value: 'generate_identity_provider_signing_key' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="generate_identity_provider_signing_key">

Generates a new X.509 certificate for an identity provider (IdP) signing key credential to be used for signing assertions sent to the IdP. IdP signing keys are read-only.<br />&gt; **Note:** To update an IdP with the newly generated key credential, [update your IdP](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProvider/#tag/IdentityProvider/operation/replaceIdentityProvider) using the returned key's `kid` in the [signing credential](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/IdentityProvider/#tag/IdentityProvider/operation/replaceIdentityProvider!path=protocol/0/credentials/signing/kid&t=request).

```sql
INSERT INTO okta.idps.signing_keys (
validityYears,
subdomain
)
SELECT 
'{{ validityYears }}',
'{{ subdomain }}'
RETURNING
created,
e,
expiresAt,
kid,
kty,
lastUpdated,
n,
use,
x5c,
x5t#S256
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: signing_keys
  props:
    - name: validityYears
      value: integer (int32)
      description: Required parameter for the signing_keys resource.
    - name: subdomain
      value: string
      description: Required parameter for the signing_keys resource.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="clone_identity_provider_key"
    values={[
        { label: 'clone_identity_provider_key', value: 'clone_identity_provider_key' }
    ]}
>
<TabItem value="clone_identity_provider_key">

Clones an X.509 certificate for an identity provider (IdP) signing key credential from a source IdP to target IdP<br />&gt; **Caution:** Sharing certificates isn't a recommended security practice.<br /><br />&gt; **Note:** If the key is already present in the list of key credentials for the target IdP, you receive a 400 error response.

```sql
EXEC okta.idps.signing_keys.clone_identity_provider_key 
@targetIdpId='{{ targetIdpId }}' --required, 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
