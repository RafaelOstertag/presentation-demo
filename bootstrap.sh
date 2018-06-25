#!/bin/sh
#
# Bootstrap the Demo. Existing data will be erased.

source scripts/shlib

output 'Boostrap Anath Demo'

scripts/generate-certs
scripts/prepare-docker-images
scripts/prepare-anath
scripts/setup-anath
