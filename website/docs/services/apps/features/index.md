--- 
title: features
hide_title: false
hide_table_of_contents: false
keywords:
  - features
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

Creates, updates, deletes, gets or lists a <code>features</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>features</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="okta.apps.features" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_features_for_application"
    values={[
        { label: 'list_features_for_application', value: 'list_features_for_application' },
        { label: 'get_feature_for_application', value: 'get_feature_for_application' }
    ]}
>
<TabItem value="list_features_for_application">

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
    <td>Key name of the feature  | Feature name | Description   | | --------- | ------------- | | USER_PROVISIONING  | User profiles are pushed from Okta to the third-party app. Represents the **To App** provisioning feature setting in the Admin Console. | | INBOUND_PROVISIONING | User profiles are imported from the third-party app into Okta. This feature represents the **To Okta** provisioning feature setting in the Admin Console. |  Select the feature:  (example: USER_PROVISIONING)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the feature (example: Settings for provisioning users from Okta to a downstream app)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Setting status (default: DISABLED, example: ENABLED)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_feature_for_application">

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
    <td>Key name of the feature  | Feature name | Description   | | --------- | ------------- | | USER_PROVISIONING  | User profiles are pushed from Okta to the third-party app. Represents the **To App** provisioning feature setting in the Admin Console. | | INBOUND_PROVISIONING | User profiles are imported from the third-party app into Okta. This feature represents the **To Okta** provisioning feature setting in the Admin Console. |  Select the feature:  (example: USER_PROVISIONING)</td>
</tr>
<tr>
    <td><CopyableCode code="_links" /></td>
    <td><code>object</code></td>
    <td>Specifies link relations (see [Web Linking](https://www.rfc-editor.org/rfc/rfc8288)) available using the [JSON Hypertext Application Language](https://datatracker.ietf.org/doc/html/draft-kelly-json-hal-06) specification. This object is used for dynamic discovery of related resources and lifecycle operations.</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the feature (example: Settings for provisioning users from Okta to a downstream app)</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Setting status (default: DISABLED, example: ENABLED)</td>
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
    <td><a href="#list_features_for_application"><CopyableCode code="list_features_for_application" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Lists all features for an app<br />&gt; **Note:** This request returns an error if provisioning isn't enabled for the app.<br />&gt; To set up provisioning, see [Update the default provisioning connection](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/ApplicationConnections/#tag/ApplicationConnections/operation/updateDefaultProvisioningConnectionForApplication).<br /></td>
</tr>
<tr>
    <td><a href="#get_feature_for_application"><CopyableCode code="get_feature_for_application" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Retrieves a Feature object for an app</td>
</tr>
<tr>
    <td><a href="#update_feature_for_application"><CopyableCode code="update_feature_for_application" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subdomain"><code>subdomain</code></a></td>
    <td></td>
    <td>Updates a Feature object for an app<br />&gt; **Note:** This endpoint supports partial updates.<br /></td>
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
    defaultValue="list_features_for_application"
    values={[
        { label: 'list_features_for_application', value: 'list_features_for_application' },
        { label: 'get_feature_for_application', value: 'get_feature_for_application' }
    ]}
>
<TabItem value="list_features_for_application">

Lists all features for an app<br />&gt; **Note:** This request returns an error if provisioning isn't enabled for the app.<br />&gt; To set up provisioning, see [Update the default provisioning connection](https://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/apihttps://developer.okta.com/docs/api/openapi/okta-management/management/tag/ApplicationConnections/#tag/ApplicationConnections/operation/updateDefaultProvisioningConnectionForApplication).<br />

```sql
SELECT
name,
_links,
description,
status
FROM okta.apps.features
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
<TabItem value="get_feature_for_application">

Retrieves a Feature object for an app

```sql
SELECT
name,
_links,
description,
status
FROM okta.apps.features
WHERE subdomain = '{{ subdomain }}' -- required;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update_feature_for_application"
    values={[
        { label: 'update_feature_for_application', value: 'update_feature_for_application' }
    ]}
>
<TabItem value="update_feature_for_application">

Updates a Feature object for an app<br />&gt; **Note:** This endpoint supports partial updates.<br />

```sql
REPLACE okta.apps.features
SET 
-- No updatable properties
WHERE 
subdomain = '{{ subdomain }}' --required
RETURNING
name,
_links,
description,
status;
```
</TabItem>
</Tabs>
