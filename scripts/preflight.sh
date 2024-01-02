#!/bin/bash

set -eu

source ./scripts/download-hugo.sh

pushd Orangutan/src/orangutan-preflight
cargo build --release --bin orangutan-preflight
popd
./Orangutan/src/orangutan-preflight/target/release/orangutan-preflight

mv .orangutan "${APP_FOLDER:?}"
