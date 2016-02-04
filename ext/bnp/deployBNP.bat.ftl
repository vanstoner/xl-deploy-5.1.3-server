@echo off
echo Deploying this version of ERS
cd ${deployed.targetPath}
dir 

if exist ${deployed.executableScript} (
    CALL ${deployed.executableScript}
) else (
    echo Failed to run the executable script [${deployed.executableScript}/${deployed.executableScript}]
    exit 1
)
echo Done
