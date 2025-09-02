#!/bin/bash

sed -i 's/[[:space:]]*type: object$//' provider-dev/openapi/src/okta/v00.00.00000/services/mappings.yaml

cat >> provider-dev/openapi/src/okta/v00.00.00000/services/meta.yaml << 'EOF'
definitions:
  base:
    type: object
    description: "Dummy base definition for parser compatibility"
    properties:
      id:
        type: string
  custom:
    type: object
    description: "Dummy custom definition for parser compatibility"
    properties:
      name:
        type: string
EOF

# fix broken links in md docs
sed -i 's|../../../../../images/features/update-ssfeat-flowchart.png|/img/update-ssfeat-flowchart.png|g' provider-dev/openapi/src/okta/v00.00.00000/services/features.yaml

# Directory containing the YAML files
YAML_DIR="provider-dev/openapi/src/okta/v00.00.00000/services"

# Find all YAML files in the directory
find "$YAML_DIR" -type f \( -name "*.yaml" -o -name "*.yml" \) | while read -r file; do
  echo "Processing file: $file"
  
  # Replace links starting with /openapi/okta-management/management/tag/ followed by anything
  sed -i 's|\(/openapi/okta-management/management/tag/[^)]*\)|https://developer.okta.com/docs/api\1|g' "$file"
  
  # Replace links starting with /openapi/okta-management/guides/ followed by anything
  sed -i 's|\(/openapi/okta-management/guides/[^)]*\)|https://developer.okta.com/docs/api\1|g' "$file"
  
  # Replace orphaned anchors (/#something)
  sed -i 's|(/\(#[^)]*\))|https://developer.okta.com/docs/api\1|g' "$file"
  
  # Specific replacements
  # 1. Replace (/oauth2/#okta-admin-management)
  sed -i 's|(/oauth2/#okta-admin-management)|https://developer.okta.com/docs/api/oauth2/#okta-admin-management|g' "$file"
  
  # 2. Replace (../Template)
  sed -i 's|(../Template)|https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Template/|g' "$file"
  
  # 3. Replace (./#tag/UserFactor/operation/resendEnrollFactor)
  sed -i 's|(./#tag/UserFactor/operation/resendEnrollFactor)|https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserFactor/|g' "$file"
  
  # 4. Replace (./#tag/UserFactor/operation/activateFactor)
  sed -i 's|(./#tag/UserFactor/operation/activateFactor)|https://developer.okta.com/docs/api/openapi/okta-management/management/tag/UserFactor/|g' "$file"
  
  echo "Completed processing: $file"
done

echo "All files processed."