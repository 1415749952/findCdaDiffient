---INPATIENT_SN  VARCHAR2(18)      住院流水号      
SELECT INPATIENT_SN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY INPATIENT_SN;

---DOC_NO  VARCHAR2(50)      文档编号      
SELECT DOC_NO FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)      患者ID      
SELECT PATIENT_ID FROM INTRACTABLE_DISCUSS_RECORD GROUP BY PATIENT_ID;

---INP_NO  VARCHAR2(18)      住院号    S1  AN..18
SELECT INP_NO FROM INTRACTABLE_DISCUSS_RECORD GROUP BY INP_NO;

---DISCUSS_DATATIME  DATE  Y    讨论日期时间    DT  DT15
SELECT DISCUSS_DATATIME FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_DATATIME;

---DISCUSS_PLACE  VARCHAR2(50)  Y    讨论地点    S1  AN..50
SELECT DISCUSS_PLACE FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_PLACE;

---DISCUSS_NAMES  VARCHAR2(200)  Y    参加讨论人员名单    S1  A..200
SELECT DISCUSS_NAMES FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_NAMES;

---COMPERE_NAME  VARCHAR2(50)  Y    主持人姓名    S1  A..50
SELECT COMPERE_NAME FROM INTRACTABLE_DISCUSS_RECORD GROUP BY COMPERE_NAME;

---DISCUSS_SUGGESTION  VARCHAR2(2000)  Y    讨论意见    S1  AN..2000
SELECT DISCUSS_SUGGESTION FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_SUGGESTION;

---TCM_FOUR_RESULTS  VARCHAR2(1000)  Y    中医“四诊”观察结果    S1  AN..1000
SELECT TCM_FOUR_RESULTS FROM INTRACTABLE_DISCUSS_RECORD GROUP BY TCM_FOUR_RESULTS;

---DIALECTICAL_DESC  VARCHAR2(1000)  Y    辨证论治详细描述    S1  AN..1000
SELECT DIALECTICAL_DESC FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DIALECTICAL_DESC;

---ADVICE_CONTENT  VARCHAR2(1000)  Y    中药处方医嘱内容    S1  AN..1000
SELECT ADVICE_CONTENT FROM INTRACTABLE_DISCUSS_RECORD GROUP BY ADVICE_CONTENT;

---CHIN_DRINK_DECWAY  VARCHAR2(1000)  Y    中药用药方法    S1  AN..100
SELECT CHIN_DRINK_DECWAY FROM INTRACTABLE_DISCUSS_RECORD GROUP BY CHIN_DRINK_DECWAY;

---COMPERE_SUMMARY_SUGGESTION  VARCHAR2(2000)  Y    主持人总结意见    S1  AN..2000
SELECT COMPERE_SUMMARY_SUGGESTION FROM INTRACTABLE_DISCUSS_RECORD GROUP BY COMPERE_SUMMARY_SUGGESTION;

---DOCTOR_SIGN  VARCHAR2(50)  Y    医师签名    S1  A..50
SELECT DOCTOR_SIGN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DOCTOR_SIGN;

---PHYSICIAN_DOCTOR_SIGN  VARCHAR2(50)  Y    主治医师签名    S1  A..50
SELECT PHYSICIAN_DOCTOR_SIGN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY PHYSICIAN_DOCTOR_SIGN;

---ARCHIATER_DOCTOR_SIGN  VARCHAR2(50)  Y    主任医师签名    S1  A..50
SELECT ARCHIATER_DOCTOR_SIGN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY ARCHIATER_DOCTOR_SIGN;

---CHIN_DECOC_DECWAY  VARCHAR2(100)  Y    中药煎煮法      
SELECT CHIN_DECOC_DECWAY FROM INTRACTABLE_DISCUSS_RECORD GROUP BY CHIN_DECOC_DECWAY;

---LAST_MODIFIC_TIME  DATE  Y          
SELECT LAST_MODIFIC_TIME FROM INTRACTABLE_DISCUSS_RECORD GROUP BY LAST_MODIFIC_TIME;

