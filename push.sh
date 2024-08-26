#!/bin/bash

hugo

COMMIT_MESSAGE=$1

cd public
git add .
git commit -m "${COMMIT_MESSAGE}"
git push

cd ../themes/hugo-profile
git add .
git commit -m "Theme changes for: ${COMMIT_MESSAGE}" 
git push

cd ../..
git add .
git commit -m "Website changes for: ${COMMIT_MESSAGE}$"
git push
