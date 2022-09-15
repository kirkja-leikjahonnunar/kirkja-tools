#!/bin/bash


# The function's $1 variable is local to the function.
# We just happen to be passing in the script's S1 variable from below. :Þ
# $2 is the search string to parse the "README.md".

MagicDocs ()
{
  readme_path=$1
  directory="$(dirname "${readme_path}")"
  file="$(basename "${readme_path}")"
  target_repo=""


  # Set the repo vaiable to the path based on our search criteria.
  if [ "$2" = "### SFX" ] ||  [ "$2" = "### Music" ]
    then
      #repo="../kirkja-audio"
      target_repo="~/Kirkja/repos/kirkja-audio/"
  fi
  if [ "$2" = "### Model" ] || [ "$2" = "### Rig" ] || [ "$2" = "### Animation" ]
    then
      target_repo="~/Kirkja/repos/kirkja-3d/"
  fi


  # Rake the "README.md" for asset descriptions.
  if grep -q "## Assets" $readme_path
    then
      echo "Found "$2". Targeting "$target_repo

      results=() # A blank array to hold our results.
      delimiter="Client/" # Split via "Client/" string delimeter.
      s=$directory$delimiter # Add one last delimeter to the end. So we know where to stop?

      while [[ $s ]]
        do
          results+=( "${s%%"$delimiter"*}" )
          s=${s#*"$delimiter"}
        done

      #printf '%s\n' "$target_repo${results[1]}"
      # declare -p file_array # To print the entire array.
      target_dir=$target_repo"${results[1]}"
      echo ${target_dir}
      #mkdir -p $target_dir # Using -p will make all the parent directories if it doen't yet exist.
      #mkdir -p ~/Kirkja/repos/kirkja-audio/Worlds/Dagazheim/Contexts/Dagazling/
      mkdir -p ${target_dir}
      echo

      #ln -s $2 $repo/Worlds/Voxeland/Contexts/Voxeling/README.md
      #cd ~/Kirkja/repos/kirkja-audio/Worlds/Voxeland/Contexts/Voxeling/README.md
      #symlinks -cr . # Convert all the slinks to relative.

    # else
    #  echo "No $1 found in $2."
  fi
}

# The $1 here is the parameter passed into the script.
MagicDocs $1 "### SFX"
MagicDocs $1 "### Music"
MagicDocs $1 "### Model"
MagicDocs $1 "### Rig"
MagicDocs $1 "### Animation"



#!/bin/bash
# moon_raker lol.
#Example for bash split string by another string


# How to strip out useful strings.
# directory="$(dirname "${full_path}")"
# file="$(basename "${full_path}")"

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
