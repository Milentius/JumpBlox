#NoEnv
SendMode Input
SetWorkingDir, % A_ScriptDir
#SingleInstance, Force

if(WinExist("Roblox")){
    WinActivate, Roblox
}Else{
    MsgBox, could not find Roblox window
    ExitApp
}

;messagebox to tell the user when
MsgBox, , How To Use, Press 'F9' to start jumping, Press F10 to stop jumping, Press 'End' to stop the script.

F9::
	toggle:=1
	while (toggle)
	{
		send, {Space}
		sleep,10
        if(!WinActive("Roblox")){
            toggle=!toggle
            Break
        }
	}
Return

F10::  toggle:=!toggle
Return

End::ExitApp