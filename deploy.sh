#!/usr/bin/env sh

# abort script on error
set -e

# buid
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:miguelmontcerv/front-tlal.git main:gh-pages


cd .