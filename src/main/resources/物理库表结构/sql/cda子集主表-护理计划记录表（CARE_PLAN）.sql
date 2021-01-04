---INPATIENT_SN  VARCHAR2(18)      住院流水号      
SELECT INPATIENT_SN FROM CARE_PLAN GROUP BY INPATIENT_SN;

---DOC_NO  VARCHAR2(50)      文档编号      
SELECT DOC_NO FROM CARE_PLAN GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)  Y    患者ID      
SELECT PATIENT_ID FROM CARE_PLAN GROUP BY PATIENT_ID;

---INP_NO  VARCHAR2(18)  Y    住院号    S1  AN..18
SELECT INP_NO FROM CARE_PLAN GROUP BY INP_NO;

---NURSING_GRADE_CODE  NUMBER(1)  Y    护理等级代码  应符合国标：CV06.00.220  S3  N1
SELECT NURSING_GRADE_CODE FROM CARE_PLAN GROUP BY NURSING_GRADE_CODE;

---NURSING_TYPE_CODE  NUMBER(1)  Y    护理类型代码  应符合国标：CV06.00.221  S3  N1
SELECT NURSING_TYPE_CODE FROM CARE_PLAN GROUP BY NURSING_TYPE_CODE;

---NURSING_PROBLEMS  VARCHAR2(1000)  Y    护理问题    S1  AN..1000
SELECT NURSING_PROBLEMS FROM CARE_PLAN GROUP BY NURSING_PROBLEMS;

---ENDOTRACHEAL_CARE_DESC  VARCHAR2(1000)  Y    导管护理描述    S1  AN..1000
SELECT ENDOTRACHEAL_CARE_DESC FROM CARE_PLAN GROUP BY ENDOTRACHEAL_CARE_DESC;

---BODY_POSITION_CARE  VARCHAR2(30)  Y    体位护理    S1  AN..30
SELECT BODY_POSITION_CARE FROM CARE_PLAN GROUP BY BODY_POSITION_CARE;

---SKIN_CARE  VARCHAR2(50)  Y    皮肤护理    S1  AN..50
SELECT SKIN_CARE FROM CARE_PLAN GROUP BY SKIN_CARE;

---ENDOTRACHEAL_CARE_CODE  NUMBER(1)  Y    气管护理代码  标准值： 1.翻身拍背  2.雾化吸人  3.吸痰  S2  N1
SELECT ENDOTRACHEAL_CARE_CODE FROM CARE_PLAN GROUP BY ENDOTRACHEAL_CARE_CODE;

---SAFETY_NURSING_CODE  NUMBER(1)  Y    安全护理代码  标准值：1.勤巡视病房  2.加床档  3.约束四肢  S2  N1
SELECT SAFETY_NURSING_CODE FROM CARE_PLAN GROUP BY SAFETY_NURSING_CODE;

---DIET_GUIDE_CODE  VARCHAR2(2)  Y    饮食指导代码  应符合国标：CV06.00.224  S3  N2
SELECT DIET_GUIDE_CODE FROM CARE_PLAN GROUP BY DIET_GUIDE_CODE;

---NURSING_SIGN  VARCHAR2(50)  Y    护士签名    S1  A..50
SELECT NURSING_SIGN FROM CARE_PLAN GROUP BY NURSING_SIGN;

---GENERAL_NURSING_ID  VARCHAR2(18)  Y    护理记录唯一标识      
SELECT GENERAL_NURSING_ID FROM CARE_PLAN GROUP BY GENERAL_NURSING_ID;

---SIGN_DATETIME  DATE  Y    签名日期时间    DT  DT15
SELECT SIGN_DATETIME FROM CARE_PLAN GROUP BY SIGN_DATETIME;

---LAST_MODIFIC_TIME  DATE  Y    最后修改时间      
SELECT LAST_MODIFIC_TIME FROM CARE_PLAN GROUP BY LAST_MODIFIC_TIME;

---DOCTOR_SIGN  VARCHAR2(50)  Y    访视医生签名      
SELECT DOCTOR_SIGN FROM CARE_PLAN GROUP BY DOCTOR_SIGN;

