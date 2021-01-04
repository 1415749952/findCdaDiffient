---OUTPATIENT_SN  VARCHAR2(18)  Y    门（急）诊流水号    null  null
SELECT OUTPATIENT_SN FROM DIAG_INFO GROUP BY OUTPATIENT_SN;

---INPATIENT_SN  VARCHAR2(18)  Y    住院流水号    null  null
SELECT INPATIENT_SN FROM DIAG_INFO GROUP BY INPATIENT_SN;

---DIAG_ID  VARCHAR2(18)      诊断ID    null  null
SELECT DIAG_ID FROM DIAG_INFO GROUP BY DIAG_ID;

---DIAG_SOURCE  VARCHAR2(100)  Y    诊断来源    null  null
SELECT DIAG_SOURCE FROM DIAG_INFO GROUP BY DIAG_SOURCE;

---DIAG_TYPE  VARCHAR2(100)  Y    诊断类型（1-门诊诊断、2-初步诊断，3-入院诊断，4-修正诊断，5-出院诊断,6-死亡诊断，7-术前诊断，8-术中诊断，9-术后诊断, 10-确定诊断，11-补充诊断，12-目前诊断，13-直接死亡原因）    null  null
SELECT DIAG_TYPE FROM DIAG_INFO GROUP BY DIAG_TYPE;

---DIAG_NAME  VARCHAR2(100)  Y    诊断名称    null  null
SELECT DIAG_NAME FROM DIAG_INFO GROUP BY DIAG_NAME;

---DIAG_CODE  VARCHAR2(100)  Y    诊断编码    null  null
SELECT DIAG_CODE FROM DIAG_INFO GROUP BY DIAG_CODE;

---DIAG_DATATIME  DATE  Y    诊断时间    null  null
SELECT DIAG_DATATIME FROM DIAG_INFO GROUP BY DIAG_DATATIME;

---DIAG_DOC_NAME  VARCHAR2(100)  Y    诊断医生    null  null
SELECT DIAG_DOC_NAME FROM DIAG_INFO GROUP BY DIAG_DOC_NAME;

---DIAG_DEPT_NAME  VARCHAR2(100)  Y    诊断科室    null  null
SELECT DIAG_DEPT_NAME FROM DIAG_INFO GROUP BY DIAG_DEPT_NAME;

---DIAG_DIAGNOSIS  VARCHAR2(100)  Y    主诊断标识（1-主诊断，2-其他诊断）    null  null
SELECT DIAG_DIAGNOSIS FROM DIAG_INFO GROUP BY DIAG_DIAGNOSIS;

---DIAG_NO  VARCHAR2(100)  Y    诊断序号（诊断顺位编码）    null  null
SELECT DIAG_NO FROM DIAG_INFO GROUP BY DIAG_NO;

---DIAG_CLASSIFICATIONS  VARCHAR2(100)  Y    诊断类别（1-西医诊断，2-中医诊断，3-中医症候）    null  null
SELECT DIAG_CLASSIFICATIONS FROM DIAG_INFO GROUP BY DIAG_CLASSIFICATIONS;

---LAST_MODIFIC_TIME  DATE  Y        null  null
SELECT LAST_MODIFIC_TIME FROM DIAG_INFO GROUP BY LAST_MODIFIC_TIME;

---OUTPATIENT_SN  VARCHAR2(18)  Y    门（急）诊流水号    null  null
SELECT OUTPATIENT_SN FROM DIAG_INFO GROUP BY OUTPATIENT_SN;

---INPATIENT_SN  VARCHAR2(18)  Y    住院流水号    null  null
SELECT INPATIENT_SN FROM DIAG_INFO GROUP BY INPATIENT_SN;

---DIAG_ID  VARCHAR2(18)      诊断ID    null  null
SELECT DIAG_ID FROM DIAG_INFO GROUP BY DIAG_ID;

---DIAG_SOURCE  VARCHAR2(100)  Y    诊断来源    null  null
SELECT DIAG_SOURCE FROM DIAG_INFO GROUP BY DIAG_SOURCE;

---DIAG_TYPE  VARCHAR2(100)  Y    诊断类型（1-门诊诊断、2-初步诊断，3-入院诊断，4-修正诊断，5-出院诊断,6-死亡诊断，7-术前诊断，8-术中诊断，9-术后诊断, 10-确定诊断，11-补充诊断，12-目前诊断，13-直接死亡原因）    null  null
SELECT DIAG_TYPE FROM DIAG_INFO GROUP BY DIAG_TYPE;

---DIAG_NAME  VARCHAR2(100)  Y    诊断名称    null  null
SELECT DIAG_NAME FROM DIAG_INFO GROUP BY DIAG_NAME;

---DIAG_CODE  VARCHAR2(100)  Y    诊断编码    null  null
SELECT DIAG_CODE FROM DIAG_INFO GROUP BY DIAG_CODE;

