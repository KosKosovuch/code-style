#!/usr/bin/env bash
shopt -s dotglob

echo '⚙️ Installing dependencies...' &&
npm i -D lint-staged@10 \
    simple-git-hooks \
    @epls/code-style@latest &&

echo '⚙️ Copy templates...' &&
for file in node_modules/@epls/code-style/templates/*
do
  filename=$(basename $file)
  if test -f "./${filename}"; then
      echo "${filename} exists, moving to ${filename}_old" &&
      mv "./${filename}" "./${filename}_old"
  fi
  cp $file "./${filename}"
done

echo '⚙️ Register git hooks...' &&
npx simple-git-hooks

echo '🍻️ Done! Please, check all *_old files if exists!'
