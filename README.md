# GitHub Actions - LINE Notify

[![Actions Status](https://github.com/elgohr/Github-Release-Action/workflows/Test/badge.svg)](https://github.com/louis70109/line-notify-action/actions)

The [line-notify-action](https://github.com/marketplace/actions/line-notify-actions) can send notification messages with LINE by GitHub Action.

Let's get started to use it!

![](https://nijialin.com/images/2021/line-notify-github-actions/result.png)

# Usage

## Text message

```yaml
- name: send default message
  uses: louis70109/line-notify-action@master
  with:
    token: ${{ secrets.LINE_NOTIFY_TOKEN }}
    message: 'LINE Notify test message'
```

## Text message and Sticker

```yaml
- name: send message with sticker
  uses: louis70109/line-notify-action@master
  with:
    token: ${{ secrets.LINE_NOTIFY_TOKEN }}
    sticker_id: 1
    package_id: 1
```

## Text message and Image (by URL)

```yaml
- name: send message with image url
  uses: louis70109/line-notify-action@master
  with:
    token: ${{ secrets.LINE_NOTIFY_TOKEN }}
    message: |
      ${{github.repository}} send image test.
    image_url: 'https://raw.githubusercontent.com/louis70109/line-notify-action/master/tests/image1.png'
```

## Text message and Image (by local file)

```yaml
- name: send message with image file
  uses: louis70109/line-notify-action@master
  with:
    token: ${{ secrets.LINE_NOTIFY_TOKEN }}
    message: |
      ${{github.repository}} send image file.
    image_file: tests/sally.png
```

## Get LINE Notify access_token

- You can refer the [Flask-LINE-notify](https://github.com/louis70109/flask-line-notify) repository One-Click-Deployment to create your testing website on Heroku.
- Will see the `access_token` when you binding LINE Notify.
- Copy `access_token` into GitHub repository ➡️ Secrets ➡️ `LINE_NOTIFY_TOKEN` environment property.
- Then copy the following yaml into your workflow.

```yaml
- name: LINE Notify Message
  uses: louis70109/line-notify-action@v0.1.0
```

# License

MIT
