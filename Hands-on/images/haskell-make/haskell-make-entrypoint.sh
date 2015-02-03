#!/bin/bash
set -e

# Execute cabal update beforehand
echo "Updating cabal before anything"
cabal update

exec "$@"
