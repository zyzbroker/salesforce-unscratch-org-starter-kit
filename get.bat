echo -- Command syntax: get.bat {what} {name} {yourAlias} --

IF "%1" EQU "class" (
  echo --get specific metadata: class:%2 alias:%3---
  sfdx force:source:retrieve -m "ApexClass:%2" -u %3
)

IF "%1" EQU "object" (
  echo --get specific metadata: object:%2 alias:%3---
  sfdx force:source:retrieve -m "CustomObject:%2" -u %3
)

IF "%1" EQU "aura" (
  echo --get specific metadata: aura:%2 alias:%3---
  sfdx force:source:retrieve -m "AuraDefinitionBundle:%2" -u %3
)  
  
IF "%1" EQU "lwc" (
  echo --get specific metadata: aura:%2 alias:%3---
  sfdx force:source:retrieve -m "LightningComponentBundle:%2" -u %3
)
  
IF "%1" EQU "workflow" (
  echo --get specific metadata: workflow:%2 alias:%3---
  sfdx force:source:retrieve -m "Workflow:%2" -u %3
)  