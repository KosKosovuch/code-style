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
				'plugin:vue/vue3-recommended',
			],
			rules: {
				indent: 'off',
				'vue/no-v-html': 2
			}
		}
	]
}
