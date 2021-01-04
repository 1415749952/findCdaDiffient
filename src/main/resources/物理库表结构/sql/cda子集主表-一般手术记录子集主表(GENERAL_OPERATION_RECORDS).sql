---OUTPATIENT_SN  VARCHAR2(18)  Y    门（急）诊流水号    null  
SELECT OUTPATIENT_SN FROM GENERAL_OPERATION_RECORDS GROUP BY OUTPATIENT_SN;

---INPATIENT_SN  VARCHAR2(18)  Y    住院流水号    null  
SELECT INPATIENT_SN FROM GENERAL_OPERATION_RECORDS GROUP BY INPATIENT_SN;

---OUTP_NO  VARCHAR2(18)  Y    门（急）诊号    null  AN..18
SELECT OUTP_NO FROM GENERAL_OPERATION_RECORDS GROUP BY OUTP_NO;

---INP_NO  VARCHAR2(18)  Y    住院号    null  AN..18
SELECT INP_NO FROM GENERAL_OPERATION_RECORDS GROUP BY INP_NO;

---DOC_NO  VARCHAR2(50)      文档编号    null  
SELECT DOC_NO FROM GENERAL_OPERATION_RECORDS GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)      患者ID    null  
SELECT PATIENT_ID FROM GENERAL_OPERATION_RECORDS GROUP BY PATIENT_ID;

---OPERA_SN  VARCHAR2(18)  Y    手术记录流水号    null  
SELECT OPERA_SN FROM GENERAL_OPERATION_RECORDS GROUP BY OPERA_SN;

---ELECTRONIC_APPLY_NO  VARCHAR2(20)  Y    电子申请单编号  —  null  AN..20
SELECT ELECTRONIC_APPLY_NO FROM GENERAL_OPERATION_RECORDS GROUP BY ELECTRONIC_APPLY_NO;

---OPERATION_PROCESS_DESC  VARCHAR2(2000)  Y    手术过程描述  —  null  AN..2000
SELECT OPERATION_PROCESS_DESC FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_PROCESS_DESC;

---OPERATION_FLAG  VARCHAR2(5)  Y    手术史标志  TRUE/FALSE  null  T/F
SELECT OPERATION_FLAG FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_FLAG;

---SKIN_DISINFECTION_DESC  VARCHAR2(200)  Y    皮肤消毒描述  —  null  AN..200
SELECT SKIN_DISINFECTION_DESC FROM GENERAL_OPERATION_RECORDS GROUP BY SKIN_DISINFECTION_DESC;

---OPERATION_INCISION_DESC  VARCHAR2(200)  Y    手术切口描述  —  null  AN..200
SELECT OPERATION_INCISION_DESC FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_INCISION_DESC;

---IS_DRAINAGE  VARCHAR2(5)  Y    引流标志  TRUE/FALSE  null  T/F
SELECT IS_DRAINAGE FROM GENERAL_OPERATION_RECORDS GROUP BY IS_DRAINAGE;

---OPERATION_BLEEDING  NUMBER(5)  Y    出血量（mL)  —  null  N..5
SELECT OPERATION_BLEEDING FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_BLEEDING;

---OPERATION_INFUSION  NUMBER(5)  Y    输液量(mL)  —  null  N..5
SELECT OPERATION_INFUSION FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_INFUSION;

---BLOOD_TRANSFERED_VALUE  NUMBER(4)  Y    输血量(mL)  —  null  N..4
SELECT BLOOD_TRANSFERED_VALUE FROM GENERAL_OPERATION_RECORDS GROUP BY BLOOD_TRANSFERED_VALUE;

---DRAINAGE_MATERIAL  VARCHAR2(200)  Y    引流材料名称  —  null  AN..200
SELECT DRAINAGE_MATERIAL FROM GENERAL_OPERATION_RECORDS GROUP BY DRAINAGE_MATERIAL;

