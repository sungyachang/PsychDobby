
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


HISOPDMenu := Menu()

HISOPDMenu.Add("&F - 初診", FirstVisit)

HISOPDMenu.Add()

HISOPDMenu.Add("&S - 支持性心理治療", Supportive)
HISOPDMenu.Add("&R - 特殊心理治療", Reeducative)
HISOPDMenu.Add("&I - 深度心理治療", Intensive)

HISOPDMenu.Add()

HISOPDMenu.Add("&P - PPFE", PPFE)

HISOPDMenu.Add()
HISOPDMenu.Add("&O - Social Function", SocialFunctionAssess)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


FirstVisit(*) {

	;; Get the patient's Age Group
	PTAge := GetPatientAge()
	PTAgeGroup := GetAgeGroup(PTAge)


	;; Enter NHI Code
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_PDI[PTAgeGroup])
        Sleep 1000
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_PPFE[PTAgeGroup])
        Sleep 1000

	;; Paste EMR Templates
	MouseMove SOAP_S_x, SOAP_S_y
	MouseClick "left"
	; SendText SOAP_S[PTAgeGroup]
        Sleep 400
	A_Clipboard := SOAP_S[PTAgeGroup]
        Sleep 400
        Send "^v"

	MouseMove SOAP_O_x, SOAP_O_y
	MouseClick "left"
	; SendText SOAP_O[PTAgeGroup]
        Sleep 400
	A_Clipboard := SOAP_O[PTAgeGroup]
        Sleep 400
        Send "^v"

	MouseMove SOAP_AP_x, SOAP_AP_y
	MouseClick "left"
	; SendText SOAP_AP[PTAgeGroup]
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
        Sleep 1000

    CleanUpPsychotherapyRecord()
        Sleep 1000

	MouseMove SOAP_S_x, SOAP_S_y
	MouseClick "left"
    Send "^a"
    ReeducativePsychTherapy()

    ;; Sleep 6000

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
        Sleep 1000
}


PPFE(*) {

	;; Get the patient's Age Group
	PTAge := GetPatientAge()
	PTAgeGroup := GetAgeGroup(PTAge)


	;; Enter NHI Code
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_PPFE[PTAgeGroup])
        Sleep 1000

}

SocialFunctionAssess(*) {
	NHI_Input(NHI_InputLocation_x, NHI_InputLocation_y, NHI_SocialFunction)
}

