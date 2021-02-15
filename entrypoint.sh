#!/bin/sh

set -eu

export GITHUB="true"

if [ $# -ne 0 ]; then
    python3 /line_notify.py "$@"
fi

python3 /line_notify.py \
  --token "$INPUT_TOKEN" \
  --message "$INPUT_MESSAGE" \
  --image-url "$INPUT_IMAGE_URL" \
  --sticker-id "$INPUT_STICKER_ID" \
  --package-id "$INPUT_PACKAGE_ID"