---DRAINAGE_MATERIAL_NUM  VARCHAR2(200)  Y    引流材料数目  —  null  AN..200
SELECT DRAINAGE_MATERIAL_NUM FROM GENERAL_OPERATION_RECORDS GROUP BY DRAINAGE_MATERIAL_NUM;

---OPERATION_PLACE  VARCHAR2(50)  Y    放置部位  —  null  AN..50
SELECT OPERATION_PLACE FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_PLACE;

---BLOODTRANSFERED_REACTION_CODE  VARCHAR2(5)  Y    输血反应标志  TRUE/FALSE  null  T/F
SELECT BLOODTRANSFERED_REACTION_CODE FROM GENERAL_OPERATION_RECORDS GROUP BY BLOODTRANSFERED_REACTION_CODE;

---OPERATION_DOCTOR_NAME  VARCHAR2(50)  Y    手术者姓名  —  null  A..50
SELECT OPERATION_DOCTOR_NAME FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_DOCTOR_NAME;

---SIGN_DATETIME  DATE  Y    签名日期时间  —  null  DT15
SELECT SIGN_DATETIME FROM GENERAL_OPERATION_RECORDS GROUP BY SIGN_DATETIME;

---LAST_MODIFIC_TIME  DATE  Y    最后修改时间    null  
SELECT LAST_MODIFIC_TIME FROM GENERAL_OPERATION_RECORDS GROUP BY LAST_MODIFIC_TIME;

---OUTPATIENT_SN  VARCHAR2(18)  Y    门（急）诊流水号    null  
SELECT OUTPATIENT_SN FROM GENERAL_OPERATION_RECORDS GROUP BY OUTPATIENT_SN;

---INPATIENT_SN  VARCHAR2(18)  Y    住院流水号    null  
SELECT INPATIENT_SN FROM GENERAL_OPERATION_RECORDS GROUP BY INPATIENT_SN;

---OUTP_NO  VARCHAR2(18)  Y    门（急）诊号    null  AN..18
SELECT OUTP_NO FROM GENERAL_OPERATION_RECORDS GROUP BY OUTP_NO;

---INP_NO  VARCHAR2(18)  Y    住院号    null  AN..18
SELECT INP_NO FROM GENERAL_OPERATION_RECORDS GROUP BY INP_NO;

---DOC_NO  VARCHAR2(50)      文档编号    null  
SELECT DOC_NO FROM GENERAL_OPERATION_RECORDS GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)      患者ID    null  
SELECT PATIENT_ID FROM GENERAL_OPERATION_RECORDS GROUP BY PATIENT_ID;

---OPERA_SN  VARCHAR2(18)  Y    手术记录流水号    null  
SELECT OPERA_SN FROM GENERAL_OPERATION_RECORDS GROUP BY OPERA_SN;

---ELECTRONIC_APPLY_NO  VARCHAR2(20)  Y    电子申请单编号  —  null  AN..20
SELECT ELECTRONIC_APPLY_NO FROM GENERAL_OPERATION_RECORDS GROUP BY ELECTRONIC_APPLY_NO;

---OPERATION_PROCESS_DESC  VARCHAR2(2000)  Y    手术过程描述  —  null  AN..2000
SELECT OPERATION_PROCESS_DESC FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_PROCESS_DESC;

---OPERATION_FLAG  VARCHAR2(5)  Y    手术史标志  TRUE/FALSE  null  T/F
SELECT OPERATION_FLAG FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_FLAG;

---SKIN_DISINFECTION_DESC  VARCHAR2(200)  Y    皮肤消毒描述  —  null  AN..200
SELECT SKIN_DISINFECTION_DESC FROM GENERAL_OPERATION_RECORDS GROUP BY SKIN_DISINFECTION_DESC;

---OPERATION_INCISION_DESC  VARCHAR2(200)  Y    手术切口描述  —  null  AN..200
SELECT OPERATION_INCISION_DESC FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_INCISION_DESC;

