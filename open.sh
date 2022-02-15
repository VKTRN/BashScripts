#!/bin/bash

set -e
source ~/bin/list_input.sh

projects=(~/code/*)
list_input "Choose a project:" projects selected_project

code $selected_project

