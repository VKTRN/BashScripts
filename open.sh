#!/bin/bash

set -e
source ~/bin/list_input.sh

FILES=~/code/*
PROJECTS=()

# echo ~/code/Source/.git/refs/heads/*

for entry in $FILES
do
  PROJECTS+=("${entry#*/*/*/*/*}")
done

list_input "Choose a project:" PROJECTS selected_project

code ~/code/$selected_project


