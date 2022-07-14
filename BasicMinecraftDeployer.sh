#!/bin/bash

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    sys_mc.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mathmart <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/14 11:27:48 by mathmart          #+#    #+#              #
#    Updated: 2022/07/14 11:27:53 by mathmart         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

verifRoot() {
  if [[ $EUID -ne 0 ]]
  then
    printf "Please run it as root not with %s\n" "$LOGNAME";
    exit 1;
  fi
};

showVersion() {
    printf "which version of java the server requires
Minecraft < 1.11 =           \033[1;32mjava 8\033[1;0m
Minecraft >= 1.12 to <= 16.4 \033[1;32mjava 11\033[1;0m
Minecraft 1.16.5 =           \033[1;32mjava 16\033[1;0m
Minecraft >= 1.17.1 =        \033[1;32mjava 17\033[1;0m\n";
  printf "Wrote only the example version for java 8 : \033[1;32m8\033[1;0m\n"
}

version() {
  local version;
  showVersion ;
  read -r version
  if [[ "$version" = 8 ]]
    then
      apt install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common -y;
      wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
      add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
      apt-get update && apt-get upgrade -y
      apt install adoptopenjdk-8-hotspot -y
  elif [[ "$version" = 11 ]]
    then
      apt install -y openjdk-11-jdk
  elif [[ "$version" = 16 ]]
    then
      apt install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common -y;
      wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
      add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
      apt-get update && apt-get upgrade -y
      apt install adoptopenjdk-16-hotspot -y
  elif [[ "$version" = 17 ]]
    then
      apt install -y openjdk-17-jdk
  else
    printf "\e033[1;31m Incorrect version\n";
    exit 1;
  fi
};

install() {
  apt-get update -y;
  apt-get upgrade -y;
  version;
  apt-get install -y git zsh wget curl screen gcc ufw;
};

createUser() {
	printf "\033[1;34mEnter the name of the new user\033[1;0m\n"
	read -r name
	if [[ -z "$name" ]]
	then
		printf "\033[1;31mEmpty username !\n";
	else
		adduser "$name"
	fi
}

verifRoot;
install;
createUser;

printf "\033[1;32mYou can now log in with your new user. -> %s\033[1;0m\n" "$name";