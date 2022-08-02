# Website Check

GitHub Action that checks a website for a status code.

## Example usage

```yaml
steps:
  - name: Check site for status code
    uses: pavelsaman/website-check@v2.3
    with:
      url: https://startpage.com/
      status_code: 200
      redirect: true
```

`status_code` parameter is optional, it will default to `200` if not set.

---

[![Lint](https://github.com/pavelsaman/website-check/actions/workflows/lint.yml/badge.svg)](https://github.com/pavelsaman/website-check/actions/workflows/lint.yml)
