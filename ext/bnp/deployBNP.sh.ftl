#!/bin/sh
echo "Deploying this version of ERS"
cd ${deployed.targetPath}
ls -lrt
if [[ -f ${deployed.executableScript} ]]; then
  . ${deployed.executableScript}
  if [[ $? -ne 0 ]]; then
    echo "Script failed during execution - please see previous error messages"
    exit 1
  fi
else
  echo "Failed to run the executable script [${deployed.executableScript}/${deployed.executableScript}]"
  echo "Either skip this step or fix the deployment component"
  exit 1
fi
echo "Done"
