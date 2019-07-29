#!/bin/sh

echo "Refreshing Ebrowse file"
find . -regex ".*\.\(hpp\|cpp\|h\|c\)" \
     -not -regex ".*\(debug\|release\|svn\|git\).*" | ebrowse
