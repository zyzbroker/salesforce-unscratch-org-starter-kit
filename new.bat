echo -- The correct command syntax: new.bat {type} {objectName}
echo -- type: aura, lwc, class

IF "%1" EQU "aura" (
  echo --Create lightning aura component--
  sfdx force:lightning:component:create -n %2 -d force-app/main/default/aura
  echo EndOfCreate
)

IF "%1" EQU "lwc" (
  echo Create lightning web component
  sfdx force:lightning:component:create -n %2 --type lwc -d force-app/main/default/lwc
  echo EndOfCreate
)

IF "%1" EQU "class" (
  echo Create Apex class
  sfdx force:apex:class:create -n %2 -t DefaultApexClass -d force-app/main/default/classes
  echo EndOfCreate
)