#!/bin/bash

set -eu

./scripts/download-hugo.sh
./hugo --gc --minify --destination public -v
