#!/bin/bash
date +"Date : %d/%m/%Y Time : %H.%M.%S"

REPO_URL="https://github.com/oscar-defelice/DSAcademy-lectures/"
################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo
   echo -e "\033[1mThis script performs the pull of lectures overwriting \033[0m"
   echo -e "\033[1mthe local content. \033[0m"
   echo
   echo -e "\033[1mSyntax\033[0m: sh fullpull.sh -[h] [options]"
   echo
#   echo -e "\033[1margument\033[0m:"
#   echo "argument1  the first argument"
   echo -e "\033[1moptions\033[0m:"
   echo "h         print this help."
#   echo "n         another option"
}

while getopts ":h" option;
do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
done

################################################################################
# Main script                                                                  #
################################################################################


printf "Date: %s\nWe are now pulling overwriting local content from %s\n" "$date" "$REPO_URL"
git stash push --include-untracked
git stash drop
git pull -f
