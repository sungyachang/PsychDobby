ProseEdit_Prompt := "As an expert prose editor, rewrite the following text after triple quotes to be more professional. Avoid any text formatting such as bold or italics.\n===\n"
ProseEdit_API_Model := "gpt-4o"
ProseEdit_Response_Method := "Replace"

ProseEdit(*) {
    ProcessRequest_SelectedAsContext(
    ProseEdit_Prompt, 
    ProseEdit_API_Model, 
    ProseEdit_Response_Method
    )
}



EMREdit_Prompt := "The following text after the triple quotes is a part of a psychiatric outpatient medical record. As an expert american psychiatrist, provide modifications in grammer, working and phrasing to make it more professional. Avoid any text formatting such as bold or italics.\n===\n"
EMREdit_API_Model := "gpt-4o"
EMREdit_Response_Method := "Replace"

EMREdit(*) {
    ProcessRequest_SelectedAsContext(
    EMREdit_Prompt,
    EMREdit_API_Model,
    EMREdit_Response_Method
    )
}


Restructure_Prompt := "Restructure the following text using markdown bullet points with 4-space indentation, with multiple layers of nested bullet lists. Surround important phrases with tripple asterisks, double asterisks, or single asterisk, depending on the importance. Respect the original language of the content. \n Text:"
Restructure_API_Model := "gpt-4o"
Restructure_Response_Method := "Replace"

Restructure(*) {
    ProcessRequest_SelectedAsContext(
    Restructure_Prompt,
    Restructure_API_Model,
    Restructure_Response_Method
    )
}


TranslateToChinese_Prompt := "請將以下文字翻譯成臺灣正體中文 lang=zh-TW，若有專有名詞，則保留原英文 \n 文字："
TranslateToChinese_API_Model := "gpt-4o"
TranslateToChinese_Response_Method := "Append"

TranslateToChinese(*) {
    ProcessRequest_SelectedAsContext(
    TranslateToChinese_Prompt,
    TranslateToChinese_API_Model,
    TranslateToChinese_Response_Method
    )
}
