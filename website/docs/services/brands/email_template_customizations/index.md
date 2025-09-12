--- 
title: email_template_customizations
hide_title: false
hide_table_of_contents: false
keywords:
  - email_template_customizations
  - brands
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

Creates, updates, deletes, gets or lists an <code>email_template_customizations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>email_template_customizations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.email_template_customizations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_email_customizations"
    values={[
        { label: 'list_email_customizations', value: 'list_email_customizations' },
        { label: 'get_email_customization', value: 'get_email_customization' }
    ]}
>
<TabItem value="list_email_customizations">

Successfully retrieved all email customizations for the specified email template.

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
    <td>A unique identifier for this email customization</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="body" /></td>
    <td><code>string</code></td>
    <td>The HTML body of the email. May contain [variable references](https://velocity.apache.org/engine/1.7/user-guide.html#references).   &lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; Not required if Custom languages for Okta Email Templates is enabled. A `null` body is replaced with a default value from one of the following in priority order:  1. An existing default email customization, if one exists 2. Okta-provided translated content for the specified language, if one exists 3. Okta-provided translated content for the brand locale, if it's set  4. Okta-provided content in English </td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>The UTC time at which this email customization was created.</td>
</tr>
<tr>
    <td><CopyableCode code="isDefault" /></td>
    <td><code>boolean</code></td>
    <td>Whether this is the default customization for the email template. Each customized email template must have exactly one default customization. Defaults to `true` for the first customization and `false` thereafter.</td>
</tr>
<tr>
    <td><CopyableCode code="language" /></td>
    <td><code>string</code></td>
    <td>The language specified as an [IETF BCP 47 language tag](https://datatracker.ietf.org/doc/html/rfc5646)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The UTC time at which this email customization was last updated.</td>
</tr>
<tr>
    <td><CopyableCode code="subject" /></td>
    <td><code>string</code></td>
    <td>The email subject. May contain [variable references](https://velocity.apache.org/engine/1.7/user-guide.html#references).  &lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; Not required if Custom languages for Okta Email Templates is enabled. A `null` subject is replaced with a default value from one of the following in priority order:  1. An existing default email customization, if one exists 2. Okta-provided translated content for the specified language, if one exists 3. Okta-provided translated content for the brand locale, if it's set 4. Okta-provided content in English </td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_email_customization">

Successfully retrieved the email customization.

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
    <td>A unique identifier for this email customization</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="body" /></td>
    <td><code>string</code></td>
    <td>The HTML body of the email. May contain [variable references](https://velocity.apache.org/engine/1.7/user-guide.html#references).   &lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; Not required if Custom languages for Okta Email Templates is enabled. A `null` body is replaced with a default value from one of the following in priority order:  1. An existing default email customization, if one exists 2. Okta-provided translated content for the specified language, if one exists 3. Okta-provided translated content for the brand locale, if it's set  4. Okta-provided content in English </td>
</tr>
<tr>
    <td><CopyableCode code="created" /></td>
    <td><code>string (date-time)</code></td>
    <td>The UTC time at which this email customization was created.</td>
</tr>
<tr>
    <td><CopyableCode code="isDefault" /></td>
    <td><code>boolean</code></td>
    <td>Whether this is the default customization for the email template. Each customized email template must have exactly one default customization. Defaults to `true` for the first customization and `false` thereafter.</td>
</tr>
<tr>
    <td><CopyableCode code="language" /></td>
    <td><code>string</code></td>
    <td>The language specified as an [IETF BCP 47 language tag](https://datatracker.ietf.org/doc/html/rfc5646)</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The UTC time at which this email customization was last updated.</td>
</tr>
<tr>
    <td><CopyableCode code="subject" /></td>
    <td><code>string</code></td>
    <td>The email subject. May contain [variable references](https://velocity.apache.org/engine/1.7/user-guide.html#references).  &lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; Not required if Custom languages for Okta Email Templates is enabled. A `null` subject is replaced with a default value from one of the following in priority order:  1. An existing default email customization, if one exists 2. Okta-provided translated content for the specified language, if one exists 3. Okta-provided translated content for the brand locale, if it's set 4. Okta-provided content in English </td>
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
    <td><a href="#list_email_customizations"><CopyableCode code="list_email_customizations" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td><a href="#parameter-after"><code>after</code></a>, <a href="#parameter-limit"><code>limit</code></a></td>
    <td>Lists all customizations of an email template<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is enabled, all existing customizations are retrieved, including customizations for additional languages. If disabled, only customizations for Okta-supported languages are returned.<br /></td>
</tr>
<tr>
    <td><a href="#get_email_customization"><CopyableCode code="get_email_customization" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves an email customization by its unique identifier<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is disabled, requests to retrieve an additional language customization by ID result in a `404 Not Found` error response.<br /></td>
</tr>
<tr>
    <td><a href="#create_email_customization"><CopyableCode code="create_email_customization" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__subject"><code>data__subject</code></a>, <a href="#parameter-data__body"><code>data__body</code></a></td>
    <td></td>
    <td>Creates a new Email Customization<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is enabled, you can create a customization for any BCP47 language in addition to the Okta-supported languages.<br /></td>
</tr>
<tr>
    <td><a href="#replace_email_customization"><CopyableCode code="replace_email_customization" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a>, <a href="#parameter-data__subject"><code>data__subject</code></a>, <a href="#parameter-data__body"><code>data__body</code></a></td>
    <td></td>
    <td>Replaces an email customization using property values<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is disabled, requests to update a customization for an additional language return a `404 Not Found` error response.<br /></td>
</tr>
<tr>
    <td><a href="#delete_all_customizations"><CopyableCode code="delete_all_customizations" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes all customizations for an email template<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is enabled, all customizations are deleted, including customizations for additional languages. If disabled, only customizations in Okta-supported languages are deleted.<br /></td>
</tr>
<tr>
    <td><a href="#delete_email_customization"><CopyableCode code="delete_email_customization" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes an Email Customization by its unique identifier<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is disabled, deletion of an existing additional language customization by ID doesn't register.<br /></td>
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
<tr id="parameter-after">
    <td><CopyableCode code="after" /></td>
    <td><code>string</code></td>
    <td>The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](https://developer.okta.com/docs/api/#pagination).</td>
</tr>
<tr id="parameter-limit">
    <td><CopyableCode code="limit" /></td>
    <td><code>integer</code></td>
    <td>A limit on the number of objects to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_email_customizations"
    values={[
        { label: 'list_email_customizations', value: 'list_email_customizations' },
        { label: 'get_email_customization', value: 'get_email_customization' }
    ]}
>
<TabItem value="list_email_customizations">

Lists all customizations of an email template<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is enabled, all existing customizations are retrieved, including customizations for additional languages. If disabled, only customizations for Okta-supported languages are returned.<br />

```sql
SELECT
id,
_links,
body,
created,
isDefault,
language,
lastUpdated,
subject
FROM okta.brands.email_template_customizations
WHERE subdomain = '{{ subdomain }}' -- required
AND after = '{{ after }}'
AND limit = '{{ limit }}'
;
```
</TabItem>
<TabItem value="get_email_customization">

Retrieves an email customization by its unique identifier<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is disabled, requests to retrieve an additional language customization by ID result in a `404 Not Found` error response.<br />

```sql
SELECT
id,
_links,
body,
created,
isDefault,
language,
lastUpdated,
subject
FROM okta.brands.email_template_customizations
WHERE subdomain = '{{ subdomain }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_email_customization"
    values={[
        { label: 'create_email_customization', value: 'create_email_customization' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_email_customization">

Creates a new Email Customization<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is enabled, you can create a customization for any BCP47 language in addition to the Okta-supported languages.<br />

```sql
INSERT INTO okta.brands.email_template_customizations (
data__body,
data__subject,
data__isDefault,
data__language,
subdomain
)
SELECT 
'{{ body }}' /* required */,
'{{ subject }}' /* required */,
{{ isDefault }},
'{{ language }}',
'{{ subdomain }}'
RETURNING
id,
_links,
body,
created,
isDefault,
language,
lastUpdated,
subject
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: email_template_customizations
  props:
    - name: subdomain
      value: string
      description: Required parameter for the email_template_customizations resource.
    - name: body
      value: string
      description: >
        The HTML body of the email. May contain [variable references](https://velocity.apache.org/engine/1.7/user-guide.html#references). 

<x-lifecycle class="ea"></x-lifecycle> Not required if Custom languages for Okta Email Templates is enabled. A `null` body is replaced with a default value from one of the following in priority order:

1. An existing default email customization, if one exists
2. Okta-provided translated content for the specified language, if one exists
3. Okta-provided translated content for the brand locale, if it's set 
4. Okta-provided content in English

    - name: subject
      value: string
      description: >
        The email subject. May contain [variable references](https://velocity.apache.org/engine/1.7/user-guide.html#references).

<x-lifecycle class="ea"></x-lifecycle> Not required if Custom languages for Okta Email Templates is enabled. A `null` subject is replaced with a default value from one of the following in priority order:

1. An existing default email customization, if one exists
2. Okta-provided translated content for the specified language, if one exists
3. Okta-provided translated content for the brand locale, if it's set
4. Okta-provided content in English

    - name: isDefault
      value: boolean
      description: >
        Whether this is the default customization for the email template. Each customized email template must have exactly one default customization. Defaults to `true` for the first customization and `false` thereafter.
        
    - name: language
      value: string
      description: >
        The language specified as an [IETF BCP 47 language tag](https://datatracker.ietf.org/doc/html/rfc5646)
        
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_email_customization"
    values={[
        { label: 'replace_email_customization', value: 'replace_email_customization' }
    ]}
>
<TabItem value="replace_email_customization">

Replaces an email customization using property values<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is disabled, requests to update a customization for an additional language return a `404 Not Found` error response.<br />

```sql
REPLACE okta.brands.email_template_customizations
SET 
data__body = '{{ body }}',
data__subject = '{{ subject }}',
data__isDefault = {{ isDefault }},
data__language = '{{ language }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__subject = '{{ subject }}' --required
AND data__body = '{{ body }}' --required
RETURNING
id,
_links,
body,
created,
isDefault,
language,
lastUpdated,
subject
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_all_customizations"
    values={[
        { label: 'delete_all_customizations', value: 'delete_all_customizations' },
        { label: 'delete_email_customization', value: 'delete_email_customization' }
    ]}
>
<TabItem value="delete_all_customizations">

Deletes all customizations for an email template<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is enabled, all customizations are deleted, including customizations for additional languages. If disabled, only customizations in Okta-supported languages are deleted.<br />

```sql
DELETE FROM okta.brands.email_template_customizations
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
<TabItem value="delete_email_customization">

Deletes an Email Customization by its unique identifier<br /><br />&lt;x-lifecycle class="ea"&gt;&lt;/x-lifecycle&gt; If Custom languages for Okta Email Templates is disabled, deletion of an existing additional language customization by ID doesn't register.<br />

```sql
DELETE FROM okta.brands.email_template_customizations
WHERE subdomain = '{{ subdomain }}' --required
;
```
</TabItem>
</Tabs>
