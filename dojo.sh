#!/bin/bash

rm -rf ~/code/Dojo

PS3='Please enter your choice: '
options=("Vanilla" "React.js")
select opt in "${options[@]}"
do
  case $opt in
    "Vanilla")
      git clone https://github.com/VKTRN/Source.git ~/code/Dojo &&
      cd ~/code/Dojo &&
      git checkout Vanilla
      rm -rf .gitignore .git
      code .
      break
      ;;
    "React.js")
      git clone https://github.com/VKTRN/Source.git ~/code/Dojo &&
      cd ~/code/Dojo &&
      git checkout React.js
      rm -rf .gitignore .git
      npm install &&
      code .
      break
      ;;
      *) echo "invalid option $REPLY";;
  esac
done

