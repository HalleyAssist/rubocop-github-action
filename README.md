# rubocop-github-action

GitHub Action for Rubocop

## Usage

Add the following code to `.github/workflows/main.yml` file.

```yaml
name: Rubocop
on: push

jobs:
  rubocop:
      name: Rubocop
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v2
        - uses: prozsolt/rubocop-github-action@master
```