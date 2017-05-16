#RequireAdmin
#include <ScreenCapture.au3>
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
;Run(@ScriptDir & "\atlassian-servicedesk-3.5.0-x32.exe")
;Opt("WinTitleMatchMode", 2)

$pos = WinGetPos($CmdLine[1])


$shortTimeOut = 2000
ConsoleWrite($CmdLine[0] + "  |  ")
ConsoleWrite($CmdLine[1] + "  |  ")

ConsoleWrite($pos[0])
ConsoleWrite( " | ")
ConsoleWrite($pos[1])
ConsoleWrite( "| clicking x  ")
ConsoleWrite($pos[0] + $CmdLine[2])
ConsoleWrite( "| clicking y  ")
ConsoleWrite($pos[1] + $CmdLine[3])

sleep($shortTimeOut)
WinWait($CmdLine[1])
WinActivate($CmdLine[1])
sleep(500)
MouseClick('primary', $pos[0] + $CmdLine[2], $pos[1] + $CmdLine[3], 1, 0)
sleep(500)
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