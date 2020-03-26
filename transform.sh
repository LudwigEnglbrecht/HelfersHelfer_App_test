#!/bin/bash

# remove unnecessary things
cd HelfersHelfer
rm -f README.md
rm -rf IntensivStationsParser
cd ..

# List all files containing "window."-function window does not exist in NativeScript, therefore ensure to remove any explicit dependencies on the browser's global window object in your code.
grep -iRl "window." ./


sed -i 's/RouterModule/NativeScriptRouterModule/g' ./src/app/app-routing.module.ts