---INPATIENT_SN  VARCHAR2(18)      住院流水号      
SELECT INPATIENT_SN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY INPATIENT_SN;

---DOC_NO  VARCHAR2(50)      文档编号      
SELECT DOC_NO FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)      患者ID      
SELECT PATIENT_ID FROM INTRACTABLE_DISCUSS_RECORD GROUP BY PATIENT_ID;

---INP_NO  VARCHAR2(18)      住院号    S1  AN..18
SELECT INP_NO FROM INTRACTABLE_DISCUSS_RECORD GROUP BY INP_NO;

---DISCUSS_DATATIME  DATE  Y    讨论日期时间    DT  DT15
SELECT DISCUSS_DATATIME FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_DATATIME;

---DISCUSS_PLACE  VARCHAR2(50)  Y    讨论地点    S1  AN..50
SELECT DISCUSS_PLACE FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_PLACE;

---DISCUSS_NAMES  VARCHAR2(200)  Y    参加讨论人员名单    S1  A..200
SELECT DISCUSS_NAMES FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_NAMES;

---COMPERE_NAME  VARCHAR2(50)  Y    主持人姓名    S1  A..50
SELECT COMPERE_NAME FROM INTRACTABLE_DISCUSS_RECORD GROUP BY COMPERE_NAME;

---DISCUSS_SUGGESTION  VARCHAR2(2000)  Y    讨论意见    S1  AN..2000
SELECT DISCUSS_SUGGESTION FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_SUGGESTION;

---TCM_FOUR_RESULTS  VARCHAR2(1000)  Y    中医“四诊”观察结果    S1  AN..1000
SELECT TCM_FOUR_RESULTS FROM INTRACTABLE_DISCUSS_RECORD GROUP BY TCM_FOUR_RESULTS;

---DIALECTICAL_DESC  VARCHAR2(1000)  Y    辨证论治详细描述    S1  AN..1000
SELECT DIALECTICAL_DESC FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DIALECTICAL_DESC;

---ADVICE_CONTENT  VARCHAR2(1000)  Y    中药处方医嘱内容    S1  AN..1000
SELECT ADVICE_CONTENT FROM INTRACTABLE_DISCUSS_RECORD GROUP BY ADVICE_CONTENT;

---CHIN_DRINK_DECWAY  VARCHAR2(1000)  Y    中药用药方法    S1  AN..100
SELECT CHIN_DRINK_DECWAY FROM INTRACTABLE_DISCUSS_RECORD GROUP BY CHIN_DRINK_DECWAY;

---COMPERE_SUMMARY_SUGGESTION  VARCHAR2(2000)  Y    主持人总结意见    S1  AN..2000
SELECT COMPERE_SUMMARY_SUGGESTION FROM INTRACTABLE_DISCUSS_RECORD GROUP BY COMPERE_SUMMARY_SUGGESTION;

---DOCTOR_SIGN  VARCHAR2(50)  Y    医师签名    S1  A..50
SELECT DOCTOR_SIGN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DOCTOR_SIGN;

---PHYSICIAN_DOCTOR_SIGN  VARCHAR2(50)  Y    主治医师签名    S1  A..50
SELECT PHYSICIAN_DOCTOR_SIGN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY PHYSICIAN_DOCTOR_SIGN;

---ARCHIATER_DOCTOR_SIGN  VARCHAR2(50)  Y    主任医师签名    S1  A..50
SELECT ARCHIATER_DOCTOR_SIGN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY ARCHIATER_DOCTOR_SIGN;

---CHIN_DECOC_DECWAY  VARCHAR2(100)  Y    中药煎煮法      
SELECT CHIN_DECOC_DECWAY FROM INTRACTABLE_DISCUSS_RECORD GROUP BY CHIN_DECOC_DECWAY;

---LAST_MODIFIC_TIME  DATE  Y          
SELECT LAST_MODIFIC_TIME FROM INTRACTABLE_DISCUSS_RECORD GROUP BY LAST_MODIFIC_TIME;

---INPATIENT_SN  VARCHAR2(18)      住院流水号      
SELECT INPATIENT_SN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY INPATIENT_SN;

