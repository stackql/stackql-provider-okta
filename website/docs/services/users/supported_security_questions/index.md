--- 
title: supported_security_questions
hide_title: false
hide_table_of_contents: false
keywords:
  - supported_security_questions
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

Creates, updates, deletes, gets or lists a <code>supported_security_questions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>supported_security_questions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.users.supported_security_questions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_supported_security_questions"
    values={[
        { label: 'list_supported_security_questions', value: 'list_supported_security_questions' }
    ]}
>
<TabItem value="list_supported_security_questions">

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
    <td><CopyableCode code="answer" /></td>
    <td><code>string</code></td>
    <td>Answer to the question</td>
</tr>
<tr>
    <td><CopyableCode code="question" /></td>
    <td><code>string</code></td>
    <td>Unique key for the question (example: disliked_food)</td>
</tr>
<tr>
    <td><CopyableCode code="questionText" /></td>
    <td><code>string</code></td>
    <td>Human-readable text that's displayed to the user (example: What is the food you least liked as a child?)</td>
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
    <td><a href="#list_supported_security_questions"><CopyableCode code="list_supported_security_questions" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all available security questions for the specified user</td>
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
    defaultValue="list_supported_security_questions"
    values={[
        { label: 'list_supported_security_questions', value: 'list_supported_security_questions' }
    ]}
>
<TabItem value="list_supported_security_questions">

Lists all available security questions for the specified user

```sql
SELECT
answer,
question,
questionText
FROM okta.users.supported_security_questions
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>
