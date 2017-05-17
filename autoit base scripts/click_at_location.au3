#RequireAdmin
#include <ScreenCapture.au3>
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

; This click action takes in 4 parameters: window title, x cordinate of element to click, y cordinate of element to click, and screenshot name, screenshot flag True or False

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
sleep($shortTimeOut)
MouseClick('primary', $pos[0] + $CmdLine[2], $pos[1] + $CmdLine[3], 1, 0)
sleep($shortTimeOut)
screenshot()




Func screenshot()
	$pos = WinGetPos($CmdLine[1])
	If ($CmdLine[5] = True) Then
		sleep($shortTimeOut)
		; To Capture full screen
		ConsoleWrite(@ScriptDir & "\clickElement-" & $CmdLine[4] &  ".jpg")
		_ScreenCapture_Capture(@ScriptDir & "\clickElement-" & $CmdLine[4] &  ".jpg")

		ShellExecute(@ScriptDir & "\clickElement-" & $CmdLine[4] &  ".jpg")

		 WinActivate($CmdLine[1])
		 sleep($shortTimeOut)
		 MouseClick('primary', $pos[0] + 1, $pos[1] + 1, 1, 0)
		 sleep($shortTimeOut)
	EndIf
EndFunc