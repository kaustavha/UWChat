# UW Chat

This is meant to be a simple realtime cross-platform chat-room application built using cordova. 

## Purpose:

This app is meant to be a demoable product for my Knowledge Integration 121 W14 class, towards addressing the issue of student stress.
The app attempts to do this by allowing freshmen to communicate easily and seamlessly with other frosh on this app, without knowing friends initially, and with leaders for assistance. 

## Developer quickstart:

Based off of firechat. Code is in coffescript, jade and stylus, inside the www/src directory. 
Cordova commands should work and can be used to add platforms, build, emulate etc. 
The cakefile handles npm install and bower install. 
To get started, make sure you have nodeJS installed. Then:

If you dont have coffescript 
```
sudo npm install -g coffescript
```

To transpile the source files
```
sudo cake -t cordova build
```

This will compile package.json and bower.json from src/tools, run them with the correct permissions, then run gulp.
Gulp will compile files from www/src/src to appropriate directories in www/ and copy src/bower_components to www/lib.
It will then watch the files for changes.

Once the gulpfile.js is built initially, you can run gulp from the cmdline if you do not wish to attempt re-installation of bower.json and package.json contents. 

## TODO:

So far the cakefile is functional, and the app can compile itself to html/css/js. 
Get firechat working.
Stylings.
Login page or some sort of user auth.
Add android platform, generate apk, load, demo --> Deadline April 1st
Custom loading page.
User authentication (does UW have an API for that?)
User permissions, i.e. allow moderators.
Different chatrooms i.e. Arts/Eng/Env etc