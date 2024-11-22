#Requires AutoHotkey v2.0
#SingleInstance

A_IconTip := "PsychDobby v0.1.0"

TraySetIcon("assets\favicon-elf.ico")

CoordMode "Mouse", "Screen" ; mouse location's reference point is the top left corner of "the entire screen" instead of the window.


^F5::reload
^F4::ExitApp

;-------------------------------------------------------------------------------
; Load snippets
;-------------------------------------------------------------------------------

#Include "%A_ScriptDir%\snippets\init.ahk"


;-------------------------------------------------------------------------------
; Load llm
;-------------------------------------------------------------------------------

#Include "%A_ScriptDir%\llm\init.ahk"


;-------------------------------------------------------------------------------
; Load HIS-OPD
;-------------------------------------------------------------------------------

#Include "%A_ScriptDir%\HIS-OPD\init.ahk"


;-------------------------------------------------------------------------------
; Load User-Specific Stuff
;-------------------------------------------------------------------------------

API_Key := FileRead(A_ScriptDir . "\userspace\api.txt")

#Include "%A_ScriptDir%\userspace\custom-example.ahk" ; load example user custom script
#Include "%A_ScriptDir%\userspace\custom.ahk" ; load user custom script