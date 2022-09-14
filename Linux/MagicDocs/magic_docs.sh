#!/bin/bash

# moon_raker
# The $1 here is local; passed in from below.
# $2 = the repo we are parsing for.

MagicDocs ()
{
  # How to strip out useful strings.
  full_path=$1

  directory="$(dirname "${full_path}")"
  file="$(basename "${full_path}")"

  echo $full_name
  echo "[${directory}] [${file}]"

  # The meat!
  repo=""
  if [ "$2" = "### SFX" ] ||  [ "$2" = "### Music" ]
    then
      repo="~/Kirkja/repos/kirkja-audio/"
      echo here
  fi
  # if [ "$2" = "### Music" ]
  #   then
  #     repo="~/Kirkja/repos/kirkja-audio/"
  # fi
  if [ "$2" = "### Mesh" ]
    then
      repo="~/Kirkja/repos/kirkja-3d/"
  fi
  if [ "$2" = "### Model" ]
    then
      repo="~/Kirkja/repos/kirkja-3d/"
  fi

  #     ln -s $2 $repo/Worlds/Voxeland/Contexts/Voxeling/README.md
  #     cd ~/Kirkja/repos/kirkja-audio/Worlds/Voxeland/Contexts/Voxeling/README.md
  #     symlinks -cr . # Convert all the

  # if "$1" != "$poo"
  #   then
  #     repo="~/Kirkja/repos/kirkja-audio/"
  #     echo repo
  # fi
  #
  if grep -q "$1" $2
    then
      echo "Found "$1"."
      echo "at: $repo"
      echo "to: $2"
      ln -s $2 $repo/Worlds/Voxeland/Contexts/Voxeling/README.md
      cd ~/Kirkja/repos/kirkja-audio/Worlds/Voxeland/Contexts/Voxeling/README.md
      symlinks -cr . # Convert all the slinks to relative.

    # else
    #  echo "No $1 found in $2."
  fi
}

# The $1 here is the parameter passed into the script.
MagicDocs $1 "### SFX"
MagicDocs $1 "### Armature"



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
