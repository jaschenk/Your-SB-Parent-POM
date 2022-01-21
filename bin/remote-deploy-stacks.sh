#!/bin/bash
# ##############################################################################
# Your-SB-Parent-POM/bin/remote-deploy-stacks.sh
# Script to spin through stacks directory and perform a Maven deploy on each.
#
# ##############################################################################
SETTINGS=~/.m2/settings.xml
for dir in $(find stacks -type d); do
  if [ "${dir}" != "stacks" ]
    then
      echo "Installing Stack: ${dir} from $PWD"
      mvn --settings ${SETTINGS} -Dmaven.wagon.http.ssl.insecure=true -f ./${dir}/pom.xml deploy
  fi
done
