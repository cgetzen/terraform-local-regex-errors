variable "regex_strings" {
  type        = map(list(string))
  description = "The map of regexes and strings to match."

  validation {
    condition     = sort(flatten([for r, strings in var.regex_strings : [for string in strings : can(regex(r, string))]]))[0]
    error_message = "The map of regexes and strings do not match."
  }
}

terraform {
  experiments = [variable_validation]
}