---IS_DRAINAGE  VARCHAR2(5)  Y    引流标志  TRUE/FALSE  null  T/F
SELECT IS_DRAINAGE FROM GENERAL_OPERATION_RECORDS GROUP BY IS_DRAINAGE;

---OPERATION_BLEEDING  NUMBER(5)  Y    出血量（mL)  —  null  N..5
SELECT OPERATION_BLEEDING FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_BLEEDING;

---OPERATION_INFUSION  NUMBER(5)  Y    输液量(mL)  —  null  N..5
SELECT OPERATION_INFUSION FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_INFUSION;

---BLOOD_TRANSFERED_VALUE  NUMBER(4)  Y    输血量(mL)  —  null  N..4
SELECT BLOOD_TRANSFERED_VALUE FROM GENERAL_OPERATION_RECORDS GROUP BY BLOOD_TRANSFERED_VALUE;

---DRAINAGE_MATERIAL  VARCHAR2(200)  Y    引流材料名称  —  null  AN..200
SELECT DRAINAGE_MATERIAL FROM GENERAL_OPERATION_RECORDS GROUP BY DRAINAGE_MATERIAL;

---DRAINAGE_MATERIAL_NUM  VARCHAR2(200)  Y    引流材料数目  —  null  AN..200
SELECT DRAINAGE_MATERIAL_NUM FROM GENERAL_OPERATION_RECORDS GROUP BY DRAINAGE_MATERIAL_NUM;

---OPERATION_PLACE  VARCHAR2(50)  Y    放置部位  —  null  AN..50
SELECT OPERATION_PLACE FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_PLACE;

---BLOODTRANSFERED_REACTION_CODE  VARCHAR2(5)  Y    输血反应标志  TRUE/FALSE  null  T/F
SELECT BLOODTRANSFERED_REACTION_CODE FROM GENERAL_OPERATION_RECORDS GROUP BY BLOODTRANSFERED_REACTION_CODE;

---OPERATION_DOCTOR_NAME  VARCHAR2(50)  Y    手术者姓名  —  null  A..50
SELECT OPERATION_DOCTOR_NAME FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_DOCTOR_NAME;

---SIGN_DATETIME  DATE  Y    签名日期时间  —  null  DT15
SELECT SIGN_DATETIME FROM GENERAL_OPERATION_RECORDS GROUP BY SIGN_DATETIME;

---LAST_MODIFIC_TIME  DATE  Y    最后修改时间    null  
SELECT LAST_MODIFIC_TIME FROM GENERAL_OPERATION_RECORDS GROUP BY LAST_MODIFIC_TIME;

---OUTPATIENT_SN  VARCHAR2(18)  Y    门（急）诊流水号    null  
SELECT OUTPATIENT_SN FROM GENERAL_OPERATION_RECORDS GROUP BY OUTPATIENT_SN;

---INPATIENT_SN  VARCHAR2(18)  Y    住院流水号    null  
SELECT INPATIENT_SN FROM GENERAL_OPERATION_RECORDS GROUP BY INPATIENT_SN;

---OUTP_NO  VARCHAR2(18)  Y    门（急）诊号    null  AN..18
SELECT OUTP_NO FROM GENERAL_OPERATION_RECORDS GROUP BY OUTP_NO;

---INP_NO  VARCHAR2(18)  Y    住院号    null  AN..18
SELECT INP_NO FROM GENERAL_OPERATION_RECORDS GROUP BY INP_NO;

---DOC_NO  VARCHAR2(50)      文档编号    null  
SELECT DOC_NO FROM GENERAL_OPERATION_RECORDS GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)      患者ID    null  
SELECT PATIENT_ID FROM GENERAL_OPERATION_RECORDS GROUP BY PATIENT_ID;

---OPERA_SN  VARCHAR2(18)  Y    手术记录流水号    null  
SELECT OPERA_SN FROM GENERAL_OPERATION_RECORDS GROUP BY OPERA_SN;

