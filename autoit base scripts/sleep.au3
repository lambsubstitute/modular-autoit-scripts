#RequireAdmin
#include <ScreenCapture.au3>
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****


; This file takes 3 input parameters: window title, sleep length, screenshot name
$shortTimeOut = 500

$pos = WinGetPos($CmdLine[1])

WinWait($CmdLine[1])
WinActivate($CmdLine[1])
sleep($CmdLine[2])
;screenshot()


Func screenshot()
	sleep($shortTimeOut)
    ; To Capture full screen
	ConsoleWrite(@ScriptDir & "\openProgram-" & $CmdLine[3] &  ".jpg")
    _ScreenCapture_Capture(@ScriptDir & "\openProgram-" & $CmdLine[3] &  ".jpg")

    ShellExecute(@ScriptDir & "\openProgram-" & $CmdLine[3] &  ".jpg")

    ; To Capture region
   ; _ScreenCapture_Capture(@ScriptDir & "\GDIPlus_Image2.jpg", 0, 0, 796, 596)

   ; ShellExecute(@ScriptDir & "\GDIPlus_Image2.jpg")
	 WinActivate('Install - JIRA Service Desk')
	sleep($shortTimeOut)
     MouseClick('primary', 0, 0, 1, 0)
	 sleep($shortTimeOut)
EndFunc