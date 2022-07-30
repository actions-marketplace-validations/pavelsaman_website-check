# Website Check

GitHub Action that checks a website for a status code.

## Example usage

```yaml
steps:
  - name: Check site for status code
    uses: pavelsaman/website-check@v2
    with:
      url: https://startpage.com/
      status_code: 200
```

`status_code` parameter is optional, it will default to `200` if not set.
