# Regex Error Checking module

![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/cgetzen/terraform-local-regex-errors)


Terraform module that provides error checking for regular expressions.

## Usage

```hcl
module "ensure_internet_gateways" {
  source = "cgetzen/regex-errors/local"
  regex_strings = {"igw-[a-z]*": ["igw-hello", "nat-goodbye"]}
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| regex\_strings | The map of regexes and strings to match | `map(list(string))` | `` | yes |
