#!/usr/bin/env node
const sh = require('shelljs');
const inquirer = require('inquirer');
const fs = require('fs');

sh.echo('💿 Installing dependencies...');
const deps = shell.exec('npm i -D lint-staged@10 simple-git-hooks @epls/code-style@latest', { async:true });
deps.stdout.on('data', depsCallback);

function depsCallback() {
	const eslintRules = ['js', 'ts', 'vue2', 'vue3', 'none'];
	const path = 'node_modules/@epls/code-style/templates'

	inquirer
		.prompt([
			{
				type: 'confirm',
				name: 'stylelint',
				message: '🔧 Do you want to add Stylelint?'
			},
			{
				type: 'list',
				name: 'eslint',
				message: '🔨 Choose the ESLint for project?',
				choices: eslintRules
			},
			{
				type: 'confirm',
				name: 'gitignore',
				message: '🔧 Do you want to add .gitignore file?'
			},
		])
		.then(({ stylelint, eslint, gitignore }) => {
			fs.readdir('./', function (err, files) {
				if (err) {
					console.error(err);
					return;
				}

				files.forEach((name) => {
					// rename stylelintrc
					if (stylelint && name.includes('stylelint') && !name.includes('stylelint-config') && stylelint) {
						sh.mv(`./${name}`, `./${name}_old`)
					}

					// rename eslintrc
					if (name.startsWith('.eslintrc') && eslint !== 'none') {
						sh.mv(`./${name}`, `./${name}_old`)
					}

					// rename gitignore
					if (name.includes('gitignore') && gitignore) {
						sh.mv(`./${name}`, `./${name}_old`);
					}

					// rename lintstagedrc
					if (name.includes('lintstagedrc')) {
						sh.mv(`./${name}`, `./${name}_old`);
					}

					// rename .simple-git-hooks
					if (name.includes('simple-git-hooks')) {
						sh.mv(`./${name}`, `./${name}_old`);
					}
				})

				// stylelintrc
				if (stylelint) {
					fs.copyFileSync(`${path}/.stylelintrc.js`, './.stylelintrc.js');

					sh.echo('✅ Stylelint added');
				}

				// eslintrc
				if (eslint !== 'none') {
					const dest = './.eslintrc.js';

					switch (eslint) {
						case 'js': {
							fs.copyFileSync(`${path}/.eslintrc-js.js`, dest);
							break;
						}
						case 'ts': {
							fs.copyFileSync(`${path}/.eslintrc-ts.js`, dest);
							break;
						}
						case 'vue2': {
							fs.copyFileSync(`${path}/.eslintrc-vue2.js`, dest);
							break;
						}
						case 'vue3': {
							fs.copyFileSync(`${path}/.eslintrc-vue3.js`, dest);
							break;
						}
						default: {
							break;
						}
					}

					sh.echo('✅ ESLint added');
				}

				// gitignore
				if (gitignore) {
					fs.copyFileSync(`${path}/.gitignore.txt`, './.gitignore');

					sh.echo('✅ .gitignore added');
				}

				// .lintstagedrc
				if (eslint !== 'none' && stylelint) {
					fs.copyFileSync(`${path}/.lintstagedrc`, './.lintstagedrc');

					sh.echo('✅ .lintstagedrc added');
				} else if (eslint !== 'none' && !stylelint) {
					fs.copyFileSync(`${path}/.lintstagedrc-no-stylelint`, './.lintstagedrc');

					sh.echo('✅ .lintstagedrc added');
				}

				// .simple-git-hooks
				fs.copyFileSync(`${path}/.simple-git-hooks.js`, './.simple-git-hooks.js');
				sh.echo('✅ .simple-git-hooks.js added');
				shell.exec('git config core.hooksPath .git/hooks/ && rm -rf .git/hooks && npx simple-git-hooks');

				// DONE
				shell.echo('🍻️ Done! Please, check all old files if exists!');
			});
		});
}
