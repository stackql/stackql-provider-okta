--- 
title: themes
hide_title: false
hide_table_of_contents: false
keywords:
  - themes
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

Creates, updates, deletes, gets or lists a <code>themes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>themes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.brands.themes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_brand_themes"
    values={[
        { label: 'list_brand_themes', value: 'list_brand_themes' },
        { label: 'get_brand_theme', value: 'get_brand_theme' }
    ]}
>
<TabItem value="list_brand_themes">

Successfully returned the list of themes

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="backgroundImage" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="emailTemplateTouchPointVariant" /></td>
    <td><code>string</code></td>
    <td>Variant for email templates. You can publish a theme for email templates with different combinations of assets. Variants are preset combinations of those assets.  (default: OKTA_DEFAULT)</td>
</tr>
<tr>
    <td><CopyableCode code="endUserDashboardTouchPointVariant" /></td>
    <td><code>string</code></td>
    <td>Variant for the Okta End-User Dashboard. You can publish a theme for end-user dashboard with different combinations of assets. Variants are preset combinations of those assets.  (default: OKTA_DEFAULT)</td>
</tr>
<tr>
    <td><CopyableCode code="errorPageTouchPointVariant" /></td>
    <td><code>string</code></td>
    <td>Variant for the error page. You can publish a theme for error page with different combinations of assets. Variants are preset combinations of those assets.  (default: OKTA_DEFAULT)</td>
</tr>
<tr>
    <td><CopyableCode code="favicon" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="loadingPageTouchPointVariant" /></td>
    <td><code>string</code></td>
    <td>Variant for the Okta loading page. You can publish a theme for Okta loading page with different combinations of assets. Variants are preset combinations of those assets.  (default: OKTA_DEFAULT)</td>
</tr>
<tr>
    <td><CopyableCode code="logo" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="primaryColorContrastHex" /></td>
    <td><code>string</code></td>
    <td>Primary color contrast hex code</td>
</tr>
<tr>
    <td><CopyableCode code="primaryColorHex" /></td>
    <td><code>string</code></td>
    <td>Primary color hex code</td>
</tr>
<tr>
    <td><CopyableCode code="secondaryColorContrastHex" /></td>
    <td><code>string</code></td>
    <td>Secondary color contrast hex code</td>
</tr>
<tr>
    <td><CopyableCode code="secondaryColorHex" /></td>
    <td><code>string</code></td>
    <td>Secondary color hex code</td>
</tr>
<tr>
    <td><CopyableCode code="signInPageTouchPointVariant" /></td>
    <td><code>string</code></td>
    <td>Variant for the Okta sign-in page. You can publish a theme for sign-in page with different combinations of assets. Variants are preset combinations of those assets. &gt; **Note:**  For a non-`OKTA_DEFAULT` variant, `primaryColorHex` is used for button background color and `primaryColorContrastHex` is used to optimize the opacity for button text. </td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_brand_theme">

Successfully retrieved the theme

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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="backgroundImage" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="emailTemplateTouchPointVariant" /></td>
    <td><code>string</code></td>
    <td>Variant for email templates. You can publish a theme for email templates with different combinations of assets. Variants are preset combinations of those assets.  (default: OKTA_DEFAULT)</td>
</tr>
<tr>
    <td><CopyableCode code="endUserDashboardTouchPointVariant" /></td>
    <td><code>string</code></td>
    <td>Variant for the Okta End-User Dashboard. You can publish a theme for end-user dashboard with different combinations of assets. Variants are preset combinations of those assets.  (default: OKTA_DEFAULT)</td>
</tr>
<tr>
    <td><CopyableCode code="errorPageTouchPointVariant" /></td>
    <td><code>string</code></td>
    <td>Variant for the error page. You can publish a theme for error page with different combinations of assets. Variants are preset combinations of those assets.  (default: OKTA_DEFAULT)</td>
</tr>
<tr>
    <td><CopyableCode code="favicon" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="loadingPageTouchPointVariant" /></td>
    <td><code>string</code></td>
    <td>Variant for the Okta loading page. You can publish a theme for Okta loading page with different combinations of assets. Variants are preset combinations of those assets.  (default: OKTA_DEFAULT)</td>
