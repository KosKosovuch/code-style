module.exports = {
	branches: ['master'],
	plugins: [
		'@semantic-release/commit-analyzer',
		'@semantic-release/release-notes-generator',
		'@semantic-release/github',
		'@semantic-release/npm',
		[
			'@semantic-release/git',
			{
				'assets': ['package.json'],
				'message': 'chore(release): ${nextRelease.version} [skip ci]\n\n${nextRelease.notes}'
			}
		]
	]
}
