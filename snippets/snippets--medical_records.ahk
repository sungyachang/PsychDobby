/*
:*?:DN-form''::
{
	SendText "
(
S: no specific complaint
O:
    - stable vital signs
    - clear consciousness
    - well-kempt appearance
    - intact attention
    - cooperative attitude
    - appropriate affect, euthymic mood
    - relevant and coherent speech
    - no formal thought disorder
    - no active hallucination
    - no disturbing behavior or agitation
    - fair sleep (hours)
    - fair appetite
A: stationary
P: keep current medication and monitor symptoms
)"
Send "{Up 13}"
Send "{End}"
}
*/


:*?:DN-form''::
{
SendText "
(
S: no specific complaint
O:
    - stable vital signs
    - clear consciousness
    - well-kempt appearance
    - intact attention
    - cooperative attitude
    - appropriate affect, euthymic mood
    - relevant and coherent speech
    - no formal thought disorder
    - no active hallucination
    - no disturbing behavior or agitation
    - fair sleep (hours)
    - fair appetite
A: stationary
P: keep current medication and monitor symptoms
)"
Send "{Up 13}"
Send "{End}"
}




:*?:completePE''::
{
	SendText "
( 
Physical Examinations:
- General appearance: fair, Lethargy:(-)  Weakness:(-)
- Appetite: fair  Activity: fair
- Head, Eyes, Ears, Nose, Throat (HEENT):
    Anterior fontanelle: closed  neither sunken nor bulging
    Pupils: isocoric, light reflex: L/R: prompt
    Conjunctiva palpebral/bulbar: pink
    Sclera: anicteric
    Eye: not sunken
    Eardrum R/L: injected(-)  Throat: injected(-)
    Tonsils:     injected(-)  not enlarn, no retraction
- Breathing sound: clear
- Heart: Regular heart beat without audible murmur
- Abdomen: soft and flat, no distention, no tenderness, normoactive bowel sound
- Extremities: freely movable, no skin rash
- Capillary refilling time: less than 2 seconds
)"
}



:*?:MSE-form''::
{
	SendText "
( 
Mental Status Examination (MSE):
- Consciousness: 
- Appearance: 
- Attention: 
- Attitude: 
- Affect/Mood: 
- Speech: 
- Thought: 
- Perception: 
- Behavior: 
- Drive: 
- Somatic Complaints: 
- Insight: 
- Suicidal Risk: 
- Homicidal Risk: 
)"
Send "{Up 13}"
Send "^{Right}"
}




:*?:MSE-ex''::
{
	SendText "
( 
---Mental Status Examination (MSE)---
Consciousness: clear
Appearance: neat & tidy
Attention: attentive
    - (focus/sustain/shift)
Attitude: cooperative, calm and polite
    playful
    defensive, vague and guarded
    argumentative
Affect/Mood: euthymic and stable
    [psychosis] anxious
    [mania] elevated, expansive, irritable, labile
    [depression] depressed, dysphoric, irritable
    [anxiety] anxious
Speech: relevant and coherent, normo-talkative, moderate volume and speed
    [psychosis] poverty of speech, grossly relevant but partially coherent
    [mania] relevant but pressured, hypertalkative with loud volume
    [depression] relevant and coherent, but lack of spontaneous speech, low volume
Thought: linear and organized, no evidence of ongoing delusions, no formal thought disorder
    [psychosis] idea of reference, idea of being monitored/follow-up, idea of persecution, idea of being controlled, thought passivity (insertion/withdrawal/blocking)
    [mania] grandiosity, flight of ideas
    [deperssion] worthlessness, hopelessness, helplessness, low self-esteem, negative ruminations, suicidal ideation
    [OCD] obsessive worries
Perception: no evidence of ongoing auditory hallucinations or visual hallucination
    auditory hallucinations with voice commenting, commanding, conversing
    audible thought
    visual hallucinations
    olfactory hallucinations
    formication/somatic hallucination
Behavior: appropriate during interview, no psychomotor agitation/retardation
Cognition: pending
    Clock Drawing Test (CDT): 
    digit Span: 
    Serial Sevens Test
    3-object Test: free recall, cued recall, recognition
    abstract thinking: proverb, similarity
Drive: fair sleep, fair appetite
    poor sleep (initial, fragmented, terminal, mixed)
Somatic Complaints: denied
    [anxiety] headache, dizziness, nech/shoulder soreness, chest tightness, palpitation, low back pain, tense sensation over all body, limb soreness
    [OSA] snoring, snoring to apnea
Insight: partial
Suicidal Risk: 
Homicidal Risk: 
)"
Send "{Up 45}"
Send "^{Right}"
}


:*?:v/s''::
{
	SendText "
( 
Vital signs:
- body temperature: 'C
- pulse rate: /min
- respiratory rate: /min 
- blood pressure: / mmHg
- body height: cm
- body weight: kg
)"
Send "{Up 5}{Right 3}"
}


:*?:write''::
{
	SendText "
( 
# Identifying Data

---
# Chief Complaint

---
# History of Present Illness

---
# Past Psychiatric History

---
# Substance Use History

---
# Review of Symptoms

---
# Family History

---
# Social History

---
# Medical History

---
# MSE

---
# Assessment

---
# DSM-5 Diagnosis

---
# Treatment Plan

---
)"
Send "{Up 38}{Down}"
}




:*?:Past-History''::
{
	SendText "
( 
Past History:
- 1.Birth and development: 
- 2.Pre-morbid personality: 
- 3.Education: 
- 4.Occupation: 
- 5.Marriage: 
- 6.Substance: tobacco(-), alcohol(-), illicit drug(-)
- 7.Violence history: denied
- 8.Suicide history: denied
- 9.Medical history: denied
- 10.Allergy history: denied
- 11.Travel history: denied
- 12.Legal history: denied
)"
Send "{Up 11}"
Send "^{Right}"
}

