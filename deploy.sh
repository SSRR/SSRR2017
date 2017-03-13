#!/bin/bash
rm -rf out
docpad generate --env static

find out -type f -name "*.html" -exec sed -ie 's,"/,"/2017/,g' {} \;

find out -name "*.htmle" -exec rm -rf {} \;

