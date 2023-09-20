#!/usr/bin/env bash

stack clean
stack build --fast --test # build everything
sed -i 's/Int/!Int/g' lib-A/src/LibA.hs
stack build lib-A --fast # just A!
stack build lib-B --fast --test
sed -i 's/!Int/Int/g' lib-A/src/LibA.hs
