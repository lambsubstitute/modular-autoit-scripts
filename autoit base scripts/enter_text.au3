#RequireAdmin
#include <ScreenCapture.au3>
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

; This input requires 3 inputs: window title, text to enter, screenshot name

$pos = WinGetPos($CmdLine[1])


$shortTimeOut = 500


sleep($shortTimeOut)
WinWait($CmdLine[1])
WinActivate($CmdLine[1])
sleep($shortTimeOut)
Send($CmdLine[2])
sleep($shortTimeOut)
;screenshot()




Func screenshot()
	sleep($shortTimeOut)
    ; To Capture full screen
	ConsoleWrite(@ScriptDir & "\clickElement-" & $CmdLine[3] &  ".jpg")
    _ScreenCapture_Capture(@ScriptDir & "\clickElement-" & $CmdLine[3] &  ".jpg")

    ShellExecute(@ScriptDir & "\clickElement-" & $CmdLine[3] &  ".jpg")

	 WinActivate($CmdLine[1])
	 sleep($shortTimeOut)
     MouseClick('primary', 0, 0, 1, 0)
	 sleep($shortTimeOut)
EndFunc