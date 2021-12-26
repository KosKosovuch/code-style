module.exports = {
  overrides: [
    {
      files: '*.js',
      parser: '@babel/eslint-parser',
      extends: './.eslintrc-base',
      parserOptions: {
        requireConfigFile: false,
      },
    },
  ],
};
