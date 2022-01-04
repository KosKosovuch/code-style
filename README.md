# Code Style Plugin

## Auto installation:
```shell
$ npx @epls/code-style
```

## CleanUp your project:
After installation, you can remove locally installed
- eslint
- stylelint
- @vue/cli-plugin-eslint

and then replace this line in `package.json`:

```diff
"scripts": {
  ...
- "lint": "vue-cli-service lint",
+ "lint": "npx eslint src/",
  ...
}
```
