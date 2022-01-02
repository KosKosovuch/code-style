module.exports = {
  overrides: [
    {
      files: '*.js',
      parser: '@babel/eslint-parser',
      extends: require.resolve('./base'),
      parserOptions: {
        requireConfigFile: false
      }
    }
  ]
}
