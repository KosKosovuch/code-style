module.exports = {
  overrides: [
    {
      files: '*.ts',
      parser: '@typescript-eslint/parser',
      plugins: ['@typescript-eslint'],
      extends: [
        './.eslintrc-base',
        'plugin:@typescript-eslint/recommended'
      ],
      rules: {
        '@typescript-eslint/semi': ['error'],
        '@typescript-eslint/indent': ['error', 2, { 'SwitchCase': 1 }],
        '@typescript-eslint/type-annotation-spacing': ['error', {
          before: false,
          after: true
        }],
        '@typescript-eslint/member-delimiter-style': ['error', {
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
