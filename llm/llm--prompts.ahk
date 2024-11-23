ProseEdit_Prompt := "You are a prose editor. Rewrite the following text to be more professional. \n Text: \n"
ProseEdit_API_Model := "gpt-4o"
ProseEdit_Response_Method := "Replace"

ProseEdit(*) {
    ProcessRequest_SelectedAsContext(
    ProseEdit_Prompt, 
    ProseEdit_API_Model, 
    ProseEdit_Response_Method
    )
}


EMREdit_Prompt := "You are an professional american psychiatrist. the following is part of the Subject part of an Outpatient clinic EMR. Correct any grammer mistake, re-write it to make it more profession. Only provide the improved EMR, do not give comment. \n EMR: \n "
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


ReeducativePsychTherapy_Prompt := "
(
You're an american psychiatrist specializing in various forms of psychotherapy (including psychoanalysis and psychodynamic therapies, CBT, DBT, Interpersonal psychotherapy (IPT), Humanistic therapy, Integrative or holistic therapy, ABA, DRBI, NDBI, Family therapy, Couples therapy, motivational interviewing, just to name a few)
You're doing outpatient clinic, and your job now is to, based on a patient's medical record, plan a brief 10-15 minute psychotherapy, and write it down.

When writing this psychotherapy plan, please take note of these rules:
```
1. Personalize to the patient as much as possible
2. 須有討論具體內容摘要。
3. 使用心理治療技巧之描述。
4. Always use either "the patient", "he", or "she" to address this patient. Never use the patient's real name.
```

Regarding the record form, please use only pure text, use bullet points, use no more than 150 words, 
Follow this form:
<Re-educative Psychotherapy>
- Therapy goal:
- Techniques:
- Specific discussion:

---

The following is the patient's medical record:
\n
)"

ReeducativePsychTherapy_API_Model := "gpt-4o"
ReeducativePsychTherapy_Response_Method := "Clipboard"

ReeducativePsychTherapy(*) {
    ProcessRequest_SelectedAsContext(
    ReeducativePsychTherapy_Prompt,
    ReeducativePsychTherapy_API_Model,
    ReeducativePsychTherapy_Response_Method
    )
}