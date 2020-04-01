IF "%1" EQU "all" (

echo "---step1: deploying CLASSES to org %2---"
sfdx force:source:deploy -u %2 -p "force-app/main/default/classes"
echo "--- end of deployment---"

echo "---step2: deploying LWC to org %2---"
sfdx force:source:deploy -u %2 -p "force-app/main/default/lwc"
echo "--- end of deployment---"

echo "---step3: deploying AURA to org %2---"
sfdx force:source:deploy -u %2 -p "force-app/main/default/aura"
echo "--- end of deployment---"

) ELSE (
  echo "---deploying %1 to org %2---"
  sfdx force:source:deploy -u %2 -p "force-app/main/default/%1"
  echo "--- end of deployment---"
)