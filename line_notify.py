import argparse
from lotify.client import Client

if __name__ == '__main__':
    lotify = Client()
    parser = argparse.ArgumentParser()
    parser.add_argument("--token", required=True, help="LINE Notify access_token")
    parser.add_argument("--message", required=True, help="LINE Notify message")
    parser.add_argument("--image-url", help="Image url")
    parser.add_argument("--sticker-id", help="LINE sticker id")
    parser.add_argument("--package-id", help="LINE package id")
    args = parser.parse_args()
    if image:
        lotify.send_message_with_image_url(
            message=args.message,
            access_token=args.token,
            image_fullsize=args.image_url,
            image_thumbnail=args.image_url)
    elif sticker_id and package_id:
        lotify.send_message_with_sticker(
            message=args.message,
            access_token=args.token,
            sticker_id=args.sticker_id,
            sticker_package_id=args.package_id
        )
    else:
        lotify.send_message(message=args.message, access_token=args.token)