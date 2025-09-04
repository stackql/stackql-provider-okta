--- 
title: email_domains
hide_title: false
hide_table_of_contents: false
keywords:
  - email_domains
  - email_domains
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

Creates, updates, deletes, gets or lists an <code>email_domains</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>email_domains</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.email_domains.email_domains" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_email_domains"
    values={[
        { label: 'list_email_domains', value: 'list_email_domains' },
        { label: 'get_email_domain', value: 'get_email_domain' }
    ]}
>
<TabItem value="list_email_domains">

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
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="userName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_email_domain">

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
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="userName" /></td>
    <td><code>string</code></td>
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
    <td><a href="#list_email_domains"><CopyableCode code="list_email_domains" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all the Email Domains in your org</td>
</tr>
<tr>
    <td><a href="#get_email_domain"><CopyableCode code="get_email_domain" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an Email Domain by `emailDomainId`</td>
</tr>
<tr>
    <td><a href="#create_email_domain"><CopyableCode code="create_email_domain" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__displayName"><code>data__displayName</code></a>, <a href="#parameter-data__userName"><code>data__userName</code></a></td>
    <td></td>
    <td>Creates an Email Domain in your org</td>
</tr>
<tr>
    <td><a href="#replace_email_domain"><CopyableCode code="replace_email_domain" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__displayName"><code>data__displayName</code></a>, <a href="#parameter-data__userName"><code>data__userName</code></a></td>
    <td></td>
    <td>Replaces associated username and sender display name by `emailDomainId`</td>
</tr>
<tr>
    <td><a href="#delete_email_domain"><CopyableCode code="delete_email_domain" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an Email Domain by `emailDomainId`</td>
</tr>
<tr>
    <td><a href="#verify_email_domain"><CopyableCode code="verify_email_domain" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Verifies an Email Domain by `emailDomainId`</td>
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
    defaultValue="list_email_domains"
    values={[
        { label: 'list_email_domains', value: 'list_email_domains' },
        { label: 'get_email_domain', value: 'get_email_domain' }
    ]}
>
<TabItem value="list_email_domains">

Lists all the Email Domains in your org

```sql
SELECT
displayName,
userName
FROM okta.email_domains.email_domains
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_email_domain">

Retrieves an Email Domain by `emailDomainId`

```sql
SELECT
displayName,
userName
FROM okta.email_domains.email_domains
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_email_domain"
    values={[
        { label: 'create_email_domain', value: 'create_email_domain' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_email_domain">

Creates an Email Domain in your org

```sql
INSERT INTO okta.email_domains.email_domains (
data__displayName,
data__userName,
subdomain
)
SELECT 
'{{ displayName }}' --required,
'{{ userName }}' --required,
'{{ subdomain }}'
RETURNING
displayName,
userName
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: email_domains
  props:
    - name: subdomain
      value: string
      description: Required parameter for the email_domains resource.
    - name: displayName
      value: string
    - name: userName
      value: string
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_email_domain"
    values={[
        { label: 'replace_email_domain', value: 'replace_email_domain' }
    ]}
>
<TabItem value="replace_email_domain">

Replaces associated username and sender display name by `emailDomainId`

```sql
REPLACE okta.email_domains.email_domains
SET 
data__displayName = '{{ displayName }}',
data__userName = '{{ userName }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__displayName = '{{ displayName }}' --required
AND data__userName = '{{ userName }}' --required
RETURNING
displayName,
userName;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_email_domain"
    values={[
        { label: 'delete_email_domain', value: 'delete_email_domain' }
    ]}
>
<TabItem value="delete_email_domain">

Deletes an Email Domain by `emailDomainId`

```sql
DELETE FROM okta.email_domains.email_domains
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="verify_email_domain"
    values={[
        { label: 'verify_email_domain', value: 'verify_email_domain' }
    ]}
>
<TabItem value="verify_email_domain">

Verifies an Email Domain by `emailDomainId`

```sql
EXEC okta.email_domains.email_domains.verify_email_domain 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
