--- 
title: email_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - email_servers
  - email_servers
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

Creates, updates, deletes, gets or lists an <code>email_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>email_servers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.email_servers.email_servers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_email_servers"
    values={[
        { label: 'list_email_servers', value: 'list_email_servers' },
        { label: 'get_email_server', value: 'get_email_server' }
    ]}
>
<TabItem value="list_email_servers">

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
    <td><CopyableCode code="email-servers" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_email_server">

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
    <td><CopyableCode code="email-servers" /></td>
    <td><code>array</code></td>
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
    <td><a href="#list_email_servers"><CopyableCode code="list_email_servers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all the enrolled custom SMTP server configurations</td>
</tr>
<tr>
    <td><a href="#get_email_server"><CopyableCode code="get_email_server" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves the specified custom SMTP server configuration</td>
</tr>
<tr>
    <td><a href="#create_email_server"><CopyableCode code="create_email_server" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__host"><code>data__host</code></a>, <a href="#parameter-data__port"><code>data__port</code></a>, <a href="#parameter-data__username"><code>data__username</code></a>, <a href="#parameter-data__password"><code>data__password</code></a>, <a href="#parameter-data__alias"><code>data__alias</code></a></td>
    <td></td>
    <td>Creates a custom email SMTP server configuration for your org</td>
</tr>
<tr>
    <td><a href="#update_email_server"><CopyableCode code="update_email_server" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates the specified custom SMTP server configuration</td>
</tr>
<tr>
    <td><a href="#delete_email_server"><CopyableCode code="delete_email_server" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes the specified custom SMTP server configuration</td>
</tr>
<tr>
    <td><a href="#test_email_server"><CopyableCode code="test_email_server" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-from"><code>from</code></a>, <a href="#parameter-to"><code>to</code></a></td>
    <td></td>
    <td>Tests the specified custom SMTP Server configuration</td>
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
    defaultValue="list_email_servers"
    values={[
        { label: 'list_email_servers', value: 'list_email_servers' },
        { label: 'get_email_server', value: 'get_email_server' }
    ]}
>
<TabItem value="list_email_servers">

Lists all the enrolled custom SMTP server configurations

```sql
SELECT
email-servers
FROM okta.email_servers.email_servers
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_email_server">

Retrieves the specified custom SMTP server configuration

```sql
SELECT
email-servers
FROM okta.email_servers.email_servers
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_email_server"
    values={[
        { label: 'create_email_server', value: 'create_email_server' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_email_server">

Creates a custom email SMTP server configuration for your org

```sql
INSERT INTO okta.email_servers.email_servers (
data__alias,
data__enabled,
data__host,
data__port,
data__username,
data__password,
subdomain
)
SELECT 
'{{ alias }}' --required,
{{ enabled }},
'{{ host }}' --required,
{{ port }} --required,
'{{ username }}' --required,
'{{ password }}' --required,
'{{ subdomain }}'
RETURNING
id,
alias,
enabled,
host,
port,
username
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: email_servers
  props:
    - name: subdomain
      value: string
      description: Required parameter for the email_servers resource.
    - name: alias
      value: string
      description: >
        Human-readable name for your SMTP server
        
    - name: enabled
      value: boolean
      description: >
        If `true`, routes all email traffic through your SMTP server
        
    - name: host
      value: string
      description: >
        Hostname or IP address of your SMTP server
        
    - name: port
      value: integer
      description: >
        Port number of your SMTP server
        
    - name: username
      value: string
      description: >
        Username used to access your SMTP server
        
    - name: password
      value: string
      description: >
        Password used to access your SMTP server
        
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_email_server"
    values={[
        { label: 'update_email_server', value: 'update_email_server' }
    ]}
>
<TabItem value="update_email_server">

Updates the specified custom SMTP server configuration

```sql
UPDATE okta.email_servers.email_servers
SET 
data__alias = '{{ alias }}',
data__enabled = {{ enabled }},
data__host = '{{ host }}',
data__port = {{ port }},
data__username = '{{ username }}',
data__password = '{{ password }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
alias,
enabled,
host,
port,
username;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_email_server"
    values={[
        { label: 'delete_email_server', value: 'delete_email_server' }
    ]}
>
<TabItem value="delete_email_server">

Deletes the specified custom SMTP server configuration

```sql
DELETE FROM okta.email_servers.email_servers
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="test_email_server"
    values={[
        { label: 'test_email_server', value: 'test_email_server' }
    ]}
>
<TabItem value="test_email_server">

Tests the specified custom SMTP Server configuration

```sql
EXEC okta.email_servers.email_servers.test_email_server 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"from": "{{ from }}", 
"to": "{{ to }}"
}';
```
</TabItem>
</Tabs>
