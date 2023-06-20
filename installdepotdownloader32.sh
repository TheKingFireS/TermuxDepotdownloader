#!/bin/sh
# Only use this if you're in PRoot.
apt update && apt full-upgrade -y
apt install wget libicu72 -y
wget "https://download.visualstudio.microsoft.com/download/pr/7853dcac-adfa-4cf4-8131-ee38c0962267/8bff8be2972a7894fd699a5bbc92b467/dotnet-runtime-6.0.18-linux-arm.tar.gz"
mkdir dotnet && cd dotnet
tar -xf ../dotnet-runtime-6.0.18-linux-arm.tar.gz
cd ..
chmod u+x dotnet/dotnet
wget "https://github.com/SteamRE/DepotDownloader/releases/download/DepotDownloader_2.5.0/depotdownloader-2.5.0.zip"
mkdir depotdownloader && cd depotdownloader
unzip ../depotdownloader-2.5.0.zip
