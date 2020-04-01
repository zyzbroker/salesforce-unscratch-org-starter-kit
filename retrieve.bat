IF "%1" NEQ "" then
  echo --retrieving---
  sfdx force:source:retrieve -x manifest/package.xml -u %1
ELSE (
  echo "Command syntax: retrieve.bat {yoruAlias}"
)