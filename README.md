# UW Chat

This is meant to be a simple realtime cross-platform chat-room application built using cordova. 

## Purpose:

This app is meant to be a demoable product for my Knowledge Integration 121 W14 class, towards addressing the issue of student stress.  
The app attempts to do this by allowing freshmen to communicate easily and seamlessly with other frosh on this app, without knowing friends initially, and with leaders for assistance.  
This is not a production quality app, and as such is expected to have bugs and be left incomplete. You should not be using this. If you want to work on it/use it/have questions/want me to finish it, feel free to contact me or do so. 

## Tooling

+ CoffeeScript
+ Jade
+ Stylus
+ Gulp
+ Angular and ngTouch
+ Firebases firechat libraries
+ Cordova
+ Android

## DEV

Based off of firechat. Source code is in coffescript, jade and stylus, inside the www/src directory.  

You can install the apk via numerous methods.   
Example with the android debug bridge: 
```
adb connect <device-ip>   
adb install <pkg-name>
```

Cordova commands can be used to add platforms, build, emulate etc.  

Install gulp dependencias via
```
sudo npm install
```
To transpile the source files:
```
gulp
```
To run server(this server does not watch for file changes, todo: setup gulp task to restart the cordova server)
```
cordova serve
```

To roll your own apk.  

```
cordova create <app-name>
cd <app-name>
```
Copy the www/ files into the new www/ directory.   
Remember to remove node_modules/ from www/ if you were working on it before, otherwise build will fail. 
Android example
```
cordova platform add android
cordova build android --release
```
This'll create an unsigned apk in /platforms/android/ant-build
Sign it as per http://developer.android.com/tools/publishing/app-signing.html
```
keytool -genkey -keystore <keyname>.keystore -alias <alias-name>
jarsigner -keystore <name.keystore> <apk name> <keystore alias>
```

## TODO:
* Get firechat working.  -done  
* Stylings.  -done  
* Login page or some sort of user auth.  -done  
* Add android platform, generate apk, load, demo --> Deadline April 1st  -done, met  
* Custom loading page.  
* User authentication (does UW have an API for that?)  
* User permissions, i.e. allow moderators.  
* Different chatrooms i.e. Arts/Eng/Env etc  -done
* Get sockets working on mobile so the app can actually send messages.  

## Screenshots: 

![alt text](https://github.com/kaustavha/UWChat/tree/master/ss/screen_login.png "Login screen")
![alt text](https://github.com/kaustavha/UWChat/tree/master/ss/screen_chat.png "Login screen")