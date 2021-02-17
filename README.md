# GitHub Actions - LINE Notify

[![Actions Status](https://github.com/elgohr/Github-Release-Action/workflows/Test/badge.svg)](https://github.com/louis70109/line-notify-action/actions)

# Usage

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
