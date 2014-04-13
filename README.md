Omnicoin-Qt for Mac
===================

This is a fixed copy of OmniCoin-Qt so it will compile on Mac OS X. It contains a modified Makefile (do not delete or regenerate it) that will force compile "macnotificationshandler.o" in order for the build to succeed.

How to build for Mac OS X

Prerequisites:

Make sure you have Xcode and Xcode command line tools (Apple has a great guide on how to install them)

Time 
30 minutes - 90 minutes depending if you have a slow Mac or not

Instructions:

1. You will need Homebrew for Mac which lets us easily install Unix packages without having to compile manually (nasty). 
2. Alright, got Brew installed? Move the source code onto a folder called "Omnicoin-master" on your Desktop. That means you should have a folder called "src" at ~/Desktop/Omnicoin-master/src (the ~ means your Mac OS home directory).
3. Now open Terminal in Applications > Utilities > Terminal. We need some libraries in order to create OmniCoin-Qt. Type:

brew update
brew install qt
brew install boost miniupnpc openssl berkeley-db4
brew link openssl --force
cd ~/Desktop/Omnicoin-master
sudo cp libssl.1.0.0.dylib /usr/lib/ 
sudo mv libssl.0.9.8.dylib ~/Desktop/
sudo mv libssl.0.9.7.dylib ~/Desktop/

4. Alright let's compile OmniCoind (the base without the GUI). Type in Terminal:

cd ~/Desktop/Omnicoin-master/src
make -f makefile.osx

5. Once that's done we can make the final OmniCoin-Qt app. Excited?

cd ~/Desktop/Omnicoin-master
make

6. A app file should appear in ~/Desktop/Omnicoin-master/ but you can't launch it. Right click on it and click Show Package Contents. Then click Contents, then open Info.plist. It should open in Xcode. Change the value of the icon file to "bitcoin.icns" and change all LeafCoin references to "OmniCoin-Qt" (without quotes of course).

7. Now open up the app file and it should run perfectly.

8. But wait? What if you want to share it with friends? It crashes. That's because they don't have the libraries we have earlier. Why don't we just put them in the app file so they can have them too? In terminal type

cd ~/Desktop/Omnicoin-master
contrib/macdeployqt/macdeployqtplus OmniCoin-Qt.app
cd dist
./bash.sh

9. Now the sharable/releaseable app is in ~/Desktop/Omnicoin-master/dist/ so share it with your friends. :)

10. Time to restore the libssl libraries.
sudo mv ~/Desktop/libssl.0.9.8.dylib /usr/lib/
sudo mv ~/Desktoplibssl.0.9.7.dylib ~/Desktop/

Omnicoin Source code


MADE BY CRYPTO MINER http://www.hackforums.net/member.php?action=profile&uid=1302310
