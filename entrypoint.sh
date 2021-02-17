#!/bin/sh

python3 /line_notify.py \
  --token "$INPUT_TOKEN" \
  --message "$INPUT_MESSAGE" \
  --image-url "$INPUT_IMAGE_URL" \
  --sticker-id "$INPUT_STICKER_ID" \
  --package-id "$INPUT_PACKAGE_ID" \
  --image-file "$INPUT_IMAGE_FILE"
