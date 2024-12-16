#!/bin/bash
set -e

# Configure mc aliases for source and destination
mc alias set main https://c693826.parspack.net RgzARz454gM6tJoK 9OE13WXlGsN6wGoBXjUKRpbu1LDvcxEc --api "s3v4"
mc alias set replica https://c258101.parspack.net hbYnvMw3FxhNWLmS 7iYFbNHkh2mW0g9Gqrx1nuiZD5OMlapP --api "s3v4"

# Start mirroring the buckets
mc mirror --watch main/c693826 replica/c258101
