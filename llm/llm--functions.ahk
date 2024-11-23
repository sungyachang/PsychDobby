;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; core functionaliry
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; If no context is given, use this so that selected words can be used as context.

ProcessRequest_SelectedAsContext(ChatGPT_Prompt, API_Model, Response_Method) {

    A_Clipboard := ""
    Send "^c"
    if !ClipWait(2) {
    	MsgBox "The attempt to copy text onto the clipboard failed."
    	return
    }
    ChatGPT_Context := A_Clipboard

    ProcessRequest(ChatGPT_Prompt, ChatGPT_Context, API_Model, Response_Method)

}



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; core functionaliry
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


ProcessRequest(ChatGPT_Prompt, ChatGPT_Context, API_Model, Response_Method) {

    ChatGPT_Prompt := ChatGPT_Prompt . "`n`n" . ChatGPT_Context
    ChatGPT_Prompt := RegExReplace(ChatGPT_Prompt, '(\\|")+', '\$1') ; Clean back spaces and quotes
    ChatGPT_Prompt := RegExReplace(ChatGPT_Prompt, "`n", "\n") ; Clean newlines
    ChatGPT_Prompt := RegExReplace(ChatGPT_Prompt, "`r", "") ; Remove carriage returns

    TrayTip "Calling API..."

    global HTTP_Request := ComObject("Msxml2.ServerXMLHTTP")
    HTTP_Request.open("POST", API_URL, true)
    HTTP_Request.SetRequestHeader("Content-Type", "application/json")
    HTTP_Request.SetRequestHeader("Authorization", "Bearer " API_Key)
    Messages := '{ "role": "user", "content": "' ChatGPT_Prompt '" }'
    JSON_Request := '{ "model": "' API_Model '", "messages": [' Messages '], "temperature": 1, "top_p": 1, "frequency_penalty": 0, "presence_penalty": 0 }'
    ; JSON_Request := '{ "model": "' API_Model '", "messages": [' Messages '] }'
    HTTP_Request.SetTimeouts(60000, 60000, 60000, 60000)
    HTTP_Request.Send(JSON_Request)

    HTTP_Request.WaitForResponse

    try {
        if (HTTP_Request.status == 200) {
            JSON_Response := HTTP_Request.responseText
            var := Jxon_Load(&JSON_Response)
            JSON_Response := var.Get("choices")[1].Get("message").Get("content")
            A_Clipboard := JSON_Response ; copy response value to A_Clipboard
	    TrayTip "Success!"
        } else {
            A_Clipboard := "Status " HTTP_Request.status " " HTTP_Request.responseText
	    TrayTip "Failed"
        }
    }

    if (Response_Method == "Replace") {
	Send "^v"
    } else if (Response_Method == "Append") {
	Send "{Right}{Enter}{Enter}"
	Send "^v"
    } else if (Response_Method == "Clipboard") {
	    TrayTip "Copied to clipboard"
    } else {
        MsgBox("Response Method Unknown",,64)
    }
}