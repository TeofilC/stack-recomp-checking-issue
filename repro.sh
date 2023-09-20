#!/usr/bin/env bash

stack clean
stack build --fast # build everything
sed -i 's/"someFunc"/"someFunc1"/g' lib-A/src/LibA.hs
stack build lib-A --fast # just A!
stack build lib-B --fast
sed -i 's/"someFunc1"/"someFunc"/g' lib-A/src/LibA.hs
