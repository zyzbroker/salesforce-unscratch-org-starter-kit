echo -- Command syntax: put.bat {type} {objectName} {yourAlias} --

IF "$1" EQU "class" (
  echo -- deploying $1 $2 to org $3--
  sfdx force:source:deploy -m "ApexClass:$2" -u $3
  echo -- endofdeployment --
)

IF "$1" EQU "object" (
  echo -- deploying $1 $2 to org $3--
  sfdx force:source:deploy -m "CustomObject:$2" -u $3
  echo -- endofdeployment --
)

IF "$1" EQU "aura" (
  echo -- deploying $1 $2 to org $3--
  sfdx force:source:deploy -m "AuraDefinitionBundle:$2" -u $3
  echo -- endofdeployment --
)

IF "$1" EQU "workflow" (
  echo -- deploying $1 $2 to org $3--
  sfdx force:source:deploy -m "Workflow:$2" -u $3
  echo -- endofdeployment --
)