</tr>
<tr>
    <td><CopyableCode code="logo" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="primaryColorContrastHex" /></td>
    <td><code>string</code></td>
    <td>Primary color contrast hex code</td>
</tr>
<tr>
    <td><CopyableCode code="primaryColorHex" /></td>
    <td><code>string</code></td>
    <td>Primary color hex code</td>
</tr>
<tr>
    <td><CopyableCode code="secondaryColorContrastHex" /></td>
    <td><code>string</code></td>
    <td>Secondary color contrast hex code</td>
</tr>
<tr>
    <td><CopyableCode code="secondaryColorHex" /></td>
    <td><code>string</code></td>
    <td>Secondary color hex code</td>
</tr>
<tr>
    <td><CopyableCode code="signInPageTouchPointVariant" /></td>
    <td><code>string</code></td>
    <td>Variant for the Okta sign-in page. You can publish a theme for sign-in page with different combinations of assets. Variants are preset combinations of those assets. &gt; **Note:**  For a non-`OKTA_DEFAULT` variant, `primaryColorHex` is used for button background color and `primaryColorContrastHex` is used to optimize the opacity for button text. </td>
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
    <td><a href="#list_brand_themes"><CopyableCode code="list_brand_themes" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all the themes in your brand.<br /><br />&gt; **Important:** Currently each org supports only one theme, therefore this contains a single object only.</td>
</tr>
<tr>
    <td><a href="#get_brand_theme"><CopyableCode code="get_brand_theme" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a theme for a brand</td>
</tr>
<tr>
    <td><a href="#replace_brand_theme"><CopyableCode code="replace_brand_theme" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Replaces a theme for a brand</td>
</tr>
<tr>
    <td><a href="#upload_brand_theme_background_image"><CopyableCode code="upload_brand_theme_background_image" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads and replaces the background image for the theme. The file must be in PNG, JPG, or GIF format and less than 2 MB in size.</td>
</tr>
<tr>
    <td><a href="#delete_brand_theme_background_image"><CopyableCode code="delete_brand_theme_background_image" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a theme background image</td>
</tr>
<tr>
    <td><a href="#upload_brand_theme_favicon"><CopyableCode code="upload_brand_theme_favicon" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads and replaces the favicon for the theme</td>
</tr>
<tr>
    <td><a href="#delete_brand_theme_favicon"><CopyableCode code="delete_brand_theme_favicon" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a theme favicon. The theme will use the default Okta favicon.</td>
</tr>
<tr>
    <td><a href="#upload_brand_theme_logo"><CopyableCode code="upload_brand_theme_logo" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Uploads and replaces the logo for the theme. The file must be in PNG, JPG, or GIF format and less than 100kB in size. For best results use landscape orientation, a transparent background, and a minimum size of 300px by 50px to prevent upscaling.</td>
</tr>
<tr>
    <td><a href="#delete_brand_theme_logo"><CopyableCode code="delete_brand_theme_logo" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Deletes a Theme logo. The theme will use the default Okta logo.</td>
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
    defaultValue="list_brand_themes"
    values={[
        { label: 'list_brand_themes', value: 'list_brand_themes' },
        { label: 'get_brand_theme', value: 'get_brand_theme' }
    ]}
>
<TabItem value="list_brand_themes">

Lists all the themes in your brand.<br /><br />&gt; **Important:** Currently each org supports only one theme, therefore this contains a single object only.

```sql
SELECT
id,
_links,
backgroundImage,
emailTemplateTouchPointVariant,
endUserDashboardTouchPointVariant,
errorPageTouchPointVariant,
favicon,
loadingPageTouchPointVariant,
logo,
primaryColorContrastHex,
primaryColorHex,
secondaryColorContrastHex,
secondaryColorHex,
signInPageTouchPointVariant
FROM okta.brands.themes
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_brand_theme">

Retrieves a theme for a brand

```sql
SELECT
id,
_links,
backgroundImage,
emailTemplateTouchPointVariant,
endUserDashboardTouchPointVariant,
errorPageTouchPointVariant,
favicon,
loadingPageTouchPointVariant,
logo,
primaryColorContrastHex,
primaryColorHex,
secondaryColorContrastHex,
secondaryColorHex,
signInPageTouchPointVariant
FROM okta.brands.themes
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="replace_brand_theme"
    values={[
        { label: 'replace_brand_theme', value: 'replace_brand_theme' }
    ]}
