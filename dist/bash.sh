#!/bin/bash

install_name_tool -change /usr/local/lib/libminiupnpc.9.dylib @executable_path/../Frameworks/libminiupnpc.9.dylib OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /opt/local/openssl/lib/libssl.1.0.0.dylib @executable_path/../Frameworks/libssl.1.0.0.dylib OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /opt/local/lib/libcrypto.1.0.0.dylib @executable_path/../Frameworks/libcrypto.1.0.0.dylib OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /usr/local/opt/berkeley-db4/lib/libdb_cxx-4.8.dylib @executable_path/../Frameworks/libdb_cxx-4.8.dylib OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /usr/local/lib/libboost_system-mt.dylib @executable_path/../Frameworks/libboost_system-mt.dylib  OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /usr/local/lib/libboost_filesystem-mt.dylib @executable_path/../Frameworks/libboost_filesystem-mt.dylib OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /usr/local/lib/libboost_program_options-mt.dylib @executable_path/../Frameworks/libboost_program_options-mt.dylib OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /usr/local/lib/libboost_thread-mt.dylib @executable_path/../Frameworks/libboost_thread-mt.dylib OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /usr/local/lib/libboost_chrono-mt.dylib @executable_path/../Frameworks/libboost_chrono-mt.dylib OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /usr/local/lib/QtGui.framework/Versions/4/QtGui @executable_path/../Frameworks/QtGui.framework/Versions/4/QtGui OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /usr/local/lib/QtNetwork.framework/Versions/4/QtNetwork @executable_path/../Frameworks/QtNetwork.framework/Versions/4/QtNetwork OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt

install_name_tool -change /usr/local/lib/QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore OmniCoin-Qt.app/Contents/MacOs/OmniCoin-Qt