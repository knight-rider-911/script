#!/usr/bin/env bash

echo "Welcome to script change source.list"

select option in "Use local repositories" "Use global repositories" "Exit"
do  case $option in
    "Use local repositories")
        sudo rm -f /etc/apt/sources.list
	      sudo cp /etc/apt/list.local /etc/apt/sources.list
	      sudo cat /etc/apt/sources.list
	      sudo apt update
	      break
	      ;;
    "Use global repositories")
        sudo rm -f /etc/apt/sources.list
        sudo cp /etc/apt/list.global /etc/apt/sources.list
        sudo cat /etc/apt/sources.list
        sudo apt update
        break
		    ;;
	 "Exit")
		    break ;;
	 *) echo Wrong option ;;
      esac
done