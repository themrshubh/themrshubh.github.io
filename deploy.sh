#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# copy index.html -> 404.html for Vue to work in history mode with Github Pages
cp index.html 404.html

echo copied!

# if you are deploying to a custom domain
echo 'www.shubhammankar.com' > CNAME

# deploy: push to github
echo Deploying
git init
git add -A
git commit -m 'Deploy'
git push -f git@github.com:themrshubh/themrshubh.github.io.git master:main
cd -