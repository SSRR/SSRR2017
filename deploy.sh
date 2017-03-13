#!/bin/bash
rm -rf out
docpad generate --env static

rm -rf out/vendor/twitter-bootstrap

rm -rf out/pages/*.html

find out -type f -name "*.html" -exec sed -ie 's,"/,"/2017/,g' {} \;
find out -type f -name "*.html" -exec sed -ie 's,url=/,url=/2017/,g' {} \;



find out -name "*.htmle" -exec rm -rf {} \;

cp -r out/* ../ssrr.github.com/2017/

