module.exports = {
  overrides: [
    {
      files: '*.vue',
      parser: 'vue-eslint-parser',
      parserOptions: {
        requireConfigFile: false,
        parser: '@typescript-eslint/parser',
        ecmaFeatures: { 'jsx': true }
      },
      extends: [
        require.resolve('./base'),
        'plugin:vue/recommended'
      ],
      rules: {
        indent: 'off',
        'vue/max-attributes-per-line': [2, { singleline: 1, multiline: 1 }],
        'vue/html-closing-bracket-newline': [2, { singleline: 'never', multiline: 'always' }],
        'vue/attribute-hyphenation': [2, 'always'],
        'vue/require-default-prop': 2,
        'vue/prop-name-casing': [2, 'camelCase'],
        'vue/script-indent': ['error', 2, { 'baseIndent': 1 }],
        'vue/no-v-html': 2
      }
    }
  ]
}
