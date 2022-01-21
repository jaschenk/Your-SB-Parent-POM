#!/bin/bash
# ##############################################################################
# Your-SB-Parent-POM/bin/locally-install-stacks.sh
# Script to spin through stacks directory and perform a Maven install on each.
#
# ##############################################################################
for dir in $(find stacks -type d); do
  if [ "${dir}" != "stacks" ]
    then
      echo "Installing Stack: ${dir} from $PWD"
      mvn -f ./${dir}/pom.xml install
  fi
done
