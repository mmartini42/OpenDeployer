# <h1 align="center">📋 OpenDeployer 📃</h1>

<p align="center">
  <a href="https://www.apple.com/fr/macos/" target="_blank">
    <img alt="platform: osx 12.4" src="https://img.shields.io/badge/platform-OSX%20v12.4-orange?style=flat-square"/>
  </a>
  <a href="https://fr.wikipedia.org/wiki/MacOS_Mojave" target="_blank">
    <img alt="platform: osx 10.14.16" src="https://img.shields.io/badge/platform-osx%20v10.14.x-red?style=flat-square"/>
  </a>
  <a href="https://www.debian.org/releases/bullseye/" target="_blank">
    <img alt="platform: debian bullseye" src="https://img.shields.io/badge/platform-debian%2011-blue?style=flat-square"/>
  </a>
  <a href="https://profile.intra.42.fr/users/mathmart" target="_blank">
    <img alt="42 login: mathmart" src="https://img.shields.io/badge/42%20login-mathmart-2DD57B?style=flat-square"/>
  </a>
</p>

<p align="center">
This repository will contain open source code that will allow users to configure the base of their servers
BasicMinecraftDeployer.sh is a bash program that will install the dependencies needed to start your minecraft server
</p>

- ✍🏻 Created by Mathis Martini.
- 📫 How to reach me: **contact@mathis-martini.fr**.
- 📫 How to reach me in 42: **mathmart@student.42lyon.fr**.
- 👨🏻‍💻 Login 42Intra: **mathmart**

<h2 align="left">🏗️ How to use:</h2>
<p align="left">Prerequisites for downloading :</p>

```bash
#update sources
apt-get update -y && apt-get upgrade -y

#If you want to download via github
apt-get install -y git

#if you want to download via curl
apt-get install -y curl
```

<p align="left">Download the desired file :</p>

```bash
#With git
git clone https://github.com/mmartini42/OpenDeployer.git

#With curl
curl -LO https://raw.githubusercontent.com/mmartini42/OpenDeployer/main/BasicMinecraftDeployer.sh
```

<p align="left">Executing the file :</p>

```bash
cd OpenDeployer
bash BasicMinecraftDeployer.sh

#If you use curl you can execute instantly
bash -c "$(curl -fsSL https://raw.githubusercontent.com/mmartini42/OpenDeployer/main/BasicMinecraftDeployer.sh)"
```

<h2 align="left">⚖️ Copyright</h2>
<p align="left">
  Mathis Martini (mmartini42) © 2022
</p>
