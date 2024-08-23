#!/bin/bash

COMMIT_MESSAGE=$1

cd public
git add .
git commit -m "${COMMIT_MESSAGE}"

cd ../themes/hugo-profile
git add .
git commit -m "Theme changes for: ${COMMIT_MESSAGE}" 

cd ../..
git add .
git commit -m "Website changes for: ${COMMIT_MESSAGE}$"
git push --recurse-submodules=on-demand
