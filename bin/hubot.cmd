@echo off

rem epm install && node_modules\.bin\hubot.cmd --name "flamebot" %*

call npm install
SETLOCAL
SET PATH=node_modules\.bin;node_modules\hubot\node_modules\.bin;%PATH%

node_modules\.bin\hubot.cmd --name "flamebot" %* 
