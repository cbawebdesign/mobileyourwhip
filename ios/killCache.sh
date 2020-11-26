#!/usr/bin/env bash
cd ios
killall Xcode
xcrun -k
xcodebuild -alltargets clean
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang.$(whoami)/ModuleCache"
rm -rf ~/Library/Developer/Xcode/DerivedData/*
rm -rf ~/Library/Caches/com.apple.dt.Xcode/*
rm -rf Pods/
rm PodFile.lock
rm -rf SocialNetworkingBackendApp.xcworkspace/*
pod install
open SocialNetworkingBackendApp.xcworkspace