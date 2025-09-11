--- 
title: custom_aaguids
hide_title: false
hide_table_of_contents: false
keywords:
  - custom_aaguids
  - authenticators
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

Creates, updates, deletes, gets or lists a <code>custom_aaguids</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>custom_aaguids</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.authenticators.custom_aaguids" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_all_custom_aaguids"
    values={[
        { label: 'list_all_custom_aaguids', value: 'list_all_custom_aaguids' },
        { label: 'get_custom_aaguid', value: 'get_custom_aaguid' }
    ]}
>
<TabItem value="list_all_custom_aaguids">

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The product name associated with the AAGUID</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="aaguid" /></td>
    <td><code>string</code></td>
    <td>A unique 128-bit identifier that's assigned to a specific model of security key or authenticator</td>
</tr>
<tr>
    <td><CopyableCode code="attestationRootCertificates" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="authenticatorCharacteristics" /></td>
    <td><code>object</code></td>
    <td>Contains additional properties about custom AAGUID.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_custom_aaguid">

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The product name associated with the AAGUID</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="aaguid" /></td>
    <td><code>string</code></td>
    <td>A unique 128-bit identifier that's assigned to a specific model of security key or authenticator</td>
</tr>
<tr>
    <td><CopyableCode code="attestationRootCertificates" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="authenticatorCharacteristics" /></td>
    <td><code>object</code></td>
    <td>Contains additional properties about custom AAGUID.</td>
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
    <td><a href="#list_all_custom_aaguids"><CopyableCode code="list_all_custom_aaguids" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all custom Authenticator Attestation Global Unique Identifiers (AAGUIDs) in the org<br /><br />Only custom AAGUIDs that an admin has created are returned.</td>
</tr>
<tr>
    <td><a href="#get_custom_aaguid"><CopyableCode code="get_custom_aaguid" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a custom AAGUID</td>
</tr>
<tr>
    <td><a href="#create_custom_aaguid"><CopyableCode code="create_custom_aaguid" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates a custom AAGUID for the WebAuthn authenticator</td>
</tr>
<tr>
    <td><a href="#update_custom_aaguid"><CopyableCode code="update_custom_aaguid" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates the properties of a custom AAGUID by the `authenticatorId` and `aaguid` ID</td>
</tr>
<tr>
    <td><a href="#replace_custom_aaguid"><CopyableCode code="replace_custom_aaguid" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a custom AAGUID for the specified WebAuthn authenticator</td>
</tr>
<tr>
    <td><a href="#delete_custom_aaguid"><CopyableCode code="delete_custom_aaguid" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a custom AAGUID<br /><br />You can only delete custom AAGUIDs that an admin has created.</td>
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
    defaultValue="list_all_custom_aaguids"
    values={[
        { label: 'list_all_custom_aaguids', value: 'list_all_custom_aaguids' },
        { label: 'get_custom_aaguid', value: 'get_custom_aaguid' }
    ]}
>
<TabItem value="list_all_custom_aaguids">

Lists all custom Authenticator Attestation Global Unique Identifiers (AAGUIDs) in the org<br /><br />Only custom AAGUIDs that an admin has created are returned.

```sql
SELECT
name,
_links,
aaguid,
attestationRootCertificates,
authenticatorCharacteristics
FROM okta.authenticators.custom_aaguids
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_custom_aaguid">

Retrieves a custom AAGUID

```sql
SELECT
name,
_links,
aaguid,
attestationRootCertificates,
authenticatorCharacteristics
FROM okta.authenticators.custom_aaguids
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_custom_aaguid"
    values={[
        { label: 'create_custom_aaguid', value: 'create_custom_aaguid' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_custom_aaguid">

Creates a custom AAGUID for the WebAuthn authenticator

```sql
INSERT INTO okta.authenticators.custom_aaguids (
data__aaguid,
data__attestationRootCertificates,
data__authenticatorCharacteristics,
subdomain
)
SELECT 
'{{ aaguid }}',
'{{ attestationRootCertificates }}',
'{{ authenticatorCharacteristics }}',
'{{ subdomain }}'
RETURNING
name,
_links,
aaguid,
attestationRootCertificates,
authenticatorCharacteristics
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: custom_aaguids
  props:
    - name: subdomain
      value: string
      description: Required parameter for the custom_aaguids resource.
    - name: aaguid
      value: string
      description: >
        An Authenticator Attestation Global Unique Identifier (AAGUID) is a 128-bit identifier indicating the model.
        
    - name: attestationRootCertificates
      value: array
      description: >
        Contains the certificate and information about it
        
    - name: authenticatorCharacteristics
      value: object
      description: >
        Contains additional properties about custom AAGUID.
        
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_custom_aaguid"
    values={[
        { label: 'update_custom_aaguid', value: 'update_custom_aaguid' }
    ]}
>
<TabItem value="update_custom_aaguid">

Updates the properties of a custom AAGUID by the `authenticatorId` and `aaguid` ID

```sql
UPDATE okta.authenticators.custom_aaguids
SET 
data__attestationRootCertificates = '{{ attestationRootCertificates }}',
data__authenticatorCharacteristics = '{{ authenticatorCharacteristics }}',
data__name = '{{ name }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
name,
_links,
aaguid,
attestationRootCertificates,
authenticatorCharacteristics
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_custom_aaguid"
    values={[
        { label: 'replace_custom_aaguid', value: 'replace_custom_aaguid' }
    ]}
>
<TabItem value="replace_custom_aaguid">

Replaces a custom AAGUID for the specified WebAuthn authenticator

```sql
REPLACE okta.authenticators.custom_aaguids
SET 
data__attestationRootCertificates = '{{ attestationRootCertificates }}',
data__authenticatorCharacteristics = '{{ authenticatorCharacteristics }}',
data__name = '{{ name }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
name,
_links,
aaguid,
attestationRootCertificates,
authenticatorCharacteristics
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_custom_aaguid"
    values={[
        { label: 'delete_custom_aaguid', value: 'delete_custom_aaguid' }
    ]}
>
<TabItem value="delete_custom_aaguid">

Deletes a custom AAGUID<br /><br />You can only delete custom AAGUIDs that an admin has created.

```sql
DELETE FROM okta.authenticators.custom_aaguids
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
