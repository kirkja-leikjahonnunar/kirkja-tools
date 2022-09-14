#!/bin/bash

# The $1 here is local; passed in from below.
# $2 = the repo we are parsing for.

MagicDocs ()
{
  full_name=$1
  repo=$2

  directory="$(dirname "${full_name}")"
  file="$(basename "${full_name}")"
  echo $full_name
  echo "[${directory}] [${file}]"
  echo $repo

  if [ "$repo" = "kirkja-audio" ]
    then
      echo "Zoinks!"
  fi
  # if ${repo}  "kirkja-audio"
  #   then
  #     echo "Finally!"
  # fi

  #repo=""

  #     ln -s $2 $repo/Worlds/Voxeland/Contexts/Voxeling/README.md
  #     cd ~/Kirkja/repos/kirkja-audio/Worlds/Voxeland/Contexts/Voxeling/README.md
  #     symlinks -cr . # Convert all the

  # if "$1" != "$poo"
  #   then
  #     repo="~/Kirkja/repos/kirkja-audio/"
  #     echo repo
  # fi
  #
  # if grep -q "$1" $2
  #   then
  #     repo=
  #     echo "Found "$1"."
  #     echo "at: $repo"
  #     echo "to: $2"
  #     ln -s $2 $repo/Worlds/Voxeland/Contexts/Voxeling/README.md
  #     cd ~/Kirkja/repos/kirkja-audio/Worlds/Voxeland/Contexts/Voxeling/README.md
  #     symlinks -cr . # Convert all the
  #
  #   # else
  #   #  echo "No $1 found in $2."
  # fi
}

# The $1 here is the parameter passed into the script.
MagicDocs $1 "kirkja-audio"
#MagicDocs "### Music" $1



# Go look in this folder.
# Parse "README.md" for an "# assets" heading.
#if grep -q something file; then echo yes; else echo no; fi

# Find all the "README.md" files.
#find ~/Kirkja/repos/kirkja/Client/ -name "README.md"
#find ~/Kirkja/repos/kirkja-audio/ -name "README.md" -printf "%f %a, %t\\n"
#find ~/Kirkja/repos/kirkja-audio/ -name "README.md" -exec ls -la {} ";"
#find ~/Kirkja/repos/kirkja/Client/Worlds/Voxeland/ -name 'README.md'

#find ~/Kirkja/repos/kirkja-audio/ -name "README.md"




# echo $file_array

#for (file in file_array)
#  echo "one more time!"


# function (parameter) {
#   #statements
# }


# touch


#grep -q "# assets" ~/Kirkja/repos/kirkja/Client/Worlds/README.md && echo "yes" || echo "no"
# echo "EOL"