---INPATIENT_SN  VARCHAR2(18)      住院流水号      
SELECT INPATIENT_SN FROM CARE_PLAN GROUP BY INPATIENT_SN;

---DOC_NO  VARCHAR2(50)      文档编号      
SELECT DOC_NO FROM CARE_PLAN GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)  Y    患者ID      
SELECT PATIENT_ID FROM CARE_PLAN GROUP BY PATIENT_ID;

---INP_NO  VARCHAR2(18)  Y    住院号    S1  AN..18
SELECT INP_NO FROM CARE_PLAN GROUP BY INP_NO;

---NURSING_GRADE_CODE  NUMBER(1)  Y    护理等级代码  应符合国标：CV06.00.220  S3  N1
SELECT NURSING_GRADE_CODE FROM CARE_PLAN GROUP BY NURSING_GRADE_CODE;

---NURSING_TYPE_CODE  NUMBER(1)  Y    护理类型代码  应符合国标：CV06.00.221  S3  N1
SELECT NURSING_TYPE_CODE FROM CARE_PLAN GROUP BY NURSING_TYPE_CODE;

---NURSING_PROBLEMS  VARCHAR2(1000)  Y    护理问题    S1  AN..1000
SELECT NURSING_PROBLEMS FROM CARE_PLAN GROUP BY NURSING_PROBLEMS;

---ENDOTRACHEAL_CARE_DESC  VARCHAR2(1000)  Y    导管护理描述    S1  AN..1000
SELECT ENDOTRACHEAL_CARE_DESC FROM CARE_PLAN GROUP BY ENDOTRACHEAL_CARE_DESC;

---BODY_POSITION_CARE  VARCHAR2(30)  Y    体位护理    S1  AN..30
SELECT BODY_POSITION_CARE FROM CARE_PLAN GROUP BY BODY_POSITION_CARE;

---SKIN_CARE  VARCHAR2(50)  Y    皮肤护理    S1  AN..50
SELECT SKIN_CARE FROM CARE_PLAN GROUP BY SKIN_CARE;

---ENDOTRACHEAL_CARE_CODE  NUMBER(1)  Y    气管护理代码  标准值： 1.翻身拍背  2.雾化吸人  3.吸痰  S2  N1
SELECT ENDOTRACHEAL_CARE_CODE FROM CARE_PLAN GROUP BY ENDOTRACHEAL_CARE_CODE;

---SAFETY_NURSING_CODE  NUMBER(1)  Y    安全护理代码  标准值：1.勤巡视病房  2.加床档  3.约束四肢  S2  N1
SELECT SAFETY_NURSING_CODE FROM CARE_PLAN GROUP BY SAFETY_NURSING_CODE;

---DIET_GUIDE_CODE  VARCHAR2(2)  Y    饮食指导代码  应符合国标：CV06.00.224  S3  N2
SELECT DIET_GUIDE_CODE FROM CARE_PLAN GROUP BY DIET_GUIDE_CODE;

---NURSING_SIGN  VARCHAR2(50)  Y    护士签名    S1  A..50
SELECT NURSING_SIGN FROM CARE_PLAN GROUP BY NURSING_SIGN;

---GENERAL_NURSING_ID  VARCHAR2(18)  Y    护理记录唯一标识      
SELECT GENERAL_NURSING_ID FROM CARE_PLAN GROUP BY GENERAL_NURSING_ID;

---SIGN_DATETIME  DATE  Y    签名日期时间    DT  DT15
SELECT SIGN_DATETIME FROM CARE_PLAN GROUP BY SIGN_DATETIME;

---LAST_MODIFIC_TIME  DATE  Y    最后修改时间      
SELECT LAST_MODIFIC_TIME FROM CARE_PLAN GROUP BY LAST_MODIFIC_TIME;

---DOCTOR_SIGN  VARCHAR2(50)  Y    访视医生签名      
SELECT DOCTOR_SIGN FROM CARE_PLAN GROUP BY DOCTOR_SIGN;

