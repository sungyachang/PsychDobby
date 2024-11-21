
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; S
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SOAP_S := Map()
SOAP_S[1] := "
( 
病史獲取之對象：
(Information reliability: )

主訴：

病史：


Education:
- 公/私立幼兒園：從小班開始唸
- 強項： （成績約，穩定／起伏大）
- 弱項： （成績約，穩定／起伏大）
- 家人和學校的關係： 友善／支持、衝突／有敵意
- Complementary education: nil

Family structure and interaction:
- lives with:
- father:
- mother:
- grandfather:
- grandmother:
- parenting style:
    - father: authoritative/authoritarian/permissive/uninvolved parenting
    - mother: authoritative/authoritarian/permissive/uninvolved parenting

Psychiatric family history:

Birth:
  - GA: full term
  - NSD/CS
  - BBW: gm
  - no overt perinatal complication, DOIC 延遲初啼 (-), PROM 早期破水 (-), head injury(-), epilepsy(-)
  - Maternal history: GDM(-), pre-eclampsia(-), Hypertension(-)
  - Vaccination: as schedule

Development
- Language Development:
    - first single words: not delayed (9-12m)
    - simple sentence: not delayed (14-22m)
- Motor Development:
    - crawling: not delayed (7-10m)
    - stand: not delayed (9-12m)
    - first walked unaided: not delayed (11-13m)
    - up and down stairs: not delayed (14-20m)

Medical history:
- Systemic disease: denied
- Surgical history: denied
- Allergy: denied
- Current medication: denied

Substance:
- Alcohol: Nil
- Cigarette smoking: Nil / Passive: Nil

)"

SOAP_S[2] := SOAP_S[1]

SOAP_S[3] := "
(
病史獲取之對象：
（Information reliability：Fair）

病人主訴：

現在病史：

The years old male/female suffers from

- 婚姻及感情狀況 已/未婚
- 現在家庭成員 和 先生/太太、個兒子、個女兒 一起住

- 學歷及發展史：畢業/肄業
- 病前人格 introverted/outgoing、optimistic/pessimistic、impulsive/hesitated
- 過去的興趣和嗜好：
- 職業及工作概況：

物質使用
- Alcohol: onset y/o, 平均用量 
- Smoking: 已抽 年; 一天/包
- Amphetamine(-)/MDMA(-)/Ketamine(-)/Heroin(-)/大麻(-)

自傷傷人史：
Self-mutilation history(-)
Suicidal attempt history(-)
Homicidal history(-)

過去相關就醫史 ever visited PSY clinic of

原生家庭：
- 個哥哥、個姐姐、個弟弟、個妹妹，病人排第
- 父親學歷職業： y/o, 國中畢, 退休
- 母親學歷職業： y/o, 國小畢, 退休

家族史： all denied

內外科病史：DM(-)/hypertension(-)/CAD(-)/CKD(-)/Stroke(-)/Thyroid disease(-)/Autoimmue(-)/STD(-)
手術史：
目前用藥：
藥物過敏史：No drug allergy history
旅遊史：No travelling abroad for one year 

飲食：not vegetarian/奶蛋素/全素
)"





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; O
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


SOAP_O := Map()
SOAP_O[1] := "
(
身高： cm
體重： kg

pain score = 0/10

[MSE]

- Consciousness: clear
- Appearance: kempt
- Attention: fair on focus / easily distractable
- Attitude: most of time self-absorbed / uncooperative / shyness / playful
- Affect: stable, euthymic
- Behavior:
  [normal] nor marked agitation/retardation
  [ASD] poor eye to eye gaze / poor socio-reciprocity / no response to call / fair on eye gaze and socio-reciprocity
  [ADHD] hyperactivity / hypertalkativeness / fidget / ran in the room and opened the cabinet without permission
- Speech:
  [normal] relevant and coherent, fluently
  [ASD] limited verbal output
- Thought: no formal thought disorder
- Perception: no perceptual hyper-/hypo-sensitivity
- Drive: fair sleep, fair appetite
- Insight: limited
- Suicide risk: low
- Homicide risk: low
- JOMAC: grossly normal

[PE/NE]

Somatic complaints :nil
PE : grossly normal
NE : grossly normal
)"

SOAP_O[2] := SOAP_O[1]

SOAP_O[3] := "
(
pain score=0/10

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; AP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


SOAP_AP := Map()
SOAP_AP[1] := "
(


Plan:
- PDI + PPFE

---

)"

SOAP_AP[2] := SOAP_AP[1]

SOAP_AP[3] := "
(


Plan:
- PDI + PPFE

---

)"