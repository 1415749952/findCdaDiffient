---OUTPATIENT_SN  VARCHAR2(18)  Y    门（急）诊流水号      
SELECT OUTPATIENT_SN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY OUTPATIENT_SN;

---INPATIENT_SN  VARCHAR2(18)  Y    住院流水号      
SELECT INPATIENT_SN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INPATIENT_SN;

---DOC_NO  VARCHAR2(50)      文档编号      
SELECT DOC_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)      患者ID      
SELECT PATIENT_ID FROM TRANSFUSION_INFORMED_CONSENT GROUP BY PATIENT_ID;

---OUTP_NO  VARCHAR2(18)  Y    门（急）诊号    S1  AN..18
SELECT OUTP_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY OUTP_NO;

---INP_NO  VARCHAR2(18)  Y    住院号    S1  AN..18
SELECT INP_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INP_NO;

---INFORMED_CONSENT_NO  VARCHAR2(20)  Y    知情同意书编号    S1  AN..20
SELECT INFORMED_CONSENT_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INFORMED_CONSENT_NO;

---BLOOD_TRANSFUSION_HISTORY  VARCHAR2(1)  Y    输血史标识代码  标准值：1.无  2.有  9.未说明  S2  N1
SELECT BLOOD_TRANSFUSION_HISTORY FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_HISTORY;

---BLOOD_TRANSFUSION_INDICATION  VARCHAR2(500)  Y    输血指征    S1  AN..500
SELECT BLOOD_TRANSFUSION_INDICATION FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_INDICATION;

---BLOOD_TRANSFUSION_VARIETY_CODE  VARCHAR2(2)  Y    输血品种代码  应符合国标：CV04.50.021  S3  N..2
SELECT BLOOD_TRANSFUSION_VARIETY_CODE FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_VARIETY_CODE;

---CHECK_TRANSFUS_ITEM_RESULTS  VARCHAR2(200)  Y    输血前有关检查项目及结果    S1  AN..200
SELECT CHECK_TRANSFUS_ITEM_RESULTS FROM TRANSFUSION_INFORMED_CONSENT GROUP BY CHECK_TRANSFUS_ITEM_RESULTS;

---BLOOD_TRANSFUSION_WAY  VARCHAR2(50)  Y    输血方式    S1  A..50
SELECT BLOOD_TRANSFUSION_WAY FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_WAY;

---INTENT_TRANSFUSION_DATE  DATE  Y    拟定输血日期时间    DT  DT15
SELECT INTENT_TRANSFUSION_DATE FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INTENT_TRANSFUSION_DATE;

---ORG_OPINION  VARCHAR2(2000)  Y    医疗机构意见    S1  AN..2000
SELECT ORG_OPINION FROM TRANSFUSION_INFORMED_CONSENT GROUP BY ORG_OPINION;

---PATIENT_AGENT_OPINION  VARCHAR2(2000)  Y    患者/法定代理人意见    S1  AN..2000
SELECT PATIENT_AGENT_OPINION FROM TRANSFUSION_INFORMED_CONSENT GROUP BY PATIENT_AGENT_OPINION;

---PATIENT_AGENT_SIGN  VARCHAR2(50)  Y    患者/法定代理人签名    S1  A..50
SELECT PATIENT_AGENT_SIGN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY PATIENT_AGENT_SIGN;

---RELATION_CODE  VARCHAR2(2)  Y    法定代理人与患者的关系代码  应符合国标：GB/T 4761—2008  S3  N1
SELECT RELATION_CODE FROM TRANSFUSION_INFORMED_CONSENT GROUP BY RELATION_CODE;

---SIGN_DATETIME  DATE  Y    患者/法定代理人签名日期时间    DT  DT15
SELECT SIGN_DATETIME FROM TRANSFUSION_INFORMED_CONSENT GROUP BY SIGN_DATETIME;

---DOCTOR_SIGN  VARCHAR2(50)  Y    医师签名    S1  A..50
SELECT DOCTOR_SIGN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY DOCTOR_SIGN;

---DOCTOR_SIGN_DATETIME  DATE  Y    医师签名日期时间    DT  DT15
SELECT DOCTOR_SIGN_DATETIME FROM TRANSFUSION_INFORMED_CONSENT GROUP BY DOCTOR_SIGN_DATETIME;

---TRANSFUSION_RISK  VARCHAR2(1000)  Y    输血风险及可能发生的不良后果      
SELECT TRANSFUSION_RISK FROM TRANSFUSION_INFORMED_CONSENT GROUP BY TRANSFUSION_RISK;

---LAST_MODIFIC_TIME  DATE  Y          
SELECT LAST_MODIFIC_TIME FROM TRANSFUSION_INFORMED_CONSENT GROUP BY LAST_MODIFIC_TIME;

