#!/bin/bash


PS3='Please enter your choice: '

options=(~/code/*)

select opt in "${options[@]}"
do
  code $opt
done