---DOC_NO  VARCHAR2(50)      文档编号      
SELECT DOC_NO FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DOC_NO;

---PATIENT_ID  VARCHAR2(20)      患者ID      
SELECT PATIENT_ID FROM INTRACTABLE_DISCUSS_RECORD GROUP BY PATIENT_ID;

---INP_NO  VARCHAR2(18)      住院号    S1  AN..18
SELECT INP_NO FROM INTRACTABLE_DISCUSS_RECORD GROUP BY INP_NO;

---DISCUSS_DATATIME  DATE  Y    讨论日期时间    DT  DT15
SELECT DISCUSS_DATATIME FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_DATATIME;

---DISCUSS_PLACE  VARCHAR2(50)  Y    讨论地点    S1  AN..50
SELECT DISCUSS_PLACE FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_PLACE;

---DISCUSS_NAMES  VARCHAR2(200)  Y    参加讨论人员名单    S1  A..200
SELECT DISCUSS_NAMES FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_NAMES;

---COMPERE_NAME  VARCHAR2(50)  Y    主持人姓名    S1  A..50
SELECT COMPERE_NAME FROM INTRACTABLE_DISCUSS_RECORD GROUP BY COMPERE_NAME;

---DISCUSS_SUGGESTION  VARCHAR2(2000)  Y    讨论意见    S1  AN..2000
SELECT DISCUSS_SUGGESTION FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DISCUSS_SUGGESTION;

---TCM_FOUR_RESULTS  VARCHAR2(1000)  Y    中医“四诊”观察结果    S1  AN..1000
SELECT TCM_FOUR_RESULTS FROM INTRACTABLE_DISCUSS_RECORD GROUP BY TCM_FOUR_RESULTS;

---DIALECTICAL_DESC  VARCHAR2(1000)  Y    辨证论治详细描述    S1  AN..1000
SELECT DIALECTICAL_DESC FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DIALECTICAL_DESC;

---ADVICE_CONTENT  VARCHAR2(1000)  Y    中药处方医嘱内容    S1  AN..1000
SELECT ADVICE_CONTENT FROM INTRACTABLE_DISCUSS_RECORD GROUP BY ADVICE_CONTENT;

---CHIN_DRINK_DECWAY  VARCHAR2(1000)  Y    中药用药方法    S1  AN..100
SELECT CHIN_DRINK_DECWAY FROM INTRACTABLE_DISCUSS_RECORD GROUP BY CHIN_DRINK_DECWAY;

---COMPERE_SUMMARY_SUGGESTION  VARCHAR2(2000)  Y    主持人总结意见    S1  AN..2000
SELECT COMPERE_SUMMARY_SUGGESTION FROM INTRACTABLE_DISCUSS_RECORD GROUP BY COMPERE_SUMMARY_SUGGESTION;

---DOCTOR_SIGN  VARCHAR2(50)  Y    医师签名    S1  A..50
SELECT DOCTOR_SIGN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY DOCTOR_SIGN;

---PHYSICIAN_DOCTOR_SIGN  VARCHAR2(50)  Y    主治医师签名    S1  A..50
SELECT PHYSICIAN_DOCTOR_SIGN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY PHYSICIAN_DOCTOR_SIGN;

---ARCHIATER_DOCTOR_SIGN  VARCHAR2(50)  Y    主任医师签名    S1  A..50
SELECT ARCHIATER_DOCTOR_SIGN FROM INTRACTABLE_DISCUSS_RECORD GROUP BY ARCHIATER_DOCTOR_SIGN;

---CHIN_DECOC_DECWAY  VARCHAR2(100)  Y    中药煎煮法      
SELECT CHIN_DECOC_DECWAY FROM INTRACTABLE_DISCUSS_RECORD GROUP BY CHIN_DECOC_DECWAY;

---LAST_MODIFIC_TIME  DATE  Y          
SELECT LAST_MODIFIC_TIME FROM INTRACTABLE_DISCUSS_RECORD GROUP BY LAST_MODIFIC_TIME;

