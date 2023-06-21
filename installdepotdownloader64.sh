#!/bin/bash
# Only use this if you're in PRoot.
apt update && apt full-upgrade -y
apt install wget libicu72 -y
wget "https://download.visualstudio.microsoft.com/download/pr/29fb12f4-03c2-450c-99d4-6c94fb47a6b2/18e308e40e503f02696f00b719ce581a/dotnet-runtime-6.0.18-linux-arm64.tar.gz"
mkdir dotnet && cd dotnet || exit
tar -xf ../dotnet-runtime-6.0.18-linux-arm64.tar.gz
cd ..
chmod u+x dotnet/dotnet
wget "https://github.com/SteamRE/DepotDownloader/releases/download/DepotDownloader_2.5.0/depotdownloader-2.5.0.zip"
mkdir depotdownloader && cd depotdownloader || exit
unzip ../depotdownloader-2.5.0.zip
