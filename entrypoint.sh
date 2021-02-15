#!/bin/sh

if [ $# -ne 0 ]; then
    exec /notify_irc.py "$@"
fi
if [ "$INPUT_TLS" == "true" ]; then
    ARG_TLS="--tls"
else
    ARG_TLS=""
fi
if [ "$INPUT_NOTICE" == "true" ]; then
    ARG_NOTICE="--notice"
else
    ARG_NOTICE=""
fi
exec /line_notify.py \
  --token "$INPUT_TOKEN" \
  --message "$INPUT_MESSAGE" \
  --image-url "$INPUT_IMAGE_URL" \
  --sticker-id "$INPUT_STICKER_ID" \
  --package-id "$INPUT_PACKAGE_ID"
