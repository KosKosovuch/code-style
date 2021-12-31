module.exports = {
  env: {
    browser: true,
    node: true,
    es6: true
  },
  extends: ['standard'],
  rules: {
    'no-console': process.env.NODE_ENV === 'production' ? 'warn' : 'off',
    'no-debugger': process.env.NODE_ENV === 'production' ? 'error' : 'off',
    'import/prefer-default-export': 0,
    'indent': ['error', 2],
    'comma-dangle': ['error', 'never'],
    'import/no-cycle': 'off',
    'semi': [2, 'never'],
    'quotes': [2, 'single'],
    'object-curly-spacing': [
      2,
      'always',
      { objectsInObjects: false }
    ],
    'prefer-const': ['error', { 'destructuring': 'all' }],
    'no-unused-expressions': 0,
    'no-trailing-spaces': 0,
    'no-multiple-empty-lines': ['error', { 'max': 2 }],
    'no-new': 0,
    'no-prototype-builtins': 0,
    'handle-callback-err': 0,
    'valid-typeof': 2,
    'dot-notation': 2,
    'quote-props': ['error', 'consistent']
  }
}