>
<TabItem value="replace_brand_theme">

Replaces a theme for a brand

```sql
REPLACE okta.brands.themes
SET 
data__emailTemplateTouchPointVariant = '{{ emailTemplateTouchPointVariant }}',
data__endUserDashboardTouchPointVariant = '{{ endUserDashboardTouchPointVariant }}',
data__errorPageTouchPointVariant = '{{ errorPageTouchPointVariant }}',
data__loadingPageTouchPointVariant = '{{ loadingPageTouchPointVariant }}',
data__primaryColorContrastHex = '{{ primaryColorContrastHex }}',
data__primaryColorHex = '{{ primaryColorHex }}',
data__secondaryColorContrastHex = '{{ secondaryColorContrastHex }}',
data__secondaryColorHex = '{{ secondaryColorHex }}',
data__signInPageTouchPointVariant = '{{ signInPageTouchPointVariant }}'
WHERE 
subdomain = '{{ subdomain }}' --required
AND data__primaryColorHex = '{{ primaryColorHex }}' --required
AND data__secondaryColorHex = '{{ secondaryColorHex }}' --required
AND data__signInPageTouchPointVariant = '{{ signInPageTouchPointVariant }}' --required
AND data__endUserDashboardTouchPointVariant = '{{ endUserDashboardTouchPointVariant }}' --required
AND data__errorPageTouchPointVariant = '{{ errorPageTouchPointVariant }}' --required
AND data__emailTemplateTouchPointVariant = '{{ emailTemplateTouchPointVariant }}' --required
RETURNING
id,
_links,
backgroundImage,
emailTemplateTouchPointVariant,
endUserDashboardTouchPointVariant,
errorPageTouchPointVariant,
favicon,
loadingPageTouchPointVariant,
logo,
primaryColorContrastHex,
primaryColorHex,
secondaryColorContrastHex,
secondaryColorHex,
signInPageTouchPointVariant;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="upload_brand_theme_background_image"
    values={[
        { label: 'upload_brand_theme_background_image', value: 'upload_brand_theme_background_image' },
        { label: 'delete_brand_theme_background_image', value: 'delete_brand_theme_background_image' },
        { label: 'upload_brand_theme_favicon', value: 'upload_brand_theme_favicon' },
        { label: 'delete_brand_theme_favicon', value: 'delete_brand_theme_favicon' },
        { label: 'upload_brand_theme_logo', value: 'upload_brand_theme_logo' },
        { label: 'delete_brand_theme_logo', value: 'delete_brand_theme_logo' }
    ]}
>
<TabItem value="upload_brand_theme_background_image">

Uploads and replaces the background image for the theme. The file must be in PNG, JPG, or GIF format and less than 2 MB in size.

```sql
EXEC okta.brands.themes.upload_brand_theme_background_image 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"file": "{{ file }}"
}';
```
</TabItem>
<TabItem value="delete_brand_theme_background_image">

Deletes a theme background image

```sql
EXEC okta.brands.themes.delete_brand_theme_background_image 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="upload_brand_theme_favicon">

Uploads and replaces the favicon for the theme

```sql
EXEC okta.brands.themes.upload_brand_theme_favicon 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"file": "{{ file }}"
}';
```
</TabItem>
<TabItem value="delete_brand_theme_favicon">

Deletes a theme favicon. The theme will use the default Okta favicon.

```sql
EXEC okta.brands.themes.delete_brand_theme_favicon 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
<TabItem value="upload_brand_theme_logo">

Uploads and replaces the logo for the theme. The file must be in PNG, JPG, or GIF format and less than 100kB in size. For best results use landscape orientation, a transparent background, and a minimum size of 300px by 50px to prevent upscaling.

```sql
EXEC okta.brands.themes.upload_brand_theme_logo 
@subdomain='{{ subdomain }}' --required 
@@json=
'{
"file": "{{ file }}"
}';
```
</TabItem>
<TabItem value="delete_brand_theme_logo">

Deletes a Theme logo. The theme will use the default Okta logo.

```sql
EXEC okta.brands.themes.delete_brand_theme_logo 
@subdomain='{{ subdomain }}' --required;
```
</TabItem>
</Tabs>
