module.exports = {
  overrides: [
    {
      files: '*.ts',
      parser: '@typescript-eslint/parser',
      plugins: ['@typescript-eslint'],
      extends: [
        require.resolve('./base'),
        'plugin:@typescript-eslint/recommended'
      ],
      rules: {
        '@typescript-eslint/semi': [2, 'never'],
        '@typescript-eslint/indent': [2, 2, { 'SwitchCase': 1 }],
        '@typescript-eslint/type-annotation-spacing': [2, {
          before: false,
          after: true
        }],
        '@typescript-eslint/member-delimiter-style': [2, {
          multiline: {
            delimiter: 'semi',
            requireLast: true
          },
          singleline: {
            delimiter: 'semi',
            requireLast: true
          }
        }]
      }
    }
  ]
}
