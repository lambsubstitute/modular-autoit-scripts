SET windowTitle="Install - JIRA Service Desk"
ECHO %windowTitle%

open_file.exe "C:\Users\IEUser\Desktop\atlassian-servicedesk-3.5.0-x32.exe" %windowTitle%

click_at_location.exe %windowTitle% 383 364 "2 -initial screen click next"
click_at_location.exe %windowTitle% 42 165 "3 -choose custom install option"
click_at_location.exe %windowTitle% 383 364 "4 -choosen custom click next"
click_at_location.exe %windowTitle% 238 167 "5 -custom folder - click textfield"
enter_text.exe %windowTitle% 238 167 "6 -custom folder - click textfield" "-custom-folder"
click_at_location.exe %windowTitle% 383 364 "7 -custom folder click next"
click_at_location.exe %windowTitle% 383 364 "8 -custom data folder click next"
click_at_location.exe %windowTitle% 383 364 "9 -default shortcut folder - folder click next"
click_at_location.exe %windowTitle% 42 202 "10 -select custom ports radio button "
click_at_location.exe %windowTitle% 181 228 "11 -select custom ports radio button "
enter_text.exe %windowTitle% 238 167 "12 -custom folder - click textfield" "{DEL 4}"
enter_text.exe %windowTitle% 238 167 "13 -custom folder - click textfield" "991"
click_at_location.exe %windowTitle% 383 364 "14 -custom ports entered click next - folder click next"
click_at_location.exe %windowTitle% 383 364 "15 -install the app"
click_at_location.exe %windowTitle% 383 364 "16 -install the app"
timeout 60
click_at_location.exe %windowTitle% 383 364 "17 -install the app"
click_at_location.exe %windowTitle% 444 364 "18 -install the app"
IF %ERRORLEVEL% NEQ 0 EXIT