---INPATIENT_SN  VARCHAR2(18)      住院流水号      
SELECT INPATIENT_SN FROM CARE_PLAN GROUP BY INPATIENT_SN;

---DOC_NO  VARCHAR2(50)      文档编号      
SELECT DOC_NO FROM CARE_PLAN GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)  Y    患者ID      
SELECT PATIENT_ID FROM CARE_PLAN GROUP BY PATIENT_ID;

---INP_NO  VARCHAR2(18)  Y    住院号    S1  AN..18
SELECT INP_NO FROM CARE_PLAN GROUP BY INP_NO;

---NURSING_GRADE_CODE  NUMBER(1)  Y    护理等级代码  应符合国标：CV06.00.220  S3  N1
SELECT NURSING_GRADE_CODE FROM CARE_PLAN GROUP BY NURSING_GRADE_CODE;

---NURSING_TYPE_CODE  NUMBER(1)  Y    护理类型代码  应符合国标：CV06.00.221  S3  N1
SELECT NURSING_TYPE_CODE FROM CARE_PLAN GROUP BY NURSING_TYPE_CODE;

---NURSING_PROBLEMS  VARCHAR2(1000)  Y    护理问题    S1  AN..1000
SELECT NURSING_PROBLEMS FROM CARE_PLAN GROUP BY NURSING_PROBLEMS;

---ENDOTRACHEAL_CARE_DESC  VARCHAR2(1000)  Y    导管护理描述    S1  AN..1000
SELECT ENDOTRACHEAL_CARE_DESC FROM CARE_PLAN GROUP BY ENDOTRACHEAL_CARE_DESC;

---BODY_POSITION_CARE  VARCHAR2(30)  Y    体位护理    S1  AN..30
SELECT BODY_POSITION_CARE FROM CARE_PLAN GROUP BY BODY_POSITION_CARE;

---SKIN_CARE  VARCHAR2(50)  Y    皮肤护理    S1  AN..50
SELECT SKIN_CARE FROM CARE_PLAN GROUP BY SKIN_CARE;

---ENDOTRACHEAL_CARE_CODE  NUMBER(1)  Y    气管护理代码  标准值： 1.翻身拍背  2.雾化吸人  3.吸痰  S2  N1
SELECT ENDOTRACHEAL_CARE_CODE FROM CARE_PLAN GROUP BY ENDOTRACHEAL_CARE_CODE;

---SAFETY_NURSING_CODE  NUMBER(1)  Y    安全护理代码  标准值：1.勤巡视病房  2.加床档  3.约束四肢  S2  N1
SELECT SAFETY_NURSING_CODE FROM CARE_PLAN GROUP BY SAFETY_NURSING_CODE;

---DIET_GUIDE_CODE  VARCHAR2(2)  Y    饮食指导代码  应符合国标：CV06.00.224  S3  N2
SELECT DIET_GUIDE_CODE FROM CARE_PLAN GROUP BY DIET_GUIDE_CODE;

---NURSING_SIGN  VARCHAR2(50)  Y    护士签名    S1  A..50
SELECT NURSING_SIGN FROM CARE_PLAN GROUP BY NURSING_SIGN;

---GENERAL_NURSING_ID  VARCHAR2(18)  Y    护理记录唯一标识      
SELECT GENERAL_NURSING_ID FROM CARE_PLAN GROUP BY GENERAL_NURSING_ID;

---SIGN_DATETIME  DATE  Y    签名日期时间    DT  DT15
SELECT SIGN_DATETIME FROM CARE_PLAN GROUP BY SIGN_DATETIME;

---LAST_MODIFIC_TIME  DATE  Y    最后修改时间      
SELECT LAST_MODIFIC_TIME FROM CARE_PLAN GROUP BY LAST_MODIFIC_TIME;

---DOCTOR_SIGN  VARCHAR2(50)  Y    访视医生签名      
SELECT DOCTOR_SIGN FROM CARE_PLAN GROUP BY DOCTOR_SIGN;

