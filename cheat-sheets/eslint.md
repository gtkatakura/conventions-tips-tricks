Runs eslint on the files that have been changed since the last commit.

```bash
eslint $(git diff --name-only --relative HEAD | xargs)
```

Fixes the files that have been changed since the last commit.

```bash
eslint --fix $(git diff --name-only --relative HEAD | xargs)
```
