--- 
title: agent_pool_updates
hide_title: false
hide_table_of_contents: false
keywords:
  - agent_pool_updates
  - agentpools
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

Creates, updates, deletes, gets or lists an <code>agent_pool_updates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>agent_pool_updates</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.agentpools.agent_pool_updates" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_agent_pools_updates"
    values={[
        { label: 'list_agent_pools_updates', value: 'list_agent_pools_updates' },
        { label: 'get_agent_pools_update_instance', value: 'get_agent_pools_update_instance' }
    ]}
>
<TabItem value="list_agent_pools_updates">

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
    <td>ID of the agent pool update</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the agent pool update (example: region1A.dc)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="agentType" /></td>
    <td><code>string</code></td>
    <td>Agent types that are being monitored</td>
</tr>
<tr>
    <td><CopyableCode code="agents" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if auto-update is enabled for the agent pool</td>
</tr>
<tr>
    <td><CopyableCode code="notifyAdmin" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the admin is notified about the update</td>
</tr>
<tr>
    <td><CopyableCode code="reason" /></td>
    <td><code>string</code></td>
    <td>Reason for the update (example: Update failed.)</td>
</tr>
<tr>
    <td><CopyableCode code="schedule" /></td>
    <td><code>object</code></td>
    <td>The schedule of auto-update configured by the admin</td>
</tr>
<tr>
    <td><CopyableCode code="sortOrder" /></td>
    <td><code>integer</code></td>
    <td>Specifies the sort order</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Overall state for the auto-update job from the admin perspective</td>
</tr>
<tr>
    <td><CopyableCode code="targetVersion" /></td>
    <td><code>string</code></td>
    <td>The agent version to update to (example: 3.20.0)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_agent_pools_update_instance">

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
    <td>ID of the agent pool update</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the agent pool update (example: region1A.dc)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="agentType" /></td>
    <td><code>string</code></td>
    <td>Agent types that are being monitored</td>
</tr>
<tr>
    <td><CopyableCode code="agents" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="enabled" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if auto-update is enabled for the agent pool</td>
</tr>
<tr>
    <td><CopyableCode code="notifyAdmin" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the admin is notified about the update</td>
</tr>
<tr>
    <td><CopyableCode code="reason" /></td>
    <td><code>string</code></td>
    <td>Reason for the update (example: Update failed.)</td>
</tr>
<tr>
    <td><CopyableCode code="schedule" /></td>
    <td><code>object</code></td>
    <td>The schedule of auto-update configured by the admin</td>
</tr>
<tr>
    <td><CopyableCode code="sortOrder" /></td>
    <td><code>integer</code></td>
    <td>Specifies the sort order</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Overall state for the auto-update job from the admin perspective</td>
</tr>
<tr>
    <td><CopyableCode code="targetVersion" /></td>
    <td><code>string</code></td>
    <td>The agent version to update to (example: 3.20.0)</td>
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
    <td><a href="#list_agent_pools_updates"><CopyableCode code="list_agent_pools_updates" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-scheduled"><code>scheduled</code></a></td>
    <td>Lists all agent pool updates</td>
</tr>
<tr>
    <td><a href="#get_agent_pools_update_instance"><CopyableCode code="get_agent_pools_update_instance" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an agent pool update by its `updateId`</td>
</tr>
<tr>
    <td><a href="#create_agent_pools_update"><CopyableCode code="create_agent_pools_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Creates an agent pool update</td>
</tr>
<tr>
    <td><a href="#update_agent_pools_update"><CopyableCode code="update_agent_pools_update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates an agent pool update instance and returns the latest agent pool update</td>
</tr>
<tr>
    <td><a href="#delete_agent_pools_update"><CopyableCode code="delete_agent_pools_update" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes agent pool update</td>
</tr>
<tr>
    <td><a href="#activate_agent_pools_update"><CopyableCode code="activate_agent_pools_update" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Activates a scheduled agent pool update</td>
</tr>
<tr>
    <td><a href="#deactivate_agent_pools_update"><CopyableCode code="deactivate_agent_pools_update" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deactivates scheduled agent pool update</td>
</tr>
<tr>
    <td><a href="#pause_agent_pools_update"><CopyableCode code="pause_agent_pools_update" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Pauses a running or queued agent pool update</td>
</tr>
<tr>
    <td><a href="#resume_agent_pools_update"><CopyableCode code="resume_agent_pools_update" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Resumes a running or queued agent pool update</td>
</tr>
<tr>
    <td><a href="#retry_agent_pools_update"><CopyableCode code="retry_agent_pools_update" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retries an agent pool update if the update is unsuccessful or communication with Okta was interrupted during an agent auto-update</td>
</tr>
<tr>
    <td><a href="#stop_agent_pools_update"><CopyableCode code="stop_agent_pools_update" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Stops an agent pool update</td>
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
<tr id="parameter-scheduled">
    <td><CopyableCode code="scheduled" /></td>
    <td><code>boolean</code></td>
    <td>Return only scheduled or ad-hoc updates. If this parameter isn't provided, Okta returns the entire list of updates.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_agent_pools_updates"
    values={[
        { label: 'list_agent_pools_updates', value: 'list_agent_pools_updates' },
        { label: 'get_agent_pools_update_instance', value: 'get_agent_pools_update_instance' }
    ]}
>
<TabItem value="list_agent_pools_updates">

Lists all agent pool updates

