#!/bin/bash
set -e
rm -rf ~/code/Dojo
source ~/bin/list_input.sh

FILES=~/code/Source/.git/refs/heads/*
BRANCHES=()

# echo ~/code/Source/.git/refs/heads/*

for entry in $FILES
do
  BRANCHES+=("${entry#*/*/*/*/*/*/*/*/}")
done

list_input "" BRANCHES SELECTED_BRANCH

git clone https://github.com/VKTRN/Source.git ~/code/Dojo &&
cd ~/code/Dojo &&
git checkout $SELECTED_BRANCH
rm -rf .gitignore .git

if test -f "package.json"; then
    npm i
fi

code .

