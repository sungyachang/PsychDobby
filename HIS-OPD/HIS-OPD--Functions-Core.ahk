;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Core Modules
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;atientAge() {
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


CleanUpPsychotherapyRecord()
{
;; automatically prune previous psychotherapy record from the AP input box.
	MouseMove SOAP_AP_x, SOAP_AP_y
	MouseClick "left"
	Sleep 300
	Send "^a"
	Send "^c"
	if !ClipWait(2) {
		MsgBox "The attempt to copy text onto the clipboard failed."
		return
	}
	Sleep 300
	Note := A_Clipboard
	Note := RegExReplace(Note, "s)^(.*?---).*", "$1") ; s) enables DotAll mode so that . matches newline characters as well.
	Sleep 300
	A_Clipboard := Note
	Sleep 300
	Send "^a"
	Send "^v"
	Send "{Enter 2}"
}


StableConditionAskedForRefill(*)
{
; to automatically fill in histories for patients who are stable

	;; Paste EMR Templates
	MouseMove SOAP_S_x, SOAP_S_y
	MouseClick "left"
	Send "{PgDn 20}{End}{Enter 2}"
	Sleep 300
	A_Clipboard := FormatTime(,  "yyyyMMdd") . " Stable condition, asked for refill"
	Sleep 300
	Send "^v"

	MouseMove SOAP_O_x, SOAP_O_y
	MouseClick "left"
	Send "{PgDn 20}{End}{Enter 2}"
	Sleep 300
	A_Clipboard := FormatTime(,  "yyyyMMdd") . " Stationary"
	Sleep 300
	Send "^v"
}
