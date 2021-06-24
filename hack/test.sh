#!/bin/bash

set -e -x -u

go clean -testcache

GO=go
if command -v richgo &> /dev/null
then
    GO=richgo
fi

$GO test -race ./pkg/... -test.v $@

echo UNIT SUCCESS
