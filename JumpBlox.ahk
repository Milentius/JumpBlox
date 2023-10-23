SetTitleMatchMode, 2
SetWorkingDir %A_ScriptDir%

if(WinExist("Roblox")){
    WinActivate, Roblox
}Else{
    MsgBox, couldnt find Roblox window
}
^q::
    toggle:=!toggle
    while(toggle){
        SendInput, {Space}
    }
Return

End::
    ExitApp
Return 