---OUTPATIENT_SN  VARCHAR2(18)  Y    门（急）诊流水号      
SELECT OUTPATIENT_SN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY OUTPATIENT_SN;

---INPATIENT_SN  VARCHAR2(18)  Y    住院流水号      
SELECT INPATIENT_SN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INPATIENT_SN;

---DOC_NO  VARCHAR2(50)      文档编号      
SELECT DOC_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)      患者ID      
SELECT PATIENT_ID FROM TRANSFUSION_INFORMED_CONSENT GROUP BY PATIENT_ID;

---OUTP_NO  VARCHAR2(18)  Y    门（急）诊号    S1  AN..18
SELECT OUTP_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY OUTP_NO;

---INP_NO  VARCHAR2(18)  Y    住院号    S1  AN..18
SELECT INP_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INP_NO;

---INFORMED_CONSENT_NO  VARCHAR2(20)  Y    知情同意书编号    S1  AN..20
SELECT INFORMED_CONSENT_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INFORMED_CONSENT_NO;

---BLOOD_TRANSFUSION_HISTORY  VARCHAR2(1)  Y    输血史标识代码  标准值：1.无  2.有  9.未说明  S2  N1
SELECT BLOOD_TRANSFUSION_HISTORY FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_HISTORY;

---BLOOD_TRANSFUSION_INDICATION  VARCHAR2(500)  Y    输血指征    S1  AN..500
SELECT BLOOD_TRANSFUSION_INDICATION FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_INDICATION;

---BLOOD_TRANSFUSION_VARIETY_CODE  VARCHAR2(2)  Y    输血品种代码  应符合国标：CV04.50.021  S3  N..2
SELECT BLOOD_TRANSFUSION_VARIETY_CODE FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_VARIETY_CODE;

---CHECK_TRANSFUS_ITEM_RESULTS  VARCHAR2(200)  Y    输血前有关检查项目及结果    S1  AN..200
SELECT CHECK_TRANSFUS_ITEM_RESULTS FROM TRANSFUSION_INFORMED_CONSENT GROUP BY CHECK_TRANSFUS_ITEM_RESULTS;

---BLOOD_TRANSFUSION_WAY  VARCHAR2(50)  Y    输血方式    S1  A..50
SELECT BLOOD_TRANSFUSION_WAY FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_WAY;

---INTENT_TRANSFUSION_DATE  DATE  Y    拟定输血日期时间    DT  DT15
SELECT INTENT_TRANSFUSION_DATE FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INTENT_TRANSFUSION_DATE;

---ORG_OPINION  VARCHAR2(2000)  Y    医疗机构意见    S1  AN..2000
SELECT ORG_OPINION FROM TRANSFUSION_INFORMED_CONSENT GROUP BY ORG_OPINION;

---PATIENT_AGENT_OPINION  VARCHAR2(2000)  Y    患者/法定代理人意见    S1  AN..2000
SELECT PATIENT_AGENT_OPINION FROM TRANSFUSION_INFORMED_CONSENT GROUP BY PATIENT_AGENT_OPINION;

---PATIENT_AGENT_SIGN  VARCHAR2(50)  Y    患者/法定代理人签名    S1  A..50
SELECT PATIENT_AGENT_SIGN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY PATIENT_AGENT_SIGN;

---RELATION_CODE  VARCHAR2(2)  Y    法定代理人与患者的关系代码  应符合国标：GB/T 4761—2008  S3  N1
SELECT RELATION_CODE FROM TRANSFUSION_INFORMED_CONSENT GROUP BY RELATION_CODE;

---SIGN_DATETIME  DATE  Y    患者/法定代理人签名日期时间    DT  DT15
SELECT SIGN_DATETIME FROM TRANSFUSION_INFORMED_CONSENT GROUP BY SIGN_DATETIME;

---DOCTOR_SIGN  VARCHAR2(50)  Y    医师签名    S1  A..50
SELECT DOCTOR_SIGN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY DOCTOR_SIGN;

---DOCTOR_SIGN_DATETIME  DATE  Y    医师签名日期时间    DT  DT15
SELECT DOCTOR_SIGN_DATETIME FROM TRANSFUSION_INFORMED_CONSENT GROUP BY DOCTOR_SIGN_DATETIME;

---TRANSFUSION_RISK  VARCHAR2(1000)  Y    输血风险及可能发生的不良后果      
SELECT TRANSFUSION_RISK FROM TRANSFUSION_INFORMED_CONSENT GROUP BY TRANSFUSION_RISK;

---LAST_MODIFIC_TIME  DATE  Y          
SELECT LAST_MODIFIC_TIME FROM TRANSFUSION_INFORMED_CONSENT GROUP BY LAST_MODIFIC_TIME;

---OUTPATIENT_SN  VARCHAR2(18)  Y    门（急）诊流水号      
SELECT OUTPATIENT_SN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY OUTPATIENT_SN;