---ELECTRONIC_APPLY_NO  VARCHAR2(20)  Y    电子申请单编号  —  null  AN..20
SELECT ELECTRONIC_APPLY_NO FROM GENERAL_OPERATION_RECORDS GROUP BY ELECTRONIC_APPLY_NO;

---OPERATION_PROCESS_DESC  VARCHAR2(2000)  Y    手术过程描述  —  null  AN..2000
SELECT OPERATION_PROCESS_DESC FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_PROCESS_DESC;

---OPERATION_FLAG  VARCHAR2(5)  Y    手术史标志  TRUE/FALSE  null  T/F
SELECT OPERATION_FLAG FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_FLAG;

---SKIN_DISINFECTION_DESC  VARCHAR2(200)  Y    皮肤消毒描述  —  null  AN..200
SELECT SKIN_DISINFECTION_DESC FROM GENERAL_OPERATION_RECORDS GROUP BY SKIN_DISINFECTION_DESC;

---OPERATION_INCISION_DESC  VARCHAR2(200)  Y    手术切口描述  —  null  AN..200
SELECT OPERATION_INCISION_DESC FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_INCISION_DESC;

---IS_DRAINAGE  VARCHAR2(5)  Y    引流标志  TRUE/FALSE  null  T/F
SELECT IS_DRAINAGE FROM GENERAL_OPERATION_RECORDS GROUP BY IS_DRAINAGE;

---OPERATION_BLEEDING  NUMBER(5)  Y    出血量（mL)  —  null  N..5
SELECT OPERATION_BLEEDING FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_BLEEDING;

---OPERATION_INFUSION  NUMBER(5)  Y    输液量(mL)  —  null  N..5
SELECT OPERATION_INFUSION FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_INFUSION;

---BLOOD_TRANSFERED_VALUE  NUMBER(4)  Y    输血量(mL)  —  null  N..4
SELECT BLOOD_TRANSFERED_VALUE FROM GENERAL_OPERATION_RECORDS GROUP BY BLOOD_TRANSFERED_VALUE;

---DRAINAGE_MATERIAL  VARCHAR2(200)  Y    引流材料名称  —  null  AN..200
SELECT DRAINAGE_MATERIAL FROM GENERAL_OPERATION_RECORDS GROUP BY DRAINAGE_MATERIAL;

---DRAINAGE_MATERIAL_NUM  VARCHAR2(200)  Y    引流材料数目  —  null  AN..200
SELECT DRAINAGE_MATERIAL_NUM FROM GENERAL_OPERATION_RECORDS GROUP BY DRAINAGE_MATERIAL_NUM;

---OPERATION_PLACE  VARCHAR2(50)  Y    放置部位  —  null  AN..50
SELECT OPERATION_PLACE FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_PLACE;

---BLOODTRANSFERED_REACTION_CODE  VARCHAR2(5)  Y    输血反应标志  TRUE/FALSE  null  T/F
SELECT BLOODTRANSFERED_REACTION_CODE FROM GENERAL_OPERATION_RECORDS GROUP BY BLOODTRANSFERED_REACTION_CODE;

---OPERATION_DOCTOR_NAME  VARCHAR2(50)  Y    手术者姓名  —  null  A..50
SELECT OPERATION_DOCTOR_NAME FROM GENERAL_OPERATION_RECORDS GROUP BY OPERATION_DOCTOR_NAME;

---SIGN_DATETIME  DATE  Y    签名日期时间  —  null  DT15
SELECT SIGN_DATETIME FROM GENERAL_OPERATION_RECORDS GROUP BY SIGN_DATETIME;

---LAST_MODIFIC_TIME  DATE  Y    最后修改时间    null  
SELECT LAST_MODIFIC_TIME FROM GENERAL_OPERATION_RECORDS GROUP BY LAST_MODIFIC_TIME;

