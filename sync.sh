#!/bin/bash

set -e

echo "Job started: $(date)"

/usr/bin/s3cmd sync $PARAMS "$DATA_PATH" "$S3_PATH"

echo "Job finished: $(date)"
