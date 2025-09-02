--- 
title: csrs
hide_title: false
hide_table_of_contents: false
keywords:
  - csrs
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

Creates, updates, deletes, gets or lists a <code>csrs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>csrs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.csrs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_csrs_for_application"
    values={[
        { label: 'list_csrs_for_application', value: 'list_csrs_for_application' },
        { label: 'get_csr_for_application', value: 'get_csr_for_application' }
    ]}
>
<TabItem value="list_csrs_for_application">

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
    <td> (example: h9zkutaSe7fZX0SwN1GqDApofgD1OW8g2B5l2azha50)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of a CSR object using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2017-03-28T01:11:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="csr" /></td>
    <td><code>string</code></td>
    <td> (example: MIIC4DCCAcgCAQAwcTELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xEzARBgNVBAoMCk9rdGEsIEluYy4xDDAKBgNVBAsMA0RldjESMBAGA1UEAwwJU1AgSXNzdWVyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6m8jHVCr9/tKvvbFN59T4raoCs/78KRm4fSefHQOv1TKLXo4wTLbsqYWRWc5u0sd5orUMQgPQOyj3i6qh13mALY4BzrT057EG1BUNjGg29QgYlnOk2iX890e5BIDMQQEIKFrvOi2V8cLUkLvE2ydRn0VO1Q1frbUkYeStJYC5Api2JQsYRwa+1ZeDH1ITnIzUaugWhW2WB2lSnwZkenne5KtffxMPYVu+IhNRHoKaRA6Z51YNhMJIx17JM2hs/H4Ka3drk6kzDf7ofk/yBpb9yBWyU7CTSQhdoHidxqFprMDaT66W928t3AeOENHBuwn8c2K9WeGG+bELNyQRJVmawIDAQABoCowKAYJKoZIhvcNAQkOMRswGTAXBgNVHREEEDAOggxkZXYub2t0YS5jb20wDQYJKoZIhvcNAQELBQADggEBAA2hsVJRVM+A83X9MekjTnIbt19UNT8wX7wlE9jUKirWsxceLiZBpVGn9qfKhhVIpvdaIRSeoFYS2Kg/m1G6bCvjmZLcrQ5FcEBjZH2NKfNppGVnfC2ugtUkBtCB+UUzOhKhRKJtGugenKbP33zRWWIqnd2waF6Cy8TIuqQVPbwEDN9bCbAs7ND6CFYNguY7KYjWzQOeAR716eqpEEXuPYAS4nx/ty4ylonR8cv+gpq51rvq80A4k/36aoeM0Y6I4w64vhTfuvWW2UYFUD+/+y2FA2CSP4JfctySrf1s525v6fzTFZ3qZbB5OZQtP2b8xYWktMzywsxGKDoVDB4wkH4=)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td> (example: RSA)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_csr_for_application">

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
    <td> (example: h9zkutaSe7fZX0SwN1GqDApofgD1OW8g2B5l2azha50)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available for the current status of a CSR object using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the object was created (example: 2017-03-28T01:11:10.000Z)</td>
</tr>
<tr>
    <td><CopyableCode code="csr" /></td>
    <td><code>string</code></td>
    <td> (example: MIIC4DCCAcgCAQAwcTELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xEzARBgNVBAoMCk9rdGEsIEluYy4xDDAKBgNVBAsMA0RldjESMBAGA1UEAwwJU1AgSXNzdWVyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6m8jHVCr9/tKvvbFN59T4raoCs/78KRm4fSefHQOv1TKLXo4wTLbsqYWRWc5u0sd5orUMQgPQOyj3i6qh13mALY4BzrT057EG1BUNjGg29QgYlnOk2iX890e5BIDMQQEIKFrvOi2V8cLUkLvE2ydRn0VO1Q1frbUkYeStJYC5Api2JQsYRwa+1ZeDH1ITnIzUaugWhW2WB2lSnwZkenne5KtffxMPYVu+IhNRHoKaRA6Z51YNhMJIx17JM2hs/H4Ka3drk6kzDf7ofk/yBpb9yBWyU7CTSQhdoHidxqFprMDaT66W928t3AeOENHBuwn8c2K9WeGG+bELNyQRJVmawIDAQABoCowKAYJKoZIhvcNAQkOMRswGTAXBgNVHREEEDAOggxkZXYub2t0YS5jb20wDQYJKoZIhvcNAQELBQADggEBAA2hsVJRVM+A83X9MekjTnIbt19UNT8wX7wlE9jUKirWsxceLiZBpVGn9qfKhhVIpvdaIRSeoFYS2Kg/m1G6bCvjmZLcrQ5FcEBjZH2NKfNppGVnfC2ugtUkBtCB+UUzOhKhRKJtGugenKbP33zRWWIqnd2waF6Cy8TIuqQVPbwEDN9bCbAs7ND6CFYNguY7KYjWzQOeAR716eqpEEXuPYAS4nx/ty4ylonR8cv+gpq51rvq80A4k/36aoeM0Y6I4w64vhTfuvWW2UYFUD+/+y2FA2CSP4JfctySrf1s525v6fzTFZ3qZbB5OZQtP2b8xYWktMzywsxGKDoVDB4wkH4=)</td>