---DIAG_DATATIME  DATE  Y    诊断时间    null  null
SELECT DIAG_DATATIME FROM DIAG_INFO GROUP BY DIAG_DATATIME;

---DIAG_DOC_NAME  VARCHAR2(100)  Y    诊断医生    null  null
SELECT DIAG_DOC_NAME FROM DIAG_INFO GROUP BY DIAG_DOC_NAME;

---DIAG_DEPT_NAME  VARCHAR2(100)  Y    诊断科室    null  null
SELECT DIAG_DEPT_NAME FROM DIAG_INFO GROUP BY DIAG_DEPT_NAME;

---DIAG_DIAGNOSIS  VARCHAR2(100)  Y    主诊断标识（1-主诊断，2-其他诊断）    null  null
SELECT DIAG_DIAGNOSIS FROM DIAG_INFO GROUP BY DIAG_DIAGNOSIS;

---DIAG_NO  VARCHAR2(100)  Y    诊断序号（诊断顺位编码）    null  null
SELECT DIAG_NO FROM DIAG_INFO GROUP BY DIAG_NO;

---DIAG_CLASSIFICATIONS  VARCHAR2(100)  Y    诊断类别（1-西医诊断，2-中医诊断，3-中医症候）    null  null
SELECT DIAG_CLASSIFICATIONS FROM DIAG_INFO GROUP BY DIAG_CLASSIFICATIONS;

---LAST_MODIFIC_TIME  DATE  Y        null  null
SELECT LAST_MODIFIC_TIME FROM DIAG_INFO GROUP BY LAST_MODIFIC_TIME;

---OUTPATIENT_SN  VARCHAR2(18)  Y    门（急）诊流水号    null  null
SELECT OUTPATIENT_SN FROM DIAG_INFO GROUP BY OUTPATIENT_SN;

---INPATIENT_SN  VARCHAR2(18)  Y    住院流水号    null  null
SELECT INPATIENT_SN FROM DIAG_INFO GROUP BY INPATIENT_SN;

---DIAG_ID  VARCHAR2(18)      诊断ID    null  null
SELECT DIAG_ID FROM DIAG_INFO GROUP BY DIAG_ID;

---DIAG_SOURCE  VARCHAR2(100)  Y    诊断来源    null  null
SELECT DIAG_SOURCE FROM DIAG_INFO GROUP BY DIAG_SOURCE;

---DIAG_TYPE  VARCHAR2(100)  Y    诊断类型（1-门诊诊断、2-初步诊断，3-入院诊断，4-修正诊断，5-出院诊断,6-死亡诊断，7-术前诊断，8-术中诊断，9-术后诊断, 10-确定诊断，11-补充诊断，12-目前诊断，13-直接死亡原因）    null  null
SELECT DIAG_TYPE FROM DIAG_INFO GROUP BY DIAG_TYPE;

---DIAG_NAME  VARCHAR2(100)  Y    诊断名称    null  null
SELECT DIAG_NAME FROM DIAG_INFO GROUP BY DIAG_NAME;

---DIAG_CODE  VARCHAR2(100)  Y    诊断编码    null  null
SELECT DIAG_CODE FROM DIAG_INFO GROUP BY DIAG_CODE;

---DIAG_DATATIME  DATE  Y    诊断时间    null  null
SELECT DIAG_DATATIME FROM DIAG_INFO GROUP BY DIAG_DATATIME;

---DIAG_DOC_NAME  VARCHAR2(100)  Y    诊断医生    null  null
SELECT DIAG_DOC_NAME FROM DIAG_INFO GROUP BY DIAG_DOC_NAME;

---DIAG_DEPT_NAME  VARCHAR2(100)  Y    诊断科室    null  null
SELECT DIAG_DEPT_NAME FROM DIAG_INFO GROUP BY DIAG_DEPT_NAME;

---DIAG_DIAGNOSIS  VARCHAR2(100)  Y    主诊断标识（1-主诊断，2-其他诊断）    null  null
SELECT DIAG_DIAGNOSIS FROM DIAG_INFO GROUP BY DIAG_DIAGNOSIS;

---DIAG_NO  VARCHAR2(100)  Y    诊断序号（诊断顺位编码）    null  null
SELECT DIAG_NO FROM DIAG_INFO GROUP BY DIAG_NO;

---DIAG_CLASSIFICATIONS  VARCHAR2(100)  Y    诊断类别（1-西医诊断，2-中医诊断，3-中医症候）    null  null
SELECT DIAG_CLASSIFICATIONS FROM DIAG_INFO GROUP BY DIAG_CLASSIFICATIONS;

---LAST_MODIFIC_TIME  DATE  Y        null  null
SELECT LAST_MODIFIC_TIME FROM DIAG_INFO GROUP BY LAST_MODIFIC_TIME;

