# GitHub

This folder holds tools for working with GitHub that are worth keeping around.
It is not a `.github` folder, so GitHub itself ignores it. Nothing in here is
active until you copy or link it into a repository that should use it.

## What is in here

- `pull_request_template.md`: a short pull request template. It asks for what
  changed, why, how to verify it, and what the risk is, and it caps the body at
  200 words.

## How to use the pull request template

GitHub reads the template from a fixed place in the repository that should use
it. Copy the file into that repository:

```
cp github/pull_request_template.md /path/to/repo/.github/pull_request_template.md
```

Copy rather than link, because GitHub reads the file from the repository on the
server, and a symlink to this repository does not exist there.