</tr>
<tr>
    <td><CopyableCode code="kty" /></td>
    <td><code>string</code></td>
    <td> (example: RSA)</td>
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
    <td><a href="#list_csrs_for_application"><CopyableCode code="list_csrs_for_application" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all Certificate Signing Requests for an application</td>
</tr>
<tr>
    <td><a href="#get_csr_for_application"><CopyableCode code="get_csr_for_application" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a Certificate Signing Request (CSR) for the app by `csrId`.<br /><br />Returns a Base64-encoded CSR in DER format if the `Accept` media type is `application/pkcs10` or a CSR object if the `Accept` media type is `application/json`.</td>
</tr>
<tr>
    <td><a href="#revoke_csr_from_application"><CopyableCode code="revoke_csr_from_application" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Revokes a Certificate Signing Request and deletes the key pair from the app</td>
</tr>
<tr>
    <td><a href="#generate_csr_for_application"><CopyableCode code="generate_csr_for_application" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Generates a new key pair and returns the Certificate Signing Request(CSR) for it. The information in a CSR is used by the Certificate Authority (CA) to verify and create your certificate. It also contains the public key that is included in your certificate.<br /><br />Returns CSR in `pkcs#10` format if the `Accept` media type is `application/pkcs10` or a CSR object if the `Accept` media type is `application/json`.<br />&gt; **Note:** The key pair isn't listed in the Key Credentials for the app until it's published.</td>
</tr>
<tr>
    <td><a href="#publish_csr_from_application"><CopyableCode code="publish_csr_from_application" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Publishes a Certificate Signing Request (CSR) for the app with a signed X.509 certificate and adds it into the Application Key Credentials.<br />&gt; **Note:** Publishing a certificate completes the lifecycle of the CSR and it's no longer accessible.</td>
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
    defaultValue="list_csrs_for_application"
    values={[
        { label: 'list_csrs_for_application', value: 'list_csrs_for_application' },
        { label: 'get_csr_for_application', value: 'get_csr_for_application' }
    ]}
>
<TabItem value="list_csrs_for_application">

Lists all Certificate Signing Requests for an application

```sql
SELECT
id,
_links,
created,
csr,
kty
FROM okta.apps.csrs
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_csr_for_application">

Retrieves a Certificate Signing Request (CSR) for the app by `csrId`.<br /><br />Returns a Base64-encoded CSR in DER format if the `Accept` media type is `application/pkcs10` or a CSR object if the `Accept` media type is `application/json`.

```sql
SELECT
id,
_links,
created,
csr,
kty
FROM okta.apps.csrs
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="revoke_csr_from_application"
    values={[
        { label: 'revoke_csr_from_application', value: 'revoke_csr_from_application' }
    ]}
>
<TabItem value="revoke_csr_from_application">

Revokes a Certificate Signing Request and deletes the key pair from the app

```sql
DELETE FROM okta.apps.csrs
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="generate_csr_for_application"
    values={[
        { label: 'generate_csr_for_application', value: 'generate_csr_for_application' },
        { label: 'publish_csr_from_application', value: 'publish_csr_from_application' }
    ]}
>
<TabItem value="generate_csr_for_application">

Generates a new key pair and returns the Certificate Signing Request(CSR) for it. The information in a CSR is used by the Certificate Authority (CA) to verify and create your certificate. It also contains the public key that is included in your certificate.<br /><br />Returns CSR in `pkcs#10` format if the `Accept` media type is `application/pkcs10` or a CSR object if the `Accept` media type is `application/json`.<br />&gt; **Note:** The key pair isn't listed in the Key Credentials for the app until it's published.

```sql
EXEC okta.apps.csrs.generate_csr_for_application 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"subject": "{{ subject }}", 
"subjectAltNames": "{{ subjectAltNames }}"
}';
```
</TabItem>
<TabItem value="publish_csr_from_application">

Publishes a Certificate Signing Request (CSR) for the app with a signed X.509 certificate and adds it into the Application Key Credentials.<br />&gt; **Note:** Publishing a certificate completes the lifecycle of the CSR and it's no longer accessible.

```sql
EXEC okta.apps.csrs.publish_csr_from_application 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
