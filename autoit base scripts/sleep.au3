#RequireAdmin
#include <ScreenCapture.au3>
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****


; This file takes 3 input parameters: window title, sleep length, screenshot name, screenshot flag True or false
$shortTimeOut = 500

$pos = WinGetPos($CmdLine[1])

WinWait($CmdLine[1])
WinActivate($CmdLine[1])
sleep($CmdLine[2])
screenshot()


Func screenshot()
	$pos = WinGetPos($CmdLine[1])
	If $CmdLine[4] = 'True' Then
		sleep($shortTimeOut)
		; To Capture full screen
		ConsoleWrite(@ScriptDir & "\clickElement-" & $CmdLine[3] &  ".jpg")
		_ScreenCapture_Capture(@ScriptDir & "\clickElement-" & $CmdLine[3] &  ".jpg")

		ShellExecute(@ScriptDir & "\clickElement-" & $CmdLine[3] &  ".jpg")

		 WinActivate($CmdLine[1])
		 sleep($shortTimeOut)
		 MouseClick('primary', $pos[0] + 1, $pos[1] + 1, 1, 0)
		 sleep($shortTimeOut)
	EndIf
EndFunc