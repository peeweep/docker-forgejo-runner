#!/usr/bin/env bash

# https://forgejo.org/docs/next/admin/actions/#installation-of-the-oci-image
set -e

mkdir -p data
touch data/.runner
mkdir -p data/.cache

chown -R 1001:1001 data/.runner
chown -R 1001:1001 data/.cache
chmod 775 data/.runner
chmod 775 data/.cache
chmod g+s data/.runner
chmod g+s data/.cache
