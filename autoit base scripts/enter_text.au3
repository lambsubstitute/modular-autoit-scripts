#RequireAdmin
#include <ScreenCapture.au3>
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
;Run(@ScriptDir & "\atlassian-servicedesk-3.5.0-x32.exe")
;Opt("WinTitleMatchMode", 2)

$pos = WinGetPos($CmdLine[1])


$shortTimeOut = 500


sleep($shortTimeOut)
WinWait($CmdLine[1])
WinActivate($CmdLine[1])
sleep(500)
Send($CmdLine[5])
sleep($shortTimeOut)
;screenshot()




Func screenshot()
	sleep($shortTimeOut)
    ; To Capture full screen
	ConsoleWrite(@ScriptDir & "\clickElement-" & $CmdLine[4] &  ".jpg")
    _ScreenCapture_Capture(@ScriptDir & "\clickElement-" & $CmdLine[4] &  ".jpg")

    ShellExecute(@ScriptDir & "\clickElement-" & $CmdLine[4] &  ".jpg")

    ; To Capture region
   ; _ScreenCapture_Capture(@ScriptDir & "\GDIPlus_Image2.jpg", 0, 0, 796, 596)

   ; ShellExecute(@ScriptDir & "\GDIPlus_Image2.jpg")
	 WinActivate($CmdLine[1])
	 sleep($shortTimeOut)
     MouseClick('primary', 0, 0, 1, 0)
	 sleep($shortTimeOut)
EndFunc