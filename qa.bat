IF "%1" NEQ "" (
  echo -- run test:%1 %2--
  IF "%2" NEQ "" (
    echo -- run unit test %1 alias=%2
    sfdx force:apex:test:run -n %1 -r human -u %2
  ) ELSE (
    echo -- run unit test %1 yourAlias=dev --
    sfdx force:apex:test:run -n %1 -r human -u dev
  )
) ELSE (
  echo The command syntax: qa classNameWithCommaSeparated {yourAlias}
)