;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Core Modules
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_Code) {

    MouseGetPos &xpos, &ypos ; remember current location

    MouseMove NHI_InputLocation_x, NHI_InputLocation_y
    MouseClick "left"
    SendText NHI_Code
    Send "{Enter}"

    MouseMove xpos, ypos ; return to previous location
}

GetPatientAge() {
; get the patient's age

	; return 18 ;; for testing purpose
	MouseGetPos &xpos, &ypos ; remember current location

	MouseMove PT_TAB_x, PT_TAB_y
	MouseClick "left"
	Sleep 500

	MouseMove PT_TAB_AGE_x, PT_TAB_AGE_y
	Sleep 200
	MouseClick "left"
	MouseClick "left"
	MouseClick "left"
	Sleep 800
	Send "^c"
	if !ClipWait(2) {
	MsgBox "The attempt to copy text onto the clipboard failed."
	return
	}
	Sleep 100

	MouseMove PT_TAB_x, PT_TAB_y
	MouseClick "left"

	MouseMove xpos, ypos ; return to previous location

	;; process patient's age

	PTAge := A_Clipboard
	PTAge := RegExReplace(PTAge, "(.+)歲.*", "$1")
	return PTAge

}

GetAgeGroup(Age)
{
; Get Patient's Age Group from Age, <6y=1, 6-15y=2, >15y=3
	if (Age > 15) {
		Return 3
	} else if (Age >= 6) {
		Return 2
	} else {
		Return 1
	}
}