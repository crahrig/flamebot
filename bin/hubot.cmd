@echo off

npm install && node_modules\.bin\hubot.cmd --name "flamebot" %*

rem call npm install
rem SETLOCAL
rem SET PATH=node_modules\.bin;node_modules\hubot\node_modules\.bin;%PATH%

rem node_modules\.bin\hubot.cmd --name "flamebot" %* 
