#!/bin/bash
echo "Created with love by Puuska. Powered by Archi Steam Farm"
echo "Do not modify this without permissions"
echo "Click Enter to continue or CTRL+C to abort"
read
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
sudo apt-get install mono-complete
echo "Click Enter to continue or CTRL+C to abort"
read
echo "Now we will download latest release"
echo "Click Enter to continue or CTRL+C to abort"
read
curl -L https://api.github.com/repos/justarchi/ArchiSteamFarm/tarball | tar zx
echo "Click Enter to continue or CTRL+C to abort"
read
cd JustArchi*
./cc.sh
mv out/ ~/idler
cd ~/idler/config
cp example.json YourBot.json
echo "Now configure your bot. I open example config for you and you must input your Steam Username, password and games that you want to play while idle"
echo "Also do not forget to change Enabled from false to true"
read
echo "Click Enter to continue or CTRL+C to abort"
echo "When you configure it, click CTRL+X then Y"
nano YourBot.json
echo "Click Enter to continue or CTRL+C to abort"
read
cd ..
echo "Now we check that your bot run properly"
echo "If it starts without any error and show Steam Guard prompt click CTRL+C"
mono ASF.exe
echo "If it show any error, you messed something up. Start the script once again"
echo "Click Enter to continue or CTRL+C to abort"
read
echo "If you like this script donate to Me"
echo "Paypal.me : https://paypal.me/puuska"
echo "1. Bitcoin address 3J2uWx5bujypX33P8yG6TKT2A3VYytEgv1"
echo "2. Bitcoin address 1DVaxfrWbCYWATCsh6Yyjrs8xEEC2o6d7p"
echo "Steam Trade URL: https://steamcommunity.com/tradeoffer/new/?partner=326403122&token=5c3WlvbI"
echo "Thank you for using script. Press Enter to exit :)"
read
