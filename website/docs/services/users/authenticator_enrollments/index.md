--- 
title: authenticator_enrollments
hide_title: false
hide_table_of_contents: false
keywords:
  - authenticator_enrollments
  - users
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

Creates, updates, deletes, gets or lists an <code>authenticator_enrollments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>authenticator_enrollments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.authenticator_enrollments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_authenticator_enrollments"
    values={[
        { label: 'list_authenticator_enrollments', value: 'list_authenticator_enrollments' },
        { label: 'get_authenticator_enrollment', value: 'get_authenticator_enrollment' }
    ]}
>
<TabItem value="list_authenticator_enrollments">

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
    <td>The unique identifier of the authenticator enrollment</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The authenticator display name</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the authenticator enrollment was created</td>
</tr>
<tr>
    <td><CopyableCode code="key" /></td>
    <td><code>string</code></td>
    <td>A human-readable string that identifies the authenticator</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>Timestamp when the authenticator enrollment was last updated</td>
</tr>
<tr>
    <td><CopyableCode code="profile" /></td>
    <td><code>object</code></td>
    <td>Defines the authenticator specific parameters</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the enrollment</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of authenticator</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_authenticator_enrollment">

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
    <td><a href="#list_authenticator_enrollments"><CopyableCode code="list_authenticator_enrollments" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all authenticator enrollments of the specified user</td>
</tr>
<tr>
    <td><a href="#get_authenticator_enrollment"><CopyableCode code="get_authenticator_enrollment" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a user's authenticator enrollment by `enrollmentId`</td>
</tr>
<tr>
    <td><a href="#create_authenticator_enrollment"><CopyableCode code="create_authenticator_enrollment" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__authenticatorId"><code>data__authenticatorId</code></a>, <a href="#parameter-data__profile"><code>data__profile</code></a></td>
    <td></td>
    <td>Creates a Phone authenticator enrollment that's automatically activated</td>
</tr>
<tr>
    <td><a href="#create_tac_authenticator_enrollment"><CopyableCode code="create_tac_authenticator_enrollment" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-userId"><code>userId</code></a>, <a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__authenticatorId"><code>data__authenticatorId</code></a></td>
    <td></td>
    <td>Creates an auto-activated Temporary access code (TAC) authenticator enrollment</td>
</tr>
<tr>
    <td><a href="#delete_authenticator_enrollment"><CopyableCode code="delete_authenticator_enrollment" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an existing enrollment for the specified user. The user can enroll the authenticator again.</td>
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
<tr id="parameter-userId">
    <td><CopyableCode code="userId" /></td>
    <td><code>string</code></td>
    <td>ID of an existing Okta user</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_authenticator_enrollments"
    values={[
        { label: 'list_authenticator_enrollments', value: 'list_authenticator_enrollments' },
        { label: 'get_authenticator_enrollment', value: 'get_authenticator_enrollment' }
    ]}
>
<TabItem value="list_authenticator_enrollments">

Lists all authenticator enrollments of the specified user

```sql
SELECT
id,
name,
_links,
created,
key,
lastUpdated,
profile,
status,
type
FROM okta.users.authenticator_enrollments
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
<TabItem value="get_authenticator_enrollment">

Retrieves a user's authenticator enrollment by `enrollmentId`

```sql
SELECT
*
FROM okta.users.authenticator_enrollments
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_authenticator_enrollment"
    values={[
        { label: 'create_authenticator_enrollment', value: 'create_authenticator_enrollment' },
        { label: 'create_tac_authenticator_enrollment', value: 'create_tac_authenticator_enrollment' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_authenticator_enrollment">

Creates a Phone authenticator enrollment that's automatically activated

```sql
INSERT INTO okta.users.authenticator_enrollments (
data__authenticatorId,
data__profile,
userId,
subdomain
)
SELECT 
'{{ authenticatorId }}' /* required */,
'{{ profile }}' /* required */,
'{{ userId }}',
'{{ subdomain }}'
;
```
</TabItem>
<TabItem value="create_tac_authenticator_enrollment">

Creates an auto-activated Temporary access code (TAC) authenticator enrollment

```sql
INSERT INTO okta.users.authenticator_enrollments (
data__authenticatorId,
data__profile,
userId,
subdomain
)
SELECT 
'{{ authenticatorId }}' /* required */,
'{{ profile }}',
'{{ userId }}',
'{{ subdomain }}'
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: authenticator_enrollments
  props:
    - name: userId
      value: string
      description: Required parameter for the authenticator_enrollments resource.
    - name: subdomain
      value: string
      description: Required parameter for the authenticator_enrollments resource.
    - name: authenticatorId
      value: string
      description: >
        Unique identifier of the TAC authenticator
        
    - name: profile
      value: object
      description: >
        Defines the authenticator specific parameters
        
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_authenticator_enrollment"
    values={[
        { label: 'delete_authenticator_enrollment', value: 'delete_authenticator_enrollment' }
    ]}
>
<TabItem value="delete_authenticator_enrollment">

Deletes an existing enrollment for the specified user. The user can enroll the authenticator again.

```sql
DELETE FROM okta.users.authenticator_enrollments
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
