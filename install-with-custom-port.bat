
SET screenshots=True
SET windowTitle="Install - JIRA Service Desk"
ECHO %windowTitle%
SET RandomNumber=%random%
SET RandomFolderName='C:\Program Files\%random%\atlassian\JIRA-custom-folder' 
SET RandomAppDataFolderName='C:\Program Files\%random%\atlassian\Application Data\Jira'
dir
open_file.exe "C:\Users\IEUser\Desktop\atlassian-servicedesk-3.5.0-x32.exe" %windowTitle% "1-openfile" True
IF %ERRORLEVEL% NEQ 0 EXIT
click_at_location.exe %windowTitle% 383 364 "2 -initial screen click next" %screenshots%
click_at_location.exe %windowTitle% 42 165 "3 -choose custom install option" %screenshots%
click_at_location.exe %windowTitle% 383 364 "4 -choosen custom click next" %screenshots%
click_at_location.exe %windowTitle% 238 167 "5 -custom folder - click textfield" %screenshots%
enter_text.exe %windowTitle% %RandomNumber% "6 -custom folder - click textfield" %screenshots%
click_at_location.exe %windowTitle% 383 364 "7 -custom folder click next" %screenshots%
click_at_location.exe %windowTitle% 279 197 "5 -custom folder - click textfield" %screenshots%
enter_text.exe %windowTitle% %RandomNumber% "6 -custom folder - click textfield" %screenshots%
click_at_location.exe %windowTitle% 383 364 "8 -custom data folder click next" %screenshots%
click_at_location.exe %windowTitle% 94 145 "8-1 -choose unique start menu location" %screenshots%
enter_text.exe %windowTitle% %RandomNumber% "8-1 -custom start menu folder - enter random number" %screenshots% 
click_at_location.exe %windowTitle% 383 364 "9 -default shortcut folder - folder click next" %screenshots%
click_at_location.exe %windowTitle% 42 202 "10 -select custom ports radio button" %screenshots%
click_at_location.exe %windowTitle% 181 228 "11 -select custom ports radio button" %screenshots%
enter_text.exe %windowTitle% "{DEL 4}" "12 -custom folder - click textfield" %screenshots% 
enter_text.exe %windowTitle% "991" "13 -custom folder - click textfield" %screenshots%
click_at_location.exe %windowTitle% 383 364 "14 -custom ports entered click next - folder click next" %screenshots%
click_at_location.exe %windowTitle% 383 364 "15 -install the app" %screenshots%
click_at_location.exe %windowTitle% 383 364 "16 -install the app" %screenshots%
sleep %windowTitle% 180000
click_at_location.exe %windowTitle% 383 364 "17 -install the app" %screenshots%
sleep %windowTitle% 60000
click_at_location.exe %windowTitle% 444 364 "18 -install the app" %screenshots%
IF %ERRORLEVEL% NEQ 0 EXIT
webdriver.rb "chrome" %RandomNumber%