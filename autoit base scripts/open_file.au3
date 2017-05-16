#RequireAdmin
#include <ScreenCapture.au3>
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
;Run(@ScriptDir & "\atlassian-servicedesk-3.5.0-x32.exe")

; this requires parameters for: file location full path, window title, screenshot name

$shortTimeOut = 2000

ConsoleWrite( "opening installer: " )
ConsoleWrite(  $CmdLine[1])
ConsoleWrite( " | waiting for window title: " )
ConsoleWrite(  $CmdLine[2])

$PID = Run($CmdLine[1])
ConsoleWrite($PID)
If $PID = 0 Then
	ConsoleWrite("FAILED TO RUN THE FILE")
	Exit (1)
EndIf
WinWait($CmdLine[2])
screenshot()




Func screenshot()
	sleep($shortTimeOut)
    ; To Capture full screen
	ConsoleWrite(@ScriptDir & "\openProgram-" & $CmdLine[3] &  ".jpg")
    _ScreenCapture_Capture(@ScriptDir & "\openProgram-" & $CmdLine[3] &  ".jpg")

    ShellExecute(@ScriptDir & "\openProgram-" & $CmdLine[3] &  ".jpg")

	 WinActivate('Install - JIRA Service Desk')
	sleep($shortTimeOut)
     MouseClick('primary', 0, 0, 1, 0)
	 sleep($shortTimeOut)
EndFunc