```sql
SELECT
id,
name,
_links,
agentType,
agents,
enabled,
notifyAdmin,
reason,
schedule,
sortOrder,
status,
targetVersion
FROM okta.agentpools.agent_pool_updates
WHERE subdomain = '{{ subdomain }}' -- required
AND scheduled = '{{ scheduled }}';
```
</TabItem>
<TabItem value="get_agent_pools_update_instance">

Retrieves an agent pool update by its `updateId`

```sql
SELECT
id,
name,
_links,
agentType,
agents,
enabled,
notifyAdmin,
reason,
schedule,
sortOrder,
status,
targetVersion
FROM okta.agentpools.agent_pool_updates
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_agent_pools_update"
    values={[
        { label: 'create_agent_pools_update', value: 'create_agent_pools_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_agent_pools_update">

Creates an agent pool update

```sql
INSERT INTO okta.agentpools.agent_pool_updates (
data__agents,
data__agentType,
data__enabled,
data__name,
data__notifyAdmin,
data__reason,
data__schedule,
data__sortOrder,
data__status,
data__targetVersion,
subdomain
)
SELECT 
'{{ agents }}',
'{{ agentType }}',
{{ enabled }},
'{{ name }}',
{{ notifyAdmin }},
'{{ reason }}',
'{{ schedule }}',
{{ sortOrder }},
'{{ status }}',
'{{ targetVersion }}',
'{{ subdomain }}'
RETURNING
id,
name,
_links,
agentType,
agents,
enabled,
notifyAdmin,
reason,
schedule,
sortOrder,
status,
targetVersion
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: agent_pool_updates
  props:
    - name: subdomain
      value: string
      description: Required parameter for the agent_pool_updates resource.
    - name: agents
      value: array
    - name: agentType
      value: string
      description: >
        Agent types that are being monitored
        
      valid_values: ['AD', 'IWA', 'LDAP', 'MFA', 'OPP', 'RUM', 'Radius']
    - name: enabled
      value: boolean
      description: >
        Indicates if auto-update is enabled for the agent pool
        
    - name: name
      value: string
      description: >
        Name of the agent pool update
        
    - name: notifyAdmin
      value: boolean
      description: >
        Indicates if the admin is notified about the update
        
    - name: reason
      value: string
      description: >
        Reason for the update
        
    - name: schedule
      value: object
      description: >
        The schedule of auto-update configured by the admin
        
    - name: sortOrder
      value: integer
      description: >
        Specifies the sort order
        
    - name: status
      value: string
      description: >
        Overall state for the auto-update job from the admin perspective
        
      valid_values: ['Cancelled', 'Failed', 'InProgress', 'Paused', 'Scheduled', 'Success']
    - name: targetVersion
      value: string
      description: >
        The agent version to update to
        
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update_agent_pools_update"
    values={[
        { label: 'update_agent_pools_update', value: 'update_agent_pools_update' }
    ]}
>
<TabItem value="update_agent_pools_update">

Updates an agent pool update instance and returns the latest agent pool update

```sql
UPDATE okta.agentpools.agent_pool_updates
SET 
data__agents = '{{ agents }}',
data__agentType = '{{ agentType }}',
data__enabled = {{ enabled }},
data__name = '{{ name }}',
data__notifyAdmin = {{ notifyAdmin }},
data__reason = '{{ reason }}',
data__schedule = '{{ schedule }}',
data__sortOrder = {{ sortOrder }},
data__status = '{{ status }}',
data__targetVersion = '{{ targetVersion }}'
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
id,
name,
_links,
agentType,
agents,
enabled,
notifyAdmin,
reason,
schedule,
sortOrder,
status,
targetVersion;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_agent_pools_update"
    values={[
        { label: 'delete_agent_pools_update', value: 'delete_agent_pools_update' }
    ]}
>
<TabItem value="delete_agent_pools_update">

Deletes agent pool update

```sql
DELETE FROM okta.agentpools.agent_pool_updates
WHERE subdomain = '{{ subdomain }}' --required;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate_agent_pools_update"
    values={[
        { label: 'activate_agent_pools_update', value: 'activate_agent_pools_update' },
        { label: 'deactivate_agent_pools_update', value: 'deactivate_agent_pools_update' },
        { label: 'pause_agent_pools_update', value: 'pause_agent_pools_update' },
        { label: 'resume_agent_pools_update', value: 'resume_agent_pools_update' },
        { label: 'retry_agent_pools_update', value: 'retry_agent_pools_update' },
        { label: 'stop_agent_pools_update', value: 'stop_agent_pools_update' }
    ]}
>
<TabItem value="activate_agent_pools_update">

Activates a scheduled agent pool update

```sql
EXEC okta.agentpools.agent_pool_updates.activate_agent_pools_update 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="deactivate_agent_pools_update">

Deactivates scheduled agent pool update

```sql
EXEC okta.agentpools.agent_pool_updates.deactivate_agent_pools_update 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="pause_agent_pools_update">

Pauses a running or queued agent pool update

```sql
EXEC okta.agentpools.agent_pool_updates.pause_agent_pools_update 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="resume_agent_pools_update">

Resumes a running or queued agent pool update

```sql
EXEC okta.agentpools.agent_pool_updates.resume_agent_pools_update 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="retry_agent_pools_update">

Retries an agent pool update if the update is unsuccessful or communication with Okta was interrupted during an agent auto-update

```sql
EXEC okta.agentpools.agent_pool_updates.retry_agent_pools_update 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="stop_agent_pools_update">

Stops an agent pool update

```sql
EXEC okta.agentpools.agent_pool_updates.stop_agent_pools_update 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
