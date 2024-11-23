FirstVisit(*) {

	;; Get the patient's Age Group
	PTAge := GetPatientAge()
	PTAgeGroup := GetAgeGroup(PTAge)


	;; Enter NHI Code
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_PDI[PTAgeGroup])
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_PPFE[PTAgeGroup])

	;; Paste EMR Templates
	MouseMove SOAP_S_x, SOAP_S_y
	MouseClick "left"
        Sleep 400
	A_Clipboard := FormatTime(,  "yyyyMMdd") . " 初診`n`n" . SOAP_S[PTAgeGroup]
        Sleep 400
        Send "^v"

	MouseMove SOAP_O_x, SOAP_O_y
	MouseClick "left"
        Sleep 400
	A_Clipboard := SOAP_O[PTAgeGroup]
        Sleep 400
        Send "^v"

	MouseMove SOAP_AP_x, SOAP_AP_y
	MouseClick "left"
        Sleep 400
	A_Clipboard := SOAP_AP[PTAgeGroup]
        Sleep 400
        Send "^v"

        ;; Move cursor to the start of S, be ready for input
	MouseMove SOAP_S_x, SOAP_S_y
	MouseClick "left"
        Send "{PgUp 4}{End}"
}


Supportive(*) {
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_Supportive)
}

Reeducative(*) {

	;; Get the patient's Age Group
	PTAge := GetPatientAge()
	PTAgeGroup := GetAgeGroup(PTAge)


	;; Enter NHI Code
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_Re[PTAgeGroup])

	CleanUpPsychotherapyRecord()
	Sleep 1000

	MouseMove SOAP_S_x, SOAP_S_y
	MouseClick "left"
	Send "^a"
	ReeducativePsychTherapy()


	MouseMove SOAP_AP_x, SOAP_AP_y
	MouseClick "left"
	Send "{PgDn 4}{End}"
	Send "^v"



}

Intensive(*) {

	;; Get the patient's Age Group
	PTAge := GetPatientAge()
	PTAgeGroup := GetAgeGroup(PTAge)


	;; Enter NHI Code
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_Intensive[PTAgeGroup])
}


PPFE(*) {

	;; Get the patient's Age Group
	PTAge := GetPatientAge()
	PTAgeGroup := GetAgeGroup(PTAge)


	;; Enter NHI Code
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_PPFE[PTAgeGroup])

}

SocialFunctionAssess(*) {
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_SocialFunction)
}
