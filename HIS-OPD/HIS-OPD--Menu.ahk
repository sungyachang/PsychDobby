
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


MenuWork := Menu()

MenuWork.Add("&F - 初診", FirstVisit)

MenuWork.Add()

MenuWork.Add("&S - 支持性心理治療", Supportive)
MenuWork.Add("&R - 特殊心理治療", Reeducative)
MenuWork.Add("&I - 深度心理治療", Intensive)

MenuWork.Add()

MenuWork.Add("&P - PPFE", PPFE)

MenuWork.Add()

MenuWork.Add("&O - Social Function", SocialFunctionAssess)


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
	SendText SOAP_S[PTAgeGroup]

	MouseMove SOAP_O_x, SOAP_O_y
	MouseClick "left"
	SendText SOAP_O[PTAgeGroup]

	MouseMove SOAP_AP_x, SOAP_AP_y
	MouseClick "left"
	SendText SOAP_AP[PTAgeGroup]

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