---INPATIENT_SN  VARCHAR2(18)  Y    住院流水号      
SELECT INPATIENT_SN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INPATIENT_SN;

---DOC_NO  VARCHAR2(50)      文档编号      
SELECT DOC_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)      患者ID      
SELECT PATIENT_ID FROM TRANSFUSION_INFORMED_CONSENT GROUP BY PATIENT_ID;

---OUTP_NO  VARCHAR2(18)  Y    门（急）诊号    S1  AN..18
SELECT OUTP_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY OUTP_NO;

---INP_NO  VARCHAR2(18)  Y    住院号    S1  AN..18
SELECT INP_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INP_NO;

---INFORMED_CONSENT_NO  VARCHAR2(20)  Y    知情同意书编号    S1  AN..20
SELECT INFORMED_CONSENT_NO FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INFORMED_CONSENT_NO;

---BLOOD_TRANSFUSION_HISTORY  VARCHAR2(1)  Y    输血史标识代码  标准值：1.无  2.有  9.未说明  S2  N1
SELECT BLOOD_TRANSFUSION_HISTORY FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_HISTORY;

---BLOOD_TRANSFUSION_INDICATION  VARCHAR2(500)  Y    输血指征    S1  AN..500
SELECT BLOOD_TRANSFUSION_INDICATION FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_INDICATION;

---BLOOD_TRANSFUSION_VARIETY_CODE  VARCHAR2(2)  Y    输血品种代码  应符合国标：CV04.50.021  S3  N..2
SELECT BLOOD_TRANSFUSION_VARIETY_CODE FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_VARIETY_CODE;

---CHECK_TRANSFUS_ITEM_RESULTS  VARCHAR2(200)  Y    输血前有关检查项目及结果    S1  AN..200
SELECT CHECK_TRANSFUS_ITEM_RESULTS FROM TRANSFUSION_INFORMED_CONSENT GROUP BY CHECK_TRANSFUS_ITEM_RESULTS;

---BLOOD_TRANSFUSION_WAY  VARCHAR2(50)  Y    输血方式    S1  A..50
SELECT BLOOD_TRANSFUSION_WAY FROM TRANSFUSION_INFORMED_CONSENT GROUP BY BLOOD_TRANSFUSION_WAY;

---INTENT_TRANSFUSION_DATE  DATE  Y    拟定输血日期时间    DT  DT15
SELECT INTENT_TRANSFUSION_DATE FROM TRANSFUSION_INFORMED_CONSENT GROUP BY INTENT_TRANSFUSION_DATE;

---ORG_OPINION  VARCHAR2(2000)  Y    医疗机构意见    S1  AN..2000
SELECT ORG_OPINION FROM TRANSFUSION_INFORMED_CONSENT GROUP BY ORG_OPINION;

---PATIENT_AGENT_OPINION  VARCHAR2(2000)  Y    患者/法定代理人意见    S1  AN..2000
SELECT PATIENT_AGENT_OPINION FROM TRANSFUSION_INFORMED_CONSENT GROUP BY PATIENT_AGENT_OPINION;

---PATIENT_AGENT_SIGN  VARCHAR2(50)  Y    患者/法定代理人签名    S1  A..50
SELECT PATIENT_AGENT_SIGN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY PATIENT_AGENT_SIGN;

---RELATION_CODE  VARCHAR2(2)  Y    法定代理人与患者的关系代码  应符合国标：GB/T 4761—2008  S3  N1
SELECT RELATION_CODE FROM TRANSFUSION_INFORMED_CONSENT GROUP BY RELATION_CODE;

---SIGN_DATETIME  DATE  Y    患者/法定代理人签名日期时间    DT  DT15
SELECT SIGN_DATETIME FROM TRANSFUSION_INFORMED_CONSENT GROUP BY SIGN_DATETIME;

---DOCTOR_SIGN  VARCHAR2(50)  Y    医师签名    S1  A..50
SELECT DOCTOR_SIGN FROM TRANSFUSION_INFORMED_CONSENT GROUP BY DOCTOR_SIGN;

---DOCTOR_SIGN_DATETIME  DATE  Y    医师签名日期时间    DT  DT15
SELECT DOCTOR_SIGN_DATETIME FROM TRANSFUSION_INFORMED_CONSENT GROUP BY DOCTOR_SIGN_DATETIME;

---TRANSFUSION_RISK  VARCHAR2(1000)  Y    输血风险及可能发生的不良后果      
SELECT TRANSFUSION_RISK FROM TRANSFUSION_INFORMED_CONSENT GROUP BY TRANSFUSION_RISK;

---LAST_MODIFIC_TIME  DATE  Y          
SELECT LAST_MODIFIC_TIME FROM TRANSFUSION_INFORMED_CONSENT GROUP BY LAST_MODIFIC_TIME;

