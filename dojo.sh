#!/bin/bash
set -e
rm -rf ~/code/Dojo
source ~/bin/list_input.sh

templates=( 'Vanilla' 'React.js' 'Docker')
list_input "Choose a template:" templates selected_template
 
if [ "$selected_template" == "Vanilla" ]; then
      git clone https://github.com/VKTRN/Source.git ~/code/Dojo &&
      cd ~/code/Dojo &&
      git checkout Vanilla
      rm -rf .gitignore .git
      code .
fi

if [ "$selected_template" == "React.js" ]; then
      git clone https://github.com/VKTRN/Source.git ~/code/Dojo &&
      cd ~/code/Dojo &&
      git checkout React.js
      rm -rf .gitignore .git
      npm install &&
      code .
fi

if [ "$selected_template" == "Docker" ]; then
      git clone https://github.com/VKTRN/Source.git ~/code/Dojo &&
      cd ~/code/Dojo &&
      git checkout Docker
      rm -rf .gitignore .git
      npm install &&
      code .
fi

