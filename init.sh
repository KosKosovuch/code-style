#!/usr/bin/env bash

# FIRST TIME BASH SCRIPTING :D
# IT WILL REFACTORING
echo '⚙️ Installing dependencies...' &&
npm i -D lint-staged@10 \ simple-git-hooks \ @epls/code-style@latest &&

echo -n "Stylelint (Y/n)?" &&
read -r answerStylelint

if [ "$answerStylelint" != "${answerStylelint#[Yy]}" ];
then
  echo "⚙️ Coping files..." &&
  if test -f "./.stylelintrc.js"; then
    echo "⚙️ .stylelintrc.js exists, moving to .stylelintrc_old.js" &&
    mv "./.stylelintrc.js" "./.stylelintrc_old.js"
  fi

  if test -f "./.stylelintrc"; then
    echo "⚙️ .stylelintrc exists, moving to .stylelintrc_old" &&
    mv "./.stylelintrc" "./.stylelintrc_old"
  fi

  if test -f "./.stylelintrc.json"; then
    echo "⚙️ .stylelintrc.json exists, moving to .stylelintrc_old.json" &&
    mv "./.stylelintrc.json" "./.stylelintrc_old.json"
  fi

  if test -f "./.stylelintrc.yaml"; then
    echo "⚙️ .stylelintrc.yaml exists, moving to .stylelintrc_old.yaml" &&
    mv "./.stylelintrc.yaml" "./.stylelintrc_old.yaml"
  fi

  if test -f "./.stylelintrc.yml"; then
    echo "⚙️ .stylelintrc.yml exists, moving to .stylelintrc_old.yml" &&
    mv "./.stylelintrc.yml" "./.stylelintrc_old.yml"
  fi

  if test -f "./.stylelintrc.yml"; then
    echo "⚙️ .stylelintrc.yml exists, moving to .stylelintrc_old.yml" &&
    mv "./.stylelintrc.yml" "./.stylelintrc_old.yml"
  fi

  if test -f "./stylelint.config.js"; then
    echo "⚙️ stylelint.config.js exists, moving to stylelint.config_old.js" &&
    mv "./stylelint.config.js" "./stylelint.config_old.js"
  fi

  if test -f "./stylelint.config.cjs"; then
    echo "⚙️ stylelint.config.cjs exists, moving to stylelint.config_old.cjs" &&
    mv "./stylelint.config.cjs" "./stylelint.config_old.cjs"
  fi

  if test -f "./.lintstagedrc"; then
    echo "⚙️ .lintstagedrc exists, moving to .lintstagedrc_old" &&
    mv "./.lintstagedrc" "./.lintstagedrc_old"
  fi

  cp "node_modules/@epls/code-style/templates/.lintstagedrc" "./.lintstagedrc"
  cp "node_modules/@epls/code-style/templates/.stylelintrc.js" "./.stylelintrc.js"
else
  if test -f "./.lintstagedrc"; then
    echo "⚙️ .lintstagedrc exists, moving to .lintstagedrc_old" &&
    mv "./.lintstagedrc" "./.lintstagedrc_old"
  fi

  cp "node_modules/@epls/code-style/templates/.lintstagedrc-no-stylelint" "./.lintstagedrc"
fi

echo -n "ESLint (Y/n)?" &&
read -r answer

if [ "$answer" != "${answer#[Yy]}" ];
then
  PS3="Please enter your choice: "
  options=("js" "ts" "vue 2" "vue 3")

  select opt in "${options[@]}"
  do
    case $opt in
      "js")
        if test -f "./.eslintrc.js"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.js exists, moving to .eslintrc_old.js" &&
          mv "./.eslintrc.js" "./.eslintrc_old.js"
        fi

        if test -f "./.eslintrc.json"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.js exists, moving to .eslintrc_old.js" &&
          mv "./.eslintrc.json" "./.eslintrc_old.json"
        fi

        if test -f "./.eslintrc.yaml"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.yaml exists, moving to .eslintrc_old.yaml" &&
          mv "./.eslintrc.yaml" "./.eslintrc_old.yaml"
        fi

        echo '⚙️ Coping files...' &&
        cp "node_modules/@epls/code-style/templates/.eslintrc.js" "./.eslintrc.js" &&
        echo "✔️ Done" &&

        break
        ;;
      "ts")
        if test -f "./.eslintrc.js"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.js exists, moving to .eslintrc_old.js" &&
          mv "./.eslintrc.js" "./.eslintrc_old.js"
        fi

        if test -f "./.eslintrc.json"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.js exists, moving to .eslintrc_old.js" &&
          mv "./.eslintrc.json" "./.eslintrc_old.json"
        fi

        if test -f "./.eslintrc.yaml"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.yaml exists, moving to .eslintrc_old.yaml" &&
          mv "./.eslintrc.yaml" "./.eslintrc_old.yaml"
        fi

        echo '⚙️ Coping files...' &&
        cp "node_modules/@epls/code-style/templates/.eslintrc-ts.js" "./.eslintrc.js" &&
        echo "✔️ Done" &&
        break
        ;;
      "vue 2")
        if test -f "./.eslintrc.js"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.js exists, moving to .eslintrc_old.js" &&
          mv "./.eslintrc.js" "./.eslintrc_old.js"
        fi

        if test -f "./.eslintrc.json"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.js exists, moving to .eslintrc_old.js" &&
          mv "./.eslintrc.json" "./.eslintrc_old.json"
        fi

        if test -f "./.eslintrc.yaml"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.yaml exists, moving to .eslintrc_old.yaml" &&
          mv "./.eslintrc.yaml" "./.eslintrc_old.yaml"
        fi

        echo '⚙️ Coping files...' &&
        cp "node_modules/@epls/code-style/templates/.eslintrc-vue2.js" "./.eslintrc.js"
        echo "✔️ Done" &&
        break
        ;;
      "vue 3")
        if test -f "./.eslintrc.js"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.js exists, moving to .eslintrc_old.js" &&
          mv "./.eslintrc.js" "./.eslintrc_old.js"
        fi

        if test -f "./.eslintrc.json"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.js exists, moving to .eslintrc_old.js" &&
          mv "./.eslintrc.json" "./.eslintrc_old.json"
        fi

        if test -f "./.eslintrc.yaml"; then
          echo '⚙️ Coping files...' &&
          echo "⚙️ .eslintrc.yaml exists, moving to .eslintrc_old.yaml" &&
          mv "./.eslintrc.yaml" "./.eslintrc_old.yaml"
        fi

        echo '⚙️ Coping files...' &&
        cp "node_modules/@epls/code-style/templates/.eslintrc-vue3.js" "./.eslintrc.js"
        echo "✔️ Done" &&
        break
        ;;
      *) echo "⚠️ Invalid option $REPLY";;
    esac
  done
fi

if test -f "./.gitignore"; then
  echo "⚙️ .gitignore exists, moving to .gitignore_old" &&
  mv "./.gitignore" "./.gitignore_old"
fi
cp "node_modules/@epls/code-style/templates/.gitignore" "./.gitignore"

if test -f "./.simple-git-hooks.json"; then
  echo '⚙️ Coping files...' &&
  echo "⚙️ .simple-git-hooks.json exists, moving to .simple-git-hooks_old.json" &&
  mv "./.simple-git-hooks.json" "./.simple-git-hooks_old.json"
fi
cp "node_modules/@epls/code-style/templates/.simple-git-hooks.json" "./.simple-git-hooks.json" &&

echo '⚙️ Register git hooks...' &&
npx simple-git-hooks

echo '🍻️ Done! Please, check all old files if exists!'
