create table INSPECTION_RECORD_APPLY
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    OPER_REQ_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint INSPECTION_RECORD_APPLY_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    APPLY_NO VARCHAR2(20),
    EXAMINATION_APPLY_ORGAN VARCHAR2(70),
    EXAMINATION_APPLY_ROOM VARCHAR2(50),
    CHIEF_COMPLAINT VARCHAR2(100),
    START_SYMPTOMS_DATE DATE,
    STOP_SYMPTOMS_DATE DATE,
    SYMPTOM_DESC VARCHAR2(1000),
    SPECIAL_EXAMINATION_FLAG VARCHAR2(5),
    EXAMINATION_INSPECTION_NO VARCHAR2(20),
    DIAG_DESC VARCHAR2(2000),
    EXAMINATION_ITEM_CODE VARCHAR2(20),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table INSPECTION_RECORD_APPLY is 'cda抽取数据中间表-检查申请表'
/

comment on column INSPECTION_RECORD_APPLY.OUTPATIENT_SN is '门（急）诊就诊流水号'
/

comment on column INSPECTION_RECORD_APPLY.INPATIENT_SN is '住院就诊流水号'
/

comment on column INSPECTION_RECORD_APPLY.OUTP_NO is '门（急）诊号'
/

comment on column INSPECTION_RECORD_APPLY.INP_NO is '住院号'
/

comment on column INSPECTION_RECORD_APPLY.OPER_REQ_SN is '手术申请单号'
/

comment on column INSPECTION_RECORD_APPLY.DOC_NO is '文档编号'
/

comment on column INSPECTION_RECORD_APPLY.PATIENT_ID is '患者ID'
/

comment on column INSPECTION_RECORD_APPLY.APPLY_NO is '电子申请单编号'
/

comment on column INSPECTION_RECORD_APPLY.EXAMINATION_APPLY_ORGAN is '检查申请机构名称'
/

comment on column INSPECTION_RECORD_APPLY.EXAMINATION_APPLY_ROOM is '检查申请科室'
/

comment on column INSPECTION_RECORD_APPLY.CHIEF_COMPLAINT is '主诉'
/

comment on column INSPECTION_RECORD_APPLY.START_SYMPTOMS_DATE is '症状开始日期时间'
/

comment on column INSPECTION_RECORD_APPLY.STOP_SYMPTOMS_DATE is '症状停止日期时间'
/

comment on column INSPECTION_RECORD_APPLY.SYMPTOM_DESC is '症状描述'
/

comment on column INSPECTION_RECORD_APPLY.SPECIAL_EXAMINATION_FLAG is '特殊检查标志'
/

comment on column INSPECTION_RECORD_APPLY.EXAMINATION_INSPECTION_NO is '检查标本号'
/

comment on column INSPECTION_RECORD_APPLY.DIAG_DESC is '诊疗过程描述'
/

comment on column INSPECTION_RECORD_APPLY.EXAMINATION_ITEM_CODE is '检查项目代码'
/

comment on column INSPECTION_RECORD_APPLY.LAST_MODIFIC_TIME is '最后修改时间'
/

create table INSPECTION_RECORD_RESULT
(
    APPLY_NO VARCHAR2(20) not null,
    INSPECTION_METHOD_NAME VARCHAR2(100),
    EXAMINATION_TYPE VARCHAR2(100),
    EXAMINATION_RESULT_CODE VARCHAR2(1),
    INSPECTION_QUANTIFY_RESULT NUMBER(14,4),
    EXAMINATION_QUTIFY_UNIT VARCHAR2(20),
    INSPECT_ENGINEER_NAME VARCHAR2(50),
    EXAMINATION_DOCTOR VARCHAR2(50),
    EXAMINATION_DATE DATE,
    EXAMINATION_REPORT_NO VARCHAR2(20) not null
        constraint INSPECTION_RECORD_RESULT_PK
        primary key,
    EXAMINATION_REPORT_ORGAN VARCHAR2(70),
    EXAMINATION_REPORT_ROOM VARCHAR2(50),
    OBJECTIVE_EXAMINATION_RESULT VARCHAR2(200),
    SUBJECTIVE_EXAMINATION_RESULT VARCHAR2(200),
    EXAMINATION_RT_REMARKS VARCHAR2(100),
    EXAMINATION_RT_DATE DATE,
    REPORT_DOCTOR VARCHAR2(50),
    REPORTAUDIT VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table INSPECTION_RECORD_RESULT is 'cda抽取数据中间表-检查报告表'
/

comment on column INSPECTION_RECORD_RESULT.APPLY_NO is '电子申请单编号'
/

comment on column INSPECTION_RECORD_RESULT.INSPECTION_METHOD_NAME is '检查方法名称'
/

comment on column INSPECTION_RECORD_RESULT.EXAMINATION_TYPE is '检查类别'
/

comment on column INSPECTION_RECORD_RESULT.EXAMINATION_RESULT_CODE is '检查结果代码'
/

comment on column INSPECTION_RECORD_RESULT.INSPECTION_QUANTIFY_RESULT is '检查定量结果'
/

comment on column INSPECTION_RECORD_RESULT.EXAMINATION_QUTIFY_UNIT is '检查定量结果计量单位'
/

comment on column INSPECTION_RECORD_RESULT.INSPECT_ENGINEER_NAME is '检查技师签名'
/

comment on column INSPECTION_RECORD_RESULT.EXAMINATION_DOCTOR is '检查医师签名'
/

comment on column INSPECTION_RECORD_RESULT.EXAMINATION_DATE is '检查日期'
/

comment on column INSPECTION_RECORD_RESULT.EXAMINATION_REPORT_NO is '检查报告单编号'
/

comment on column INSPECTION_RECORD_RESULT.EXAMINATION_REPORT_ORGAN is '检查报告机构名称'
/

comment on column INSPECTION_RECORD_RESULT.EXAMINATION_REPORT_ROOM is '检查报告科室'
/

comment on column INSPECTION_RECORD_RESULT.OBJECTIVE_EXAMINATION_RESULT is '检查报告结果-客观所见'
/

comment on column INSPECTION_RECORD_RESULT.SUBJECTIVE_EXAMINATION_RESULT is '检查报告结果-主观提示'
/

comment on column INSPECTION_RECORD_RESULT.EXAMINATION_RT_REMARKS is '检查报告备注'
/

comment on column INSPECTION_RECORD_RESULT.EXAMINATION_RT_DATE is '检查报告日期'
/

comment on column INSPECTION_RECORD_RESULT.REPORT_DOCTOR is '报告医师签名'
/

comment on column INSPECTION_RECORD_RESULT.REPORTAUDIT is '审核医师签名'
/

comment on column INSPECTION_RECORD_RESULT.LAST_MODIFIC_TIME is '最后修改时间'
/

create table ADMISSION_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint ADMISSION_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    MEDICALHIS_NAME VARCHAR2(50),
    PRESENTER_PATIENT_RELAT_CODE VARCHAR2(1),
    IS_CREDIBLE VARCHAR2(5),
    CHIEF_COMPLAINT VARCHAR2(100),
    PRESENT_DISEASE_HISTORY VARCHAR2(2000),
    HEALTH_STATUS_CODE VARCHAR2(5),
    DISEASES_HISTORY VARCHAR2(1000),
    COMMUNICABLE_DISEASES_FLAG VARCHAR2(5),
    COMMUNICABLE_DISEASES_HISTORY VARCHAR2(1000),
    PREVENTIVE_INOCULATION_HISTORY VARCHAR2(1000),
    OPERATION_HISTORY VARCHAR2(1000),
    BLOOD_TRANSFUSION_HISTORY VARCHAR2(1000),
    ALLERGY_HISTORY VARCHAR2(1000),
    PERSON_HISTORY VARCHAR2(1000),
    MARITAL_HISTORY VARCHAR2(1000),
    MENSTRUATION_HISTORY VARCHAR2(1000),
    FAMILY_HISTORY VARCHAR2(1000),
    PHYSICALEXAM_TEMPERATURE NUMBER(4,1),
    PHYSICALEXAM_SPHYGMUS NUMBER(3),
    PHYSICALEXAM_BREATH_FREQUENCY NUMBER(3),
    PHYSICALEXAM_SYSTOLIC_PRESSURE NUMBER(3),
    EXAM_DIASTOLIC_PRESSURE NUMBER(3),
    GENERALHEALTH_CHECK_RESULT VARCHAR2(1000),
    PHYSICALEXAM_SKINMUCOSA_RESULT VARCHAR2(1000),
    LYMPH_NODE_CHECK_RESULT VARCHAR2(1000),
    PHYSICALEXAM_HEADORGAN_RESULT VARCHAR2(1000),
    NECK_CHECK_RESULT VARCHAR2(1000),
    CHEST_CHECK_RESULT VARCHAR2(1000),
    ABDOMINAL_CHECK_RESULT VARCHAR2(1000),
    PHYSICALEXAM_ANUS_RESULT VARCHAR2(1000),
    PHYSICALEXAM_GENITALS_RESULT VARCHAR2(1000),
    SPINE_CHECK_RESULT VARCHAR2(1000),
    LIMBS_CHECK_RESULT VARCHAR2(1000),
    EXAM_NERVOUSSYSTEM_RESULT VARCHAR2(1000),
    SPECIALIST_STATUS VARCHAR2(1000),
    AUXILIARYEXAMI_RESULT VARCHAR2(1000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    RECEIVE_DOCTOR_SIGN VARCHAR2(50),
    INP_DOCTOR_SIGN VARCHAR2(50),
    PHYSICIAN_DOCTOR_SIGN VARCHAR2(50),
    ARCHIATER_DOCTOR_SIGN VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table ADMISSION_RECORD is 'cda子集主表-入院记录子集主表（ADMISSION_RECORD）'
/

comment on column ADMISSION_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column ADMISSION_RECORD.DOC_NO is '文档编号'
/

comment on column ADMISSION_RECORD.PATIENT_ID is '患者ID'
/

comment on column ADMISSION_RECORD.INP_NO is '住院号'
/

comment on column ADMISSION_RECORD.MEDICALHIS_NAME is '病史陈述者姓名'
/

comment on column ADMISSION_RECORD.PRESENTER_PATIENT_RELAT_CODE is '陈述者与患者的关系代码'
/

comment on column ADMISSION_RECORD.IS_CREDIBLE is '陈述内容可靠标志'
/

comment on column ADMISSION_RECORD.CHIEF_COMPLAINT is '主诉'
/

comment on column ADMISSION_RECORD.PRESENT_DISEASE_HISTORY is '现病史'
/

comment on column ADMISSION_RECORD.HEALTH_STATUS_CODE is '一般健康状况标志'
/

comment on column ADMISSION_RECORD.DISEASES_HISTORY is '疾病史（含外伤）'
/

comment on column ADMISSION_RECORD.COMMUNICABLE_DISEASES_FLAG is '患者传染性标志'
/

comment on column ADMISSION_RECORD.COMMUNICABLE_DISEASES_HISTORY is '传染病史'
/

comment on column ADMISSION_RECORD.PREVENTIVE_INOCULATION_HISTORY is '预防接种史'
/

comment on column ADMISSION_RECORD.OPERATION_HISTORY is '手术史'
/

comment on column ADMISSION_RECORD.BLOOD_TRANSFUSION_HISTORY is '输血史'
/

comment on column ADMISSION_RECORD.ALLERGY_HISTORY is '过敏史'
/

comment on column ADMISSION_RECORD.PERSON_HISTORY is '个人史'
/

comment on column ADMISSION_RECORD.MARITAL_HISTORY is '婚育史'
/

comment on column ADMISSION_RECORD.MENSTRUATION_HISTORY is '月经史'
/

comment on column ADMISSION_RECORD.FAMILY_HISTORY is '家族史'
/

comment on column ADMISSION_RECORD.PHYSICALEXAM_TEMPERATURE is '体格检查-体温（℃）'
/

comment on column ADMISSION_RECORD.PHYSICALEXAM_SPHYGMUS is '体格检查-脉率（次/min)'
/

comment on column ADMISSION_RECORD.PHYSICALEXAM_BREATH_FREQUENCY is '体格检查-呼吸频率（次/min)'
/

comment on column ADMISSION_RECORD.PHYSICALEXAM_SYSTOLIC_PRESSURE is '体格检查-收缩压（mm-Hg)'
/

comment on column ADMISSION_RECORD.EXAM_DIASTOLIC_PRESSURE is '体格检查-舒张压(mmHg)'
/

comment on column ADMISSION_RECORD.GENERALHEALTH_CHECK_RESULT is '体格检查-一般状况检查结果'
/

comment on column ADMISSION_RECORD.PHYSICALEXAM_SKINMUCOSA_RESULT is '体格检查-皮肤和黏膜检查结果'
/

comment on column ADMISSION_RECORD.LYMPH_NODE_CHECK_RESULT is '体格检查-全身浅表淋巴结检查结果'
/

comment on column ADMISSION_RECORD.PHYSICALEXAM_HEADORGAN_RESULT is '体格检查-头部及其器官检查结果'
/

comment on column ADMISSION_RECORD.NECK_CHECK_RESULT is '体格检查-颈部检查结果'
/

comment on column ADMISSION_RECORD.CHEST_CHECK_RESULT is '体格检查-胸部检查结果'
/

comment on column ADMISSION_RECORD.ABDOMINAL_CHECK_RESULT is '体格检查-腹部检查结果'
/

comment on column ADMISSION_RECORD.PHYSICALEXAM_ANUS_RESULT is '体格检查-肛门指诊检查结果描述'
/

comment on column ADMISSION_RECORD.PHYSICALEXAM_GENITALS_RESULT is '体格检查-外生殖器检查结果'
/

comment on column ADMISSION_RECORD.SPINE_CHECK_RESULT is '体格检查-脊柱检查结果'
/

comment on column ADMISSION_RECORD.LIMBS_CHECK_RESULT is '体格检查-四肢检查结果'
/

comment on column ADMISSION_RECORD.EXAM_NERVOUSSYSTEM_RESULT is '体格检查-神经系统检查结果'
/

comment on column ADMISSION_RECORD.SPECIALIST_STATUS is '专科情况'
/

comment on column ADMISSION_RECORD.AUXILIARYEXAMI_RESULT is '辅助检查结果'
/

comment on column ADMISSION_RECORD.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column ADMISSION_RECORD.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column ADMISSION_RECORD.RECEIVE_DOCTOR_SIGN is '接诊医师签名'
/

comment on column ADMISSION_RECORD.INP_DOCTOR_SIGN is '住院医师签名'
/

comment on column ADMISSION_RECORD.PHYSICIAN_DOCTOR_SIGN is '主治医师签名'
/

comment on column ADMISSION_RECORD.ARCHIATER_DOCTOR_SIGN is '主任医师签名'
/

comment on column ADMISSION_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index A_R_INPATIENT_SN
	on ADMISSION_RECORD (INPATIENT_SN)
/

create table BSPATADDRESS
(
    ADDRESS_ID VARCHAR2(20) not null
        constraint BSPATADDRESS_PK
        primary key,
    PATIENT_ID VARCHAR2(20) not null,
    ADDRESS_TYPE_CODE VARCHAR2(2),
    ADDRESS_PROVINCE VARCHAR2(70),
    ADDRESS_CITY VARCHAR2(70),
    ADDRESS_COUNTY VARCHAR2(70),
    ADDRESS_TOWNSHIP VARCHAR2(70),
    ADDRESS_VILLAGE VARCHAR2(70),
    ADDRESS_DOORS VARCHAR2(70),
    ZIP_CODE VARCHAR2(6),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table BSPATADDRESS is 'cda子集公共表-地址表(BSPATADDRESS)'
/

comment on column BSPATADDRESS.ADDRESS_ID is '地址基本信息唯一标识'
/

comment on column BSPATADDRESS.PATIENT_ID is '患者ID'
/

comment on column BSPATADDRESS.ADDRESS_TYPE_CODE is '地址类别代码（01-户籍住址，02-工作场所地址，03-家庭常住住址，04-通讯地址，05-暂住地址，06-出生地址，07-产后修养地址，08-变迁地址，09-现住址，99-其他地址）备注：联系人地址用其他地址标识'
/

comment on column BSPATADDRESS.ADDRESS_PROVINCE is '地址-省（自治区、直辖市）'
/

comment on column BSPATADDRESS.ADDRESS_CITY is '地址-市（地区、州）'
/

comment on column BSPATADDRESS.ADDRESS_COUNTY is '地址-县（区）'
/

comment on column BSPATADDRESS.ADDRESS_TOWNSHIP is '地址-乡（镇、街道办事处）'
/

comment on column BSPATADDRESS.ADDRESS_VILLAGE is '地址-村（街、路、弄等）'
/

comment on column BSPATADDRESS.ADDRESS_DOORS is '地址-门牌号码'
/

comment on column BSPATADDRESS.ZIP_CODE is '邮政编码'
/

create index BSPATADDRESS_PATIENT_ID_IDX
	on BSPATADDRESS (PATIENT_ID)
/

create table BSVISIT_INFO
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    PATIENT_ID VARCHAR2(20),
    VISIT_TYPE_NO NUMBER(1),
    MEDICAL_INSURANCE_TYPE NUMBER(1),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    VISIT_DATETIME DATE,
    INP_DATETIME DATE,
    DISHOSPITAL_DATETIME DATE,
    MORBIDITY_DATETIME DATE,
    CLINIC_REASON VARCHAR2(100),
    AGE_YEAR NUMBER(3),
    PATIENT_MONTH NUMBER(2),
    DEPT_NAME VARCHAR2(50),
    AREA_NAME VARCHAR2(50),
    ROOM_NO VARCHAR2(10),
    BED_NO VARCHAR2(10),
    BODY_WEIGHT NUMBER(6,2),
    HEIGHT NUMBER(5,1),
    LAST_MODIFIC_TIME DATE,
    constraint "BSVISIT_INFO_check"
        check (REGEXP_LIKE(OUTPATIENT_SN, '/S') and (not REGEXP_LIKE(INPATIENT_SN, '/S'))
            or
               (REGEXP_LIKE(INPATIENT_SN, '/S') and not REGEXP_LIKE(OUTPATIENT_SN, '/S')))
)
    /

comment on table BSVISIT_INFO is 'cda子集公共表-患者就诊记录表(BSVISIT_INFO)'
/

comment on column BSVISIT_INFO.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column BSVISIT_INFO.INPATIENT_SN is '住院流水号'
/

comment on column BSVISIT_INFO.PATIENT_ID is '患者ID'
/

comment on column BSVISIT_INFO.VISIT_TYPE_NO is '患者类型代码'
/

comment on column BSVISIT_INFO.MEDICAL_INSURANCE_TYPE is '患者医保类型'
/

comment on column BSVISIT_INFO.OUTP_NO is '门（急）诊号'
/

comment on column BSVISIT_INFO.INP_NO is '住院号'
/

comment on column BSVISIT_INFO.VISIT_DATETIME is '就诊日期时间'
/

comment on column BSVISIT_INFO.INP_DATETIME is '入院日期时间'
/

comment on column BSVISIT_INFO.DISHOSPITAL_DATETIME is '出院日期时间'
/

comment on column BSVISIT_INFO.MORBIDITY_DATETIME is '发病日期时间'
/

comment on column BSVISIT_INFO.CLINIC_REASON is '就诊原因'
/

comment on column BSVISIT_INFO.AGE_YEAR is '年龄（岁）'
/

comment on column BSVISIT_INFO.PATIENT_MONTH is '年龄（月）'
/

comment on column BSVISIT_INFO.DEPT_NAME is '就诊科室名称'
/

comment on column BSVISIT_INFO.AREA_NAME is '病区名称'
/

comment on column BSVISIT_INFO.ROOM_NO is '病房号'
/

comment on column BSVISIT_INFO.BED_NO is '病床号'
/

comment on column BSVISIT_INFO.BODY_WEIGHT is '体重（kg）'
/

comment on column BSVISIT_INFO.HEIGHT is '身高'
/

create index BSVISIT_INFO_OUTPATIENT_SN_IDX
	on BSVISIT_INFO (OUTPATIENT_SN)
/

create index BSVISIT_INFO_INPATIENT_SN_IDX
	on BSVISIT_INFO (INPATIENT_SN)
/

create table CDA_GEN_RECORD
(
    ID NUMBER(20) not null
        constraint CDA_GEN_RECORD
        primary key,
    HEALTH_CARD_NO VARCHAR2(32) not null,
    OUTP_INP_NO VARCHAR2(32) not null,
    OUTP_INP_TYPE VARCHAR2(1) default null not null,
    CREATE_DATE DATE not null,
    CREATER VARCHAR2(30) not null,
    STATE VARCHAR2(1) default 'N' not null,
    UPDATE_DATE DATE,
    UPDATER VARCHAR2(30),
    BATCH_NUM VARCHAR2(32),
    INP_OUTP_PATIENT_SN VARCHAR2(32) not null,
    constraint UNIQ_CDA_GEN
        unique (HEALTH_CARD_NO, OUTP_INP_NO)
)
    /

comment on table CDA_GEN_RECORD is 'cda文档生成记录表'
/

comment on column CDA_GEN_RECORD.ID is '主键'
/

comment on column CDA_GEN_RECORD.HEALTH_CARD_NO is '居民健康卡号'
/

comment on column CDA_GEN_RECORD.OUTP_INP_NO is '门（急）诊号或住院号'
/

comment on column CDA_GEN_RECORD.OUTP_INP_TYPE is '类型 0门（急）诊号 1住院号'
/

comment on column CDA_GEN_RECORD.CREATE_DATE is '创建时间'
/

comment on column CDA_GEN_RECORD.CREATER is '创建人'
/

comment on column CDA_GEN_RECORD.STATE is '标志是否成功 Y成功 N不成功 P部分成功'
/

comment on column CDA_GEN_RECORD.UPDATE_DATE is '更新时间'
/

comment on column CDA_GEN_RECORD.UPDATER is '更新人'
/

comment on column CDA_GEN_RECORD.BATCH_NUM is 'cda文档生成批次号'
/

comment on column CDA_GEN_RECORD.INP_OUTP_PATIENT_SN is '门（急）诊号流水号或住院流水号'
/

create table CONSULTATION_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint EMR_CONSULTATION_RECORD_PK
        primary key,
    INP_NO VARCHAR2(18) not null,
    PATIENT_ID VARCHAR2(20),
    APPLY_NO VARCHAR2(20),
    MR_EXCERPTS VARCHAR2(200),
    AUXILIARYEXAMI_RESULT VARCHAR2(1000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    DIAGTREAT_PROCESSES_NAME VARCHAR2(1000),
    DIAG_DESC VARCHAR2(2000),
    CONSULTATION_TYPE VARCHAR2(50),
    CONSULTATION_REASON VARCHAR2(200),
    CONSULTATION_PURPOSE VARCHAR2(50),
    APPLY_DOCTOR_NAME VARCHAR2(50),
    APPLY_DEPT_NAME VARCHAR2(50),
    APPLY_ORG_NAME VARCHAR2(70),
    CONSULTATION_SUGGESTION VARCHAR2(2000),
    CONSULTATION_DOCTOR_SIGN VARCHAR2(50),
    CONSULTATION_DEPT_NAME VARCHAR2(50),
    CONSULTATION_DOCTOR_ORGNAME VARCHAR2(70),
    CONSULTATION_ORGNAME VARCHAR2(70),
    CONSULTATION_DATATIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table CONSULTATION_RECORD is 'cda子集主表-会诊记录子集主表(CONSULTATION_RECORD)'
/

comment on column CONSULTATION_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column CONSULTATION_RECORD.DOC_NO is '文档编号'
/

comment on column CONSULTATION_RECORD.INP_NO is '住院号'
/

comment on column CONSULTATION_RECORD.PATIENT_ID is '患者ID'
/

comment on column CONSULTATION_RECORD.APPLY_NO is '电子申请单编号'
/

comment on column CONSULTATION_RECORD.MR_EXCERPTS is '病历摘要'
/

comment on column CONSULTATION_RECORD.AUXILIARYEXAMI_RESULT is '辅助检查结果'
/

comment on column CONSULTATION_RECORD.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column CONSULTATION_RECORD.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column CONSULTATION_RECORD.DIAGTREAT_PROCESSES_NAME is '诊疗过程名称'
/

comment on column CONSULTATION_RECORD.DIAG_DESC is '诊疗过程描述'
/

comment on column CONSULTATION_RECORD.CONSULTATION_TYPE is '会诊类型'
/

comment on column CONSULTATION_RECORD.CONSULTATION_REASON is '会诊原因'
/

comment on column CONSULTATION_RECORD.CONSULTATION_PURPOSE is '会诊目的'
/

comment on column CONSULTATION_RECORD.APPLY_DOCTOR_NAME is '会诊申请医师签名'
/

comment on column CONSULTATION_RECORD.APPLY_DEPT_NAME is '会诊申请科室'
/

comment on column CONSULTATION_RECORD.APPLY_ORG_NAME is '会诊申请医疗机构名称'
/

comment on column CONSULTATION_RECORD.CONSULTATION_SUGGESTION is '会诊怠见'
/

comment on column CONSULTATION_RECORD.CONSULTATION_DOCTOR_SIGN is '会诊医师签名'
/

comment on column CONSULTATION_RECORD.CONSULTATION_DEPT_NAME is '会诊科室名称'
/

comment on column CONSULTATION_RECORD.CONSULTATION_DOCTOR_ORGNAME is '会诊医师所在医疗机构名称'
/

comment on column CONSULTATION_RECORD.CONSULTATION_ORGNAME is '会诊所在医疗机构名称'
/

comment on column CONSULTATION_RECORD.CONSULTATION_DATATIME is '会诊日期时间'
/

create index C_R_INPATIENT_SN_IDX
	on CONSULTATION_RECORD (INPATIENT_SN)
/

create table CRITICALLY_ILL_NOTICE
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint CRITICALLY_ILL_NOTICE_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    INFORMED_CONSENT_NO VARCHAR2(20),
    CONDITION_EMERGENCY_MEASURES VARCHAR2(2000),
    CRITICAL_ILLNESS_CONTENT VARCHAR2(2000),
    CRITICAL_ILLNESS_DATETIME DATE,
    LEGAL_AGENT_SIGN VARCHAR2(50),
    RELATION_CODE VARCHAR2(2),
    SIGN_DATETIME DATE,
    DOCTOR_SIGN VARCHAR2(50),
    DOCTOR_SIGN_DATETIME DATE,
    LAST_MODIFIC_TIME DATE,
    constraint "CRITICALLY_ILL_NOTICE_check"
        check (REGEXP_LIKE(OUTPATIENT_SN, '/S') and (not REGEXP_LIKE(INPATIENT_SN, '/S'))
            or
               (REGEXP_LIKE(INPATIENT_SN, '/S') and not REGEXP_LIKE(OUTPATIENT_SN, '/S')))
)
    /

comment on table CRITICALLY_ILL_NOTICE is 'cda子集主表-病危（重）通知书子集主表（CRITICALLY_ILL_NOTICE）'
/

comment on column CRITICALLY_ILL_NOTICE.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column CRITICALLY_ILL_NOTICE.INPATIENT_SN is '住院流水号'
/

comment on column CRITICALLY_ILL_NOTICE.DOC_NO is '文档编号'
/

comment on column CRITICALLY_ILL_NOTICE.PATIENT_ID is '患者ID'
/

comment on column CRITICALLY_ILL_NOTICE.OUTP_NO is '门（急）诊号'
/

comment on column CRITICALLY_ILL_NOTICE.INP_NO is '住院号'
/

comment on column CRITICALLY_ILL_NOTICE.INFORMED_CONSENT_NO is '知情同意书编号'
/

comment on column CRITICALLY_ILL_NOTICE.CONDITION_EMERGENCY_MEASURES is '病情概括及主要抢救措施'
/

comment on column CRITICALLY_ILL_NOTICE.CRITICAL_ILLNESS_CONTENT is '病危（重）通知内容'
/

comment on column CRITICALLY_ILL_NOTICE.CRITICAL_ILLNESS_DATETIME is '病危（重）通知日期时间'
/

comment on column CRITICALLY_ILL_NOTICE.LEGAL_AGENT_SIGN is '法定代理人签名'
/

comment on column CRITICALLY_ILL_NOTICE.RELATION_CODE is '法定代理人与患者的关系代码'
/

comment on column CRITICALLY_ILL_NOTICE.SIGN_DATETIME is '法定代理人签名日期时间'
/

comment on column CRITICALLY_ILL_NOTICE.DOCTOR_SIGN is '医师签名'
/

comment on column CRITICALLY_ILL_NOTICE.DOCTOR_SIGN_DATETIME is '医师签名日期时间'
/

create index C_I_N_OUTPATIENT_SN_IDX
	on CRITICALLY_ILL_NOTICE (OUTPATIENT_SN)
/

create index C_I_N_INPATIENT_SN_IDX
	on CRITICALLY_ILL_NOTICE (INPATIENT_SN)
/

create table CSE_INFORMED_CONSENT
(
    OUTPATIENT_SN VARCHAR2(18),
    OUTP_NO VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint CSE_INFORMED_CONSENT_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INFORMED_CONSENT_NO VARCHAR2(20),
    PATIENT_UNDERLYING_DISEASE VARCHAR2(500),
    BASE_DESEASE_POSSIBLE_INFLU VARCHAR2(1000),
    INT_INVASE_OP_MON_WAY VARCHAR2(2000),
    ANAESTHESIA_POSSIBLE_ACCIDENT VARCHAR2(1000),
    ANESTHESIA_SAFETY_INSUR_FLAG VARCHAR2(5),
    ANESTHESIA_SAFE_FLAG VARCHAR2(5),
    ORG_OPINION VARCHAR2(2000),
    PATIENT_AGENT_OPINION VARCHAR2(2000),
    PATIENT_SIGN VARCHAR2(50),
    LEGAL_AGENT_SIGN VARCHAR2(50),
    RELATION_CODE VARCHAR2(2),
    SIGN_DATETIME DATE,
    ANESTHESIA_DOCTOR_SIGN VARCHAR2(50),
    ANESTHESIA_SIGN_DATETIME DATE,
    OPER_REQ_SN VARCHAR2(18),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table CSE_INFORMED_CONSENT is 'cda子集主表-麻醉知情同意书子集主表(CSE_INFORMED_CONSENT)'
/

comment on column CSE_INFORMED_CONSENT.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column CSE_INFORMED_CONSENT.OUTP_NO is '门（急）诊号'
/

comment on column CSE_INFORMED_CONSENT.INPATIENT_SN is '住院流水号'
/

comment on column CSE_INFORMED_CONSENT.INP_NO is '住院号'
/

comment on column CSE_INFORMED_CONSENT.DOC_NO is '文档编号'
/

comment on column CSE_INFORMED_CONSENT.PATIENT_ID is '患者ID'
/

comment on column CSE_INFORMED_CONSENT.INFORMED_CONSENT_NO is '知情同意书编号'
/

comment on column CSE_INFORMED_CONSENT.PATIENT_UNDERLYING_DISEASE is '患者基础疾病'
/

comment on column CSE_INFORMED_CONSENT.BASE_DESEASE_POSSIBLE_INFLU is '基础疾病对麻醉可能产生的影响'
/

comment on column CSE_INFORMED_CONSENT.INT_INVASE_OP_MON_WAY is '拟行有创操作和监测方法'
/

comment on column CSE_INFORMED_CONSENT.ANAESTHESIA_POSSIBLE_ACCIDENT is '麻醉中、麻醉后可能发生的意外及并发症'
/

comment on column CSE_INFORMED_CONSENT.ANESTHESIA_SAFETY_INSUR_FLAG is '使用麻醉钺痛泵标志'
/

comment on column CSE_INFORMED_CONSENT.ANESTHESIA_SAFE_FLAG is '参加麻醉安全保险标志'
/

comment on column CSE_INFORMED_CONSENT.ORG_OPINION is '医疗机构意见'
/

comment on column CSE_INFORMED_CONSENT.PATIENT_AGENT_OPINION is '患者/法定代理人意见'
/

comment on column CSE_INFORMED_CONSENT.PATIENT_SIGN is '患者签名'
/

comment on column CSE_INFORMED_CONSENT.LEGAL_AGENT_SIGN is '法定代理人签名'
/

comment on column CSE_INFORMED_CONSENT.RELATION_CODE is '法定代理人与患者的关系代码'
/

comment on column CSE_INFORMED_CONSENT.SIGN_DATETIME is '患者/法定代理人签名日期时间'
/

comment on column CSE_INFORMED_CONSENT.ANESTHESIA_DOCTOR_SIGN is '麻醉医师签名'
/

comment on column CSE_INFORMED_CONSENT.ANESTHESIA_SIGN_DATETIME is '麻醉医师签名日期时间'
/

comment on column CSE_INFORMED_CONSENT.OPER_REQ_SN is '手术申请单号'
/

comment on column CSE_INFORMED_CONSENT.LAST_MODIFIC_TIME is '最后修改时间'
/

create index C_I_C_OUTPATIENT_SN_IDX
	on CSE_INFORMED_CONSENT (OUTPATIENT_SN)
/

create index C_I_C_INPATIENT_SN_IDX
	on CSE_INFORMED_CONSENT (INPATIENT_SN)
/

create table DAILY_COURSE_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint DAILY_COURSE_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    RECORD_DATATIME DATE,
    INP_COURSE VARCHAR2(2000),
    ADVICE_CONTENT VARCHAR2(1000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    DIALECTICAL_DESC VARCHAR2(1000),
    CHIN_DECOC_DECWAY VARCHAR2(100),
    CHIN_DRINK_DECWAY VARCHAR2(100),
    PROFESSIONAL_CATAGORY_CODE NUMBER(1),
    DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATATIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table DAILY_COURSE_RECORD is 'cda子集主表-日常病程记录子集主表(DAILY_COURSE_RECORD)'
/

comment on column DAILY_COURSE_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column DAILY_COURSE_RECORD.DOC_NO is '文档编号'
/

comment on column DAILY_COURSE_RECORD.PATIENT_ID is '患者ID'
/

comment on column DAILY_COURSE_RECORD.INP_NO is '住院号'
/

comment on column DAILY_COURSE_RECORD.RECORD_DATATIME is '记录日期时间'
/

comment on column DAILY_COURSE_RECORD.INP_COURSE is '住院病程'
/

comment on column DAILY_COURSE_RECORD.ADVICE_CONTENT is '医嘱内容'
/

comment on column DAILY_COURSE_RECORD.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column DAILY_COURSE_RECORD.DIALECTICAL_DESC is '辨证论治详细描述'
/

comment on column DAILY_COURSE_RECORD.CHIN_DECOC_DECWAY is '中药煎煮方法'
/

comment on column DAILY_COURSE_RECORD.CHIN_DRINK_DECWAY is '中药用药方法'
/

comment on column DAILY_COURSE_RECORD.PROFESSIONAL_CATAGORY_CODE is '专业技术职务类别代码'
/

comment on column DAILY_COURSE_RECORD.DOCTOR_SIGN is '医师签名'
/

comment on column DAILY_COURSE_RECORD.SIGN_DATATIME is '签名日期时间'
/

create index D_C_R_INPATIENT_SN_IDX
	on DAILY_COURSE_RECORD (INPATIENT_SN)
/

create table DEATH_CASE_DISCUSSION_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint DEATH_CASE_RECORD_PK
        primary key,
    INP_NO VARCHAR2(18),
    PATIENT_ID VARCHAR2(20),
    DISCUSS_DATATIME DATE,
    DISCUSS_PLACE VARCHAR2(50),
    COMPERE_NAME VARCHAR2(50),
    DISCUSS_NAMES VARCHAR2(200),
    PROFESSIONAL_CATAGORY_CODE NUMBER(1),
    DIS_DEATH_RECORDS VARCHAR2(2000),
    COMPERE_SUMMARY_SUGGESTION VARCHAR2(2000),
    PHYSICIAN_DOCTOR_SIGN VARCHAR2(50),
    ARCHIATER_DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATATIME DATE,
    INP_DOCTOR_SIGN VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table DEATH_CASE_DISCUSSION_RECORD is 'cda子集主表-死亡病例讨论记录子集主表(DEATH_CASE_DISCUSSION_RECORD)'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.DOC_NO is '文档编号'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.INP_NO is '住院号'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.PATIENT_ID is '患者ID'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.DISCUSS_DATATIME is '讨论日期时间'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.DISCUSS_PLACE is '讨论地点'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.COMPERE_NAME is '主持人姓名'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.DISCUSS_NAMES is '参加讨论人员名单'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.PROFESSIONAL_CATAGORY_CODE is '专业技术职务类别代码'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.DIS_DEATH_RECORDS is '死亡讨论记录'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.COMPERE_SUMMARY_SUGGESTION is '主持人总结意见'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.PHYSICIAN_DOCTOR_SIGN is '主治医师签名'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.ARCHIATER_DOCTOR_SIGN is '主任医师签名'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.SIGN_DATATIME is '签名日期时间'
/

comment on column DEATH_CASE_DISCUSSION_RECORD.INP_DOCTOR_SIGN is '住院医师签名'
/

create index D_C_D_R_INPATIENT_SN_IDX
	on DEATH_CASE_DISCUSSION_RECORD (INPATIENT_SN)
/

create table DEATH_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint DEATH_RECORD_PK
        primary key,
    INP_NO VARCHAR2(18),
    PATIENT_ID VARCHAR2(20),
    INP_SITUATION VARCHAR2(2000),
    DIAG_DESC VARCHAR2(2000),
    DEATH_DATETIME DATE,
    IS_AGREE_POSTMORTEM VARCHAR2(5),
    INP_DOCTOR_SIGN VARCHAR2(50),
    PHYSICIAN_DOCTOR_SIGN VARCHAR2(50),
    ARCHIATER_DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATATIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table DEATH_RECORD is 'cda子集主表-死亡记录子集主表(DEATH_RECORD)'
/

comment on column DEATH_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column DEATH_RECORD.DOC_NO is '文档编号'
/

comment on column DEATH_RECORD.INP_NO is '住院号'
/

comment on column DEATH_RECORD.PATIENT_ID is '患者ID'
/

comment on column DEATH_RECORD.INP_SITUATION is '入院情况'
/

comment on column DEATH_RECORD.DIAG_DESC is '诊疗过程描述'
/

comment on column DEATH_RECORD.DEATH_DATETIME is '死亡日期时间'
/

comment on column DEATH_RECORD.IS_AGREE_POSTMORTEM is '家属是否同意尸体解剖标志'
/

comment on column DEATH_RECORD.INP_DOCTOR_SIGN is '住院医师签名'
/

comment on column DEATH_RECORD.PHYSICIAN_DOCTOR_SIGN is '主治医师签名'
/

comment on column DEATH_RECORD.ARCHIATER_DOCTOR_SIGN is '主任医师签名'
/

comment on column DEATH_RECORD.SIGN_DATATIME is '签名日期时间'
/

create index DEATH_RECORD_INPATIENT_SN_IDX
	on DEATH_RECORD (INPATIENT_SN)
/

create table DIAG_INFO
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DIAG_ID VARCHAR2(18) not null
        constraint DIAG_INFO_PK
        primary key,
    DIAG_SOURCE VARCHAR2(100),
    DIAG_TYPE VARCHAR2(100),
    DIAG_NAME VARCHAR2(100),
    DIAG_CODE VARCHAR2(100),
    DIAG_DATATIME DATE,
    DIAG_DOC_NAME VARCHAR2(100),
    DIAG_DEPT_NAME VARCHAR2(100),
    DIAG_DIAGNOSIS VARCHAR2(100),
    DIAG_NO VARCHAR2(100),
    DIAG_CLASSIFICATIONS VARCHAR2(100),
    LAST_MODIFIC_TIME DATE,
    constraint "DIAG_INFO_check"
        check (REGEXP_LIKE(OUTPATIENT_SN, '/S') and (not REGEXP_LIKE(INPATIENT_SN, '/S'))
            or
               (REGEXP_LIKE(INPATIENT_SN, '/S') and not REGEXP_LIKE(OUTPATIENT_SN, '/S')))
)
    /

comment on table DIAG_INFO is 'cda子集公共表-诊断表包含中医和西医(DIAG_INFO)'
/

comment on column DIAG_INFO.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column DIAG_INFO.INPATIENT_SN is '住院流水号'
/

comment on column DIAG_INFO.DIAG_ID is '诊断ID'
/

comment on column DIAG_INFO.DIAG_SOURCE is '诊断来源'
/

comment on column DIAG_INFO.DIAG_TYPE is '诊断类型（1-门诊诊断、2-初步诊断，3-入院诊断，4-修正诊断，5-出院诊断,6-死亡诊断，7-术前诊断，8-术中诊断，9-术后诊断, 10-确定诊断，11-补充诊断，12-目前诊断，13-直接死亡原因）'
/

comment on column DIAG_INFO.DIAG_NAME is '诊断名称'
/

comment on column DIAG_INFO.DIAG_CODE is '诊断编码'
/

comment on column DIAG_INFO.DIAG_DATATIME is '诊断时间'
/

comment on column DIAG_INFO.DIAG_DOC_NAME is '诊断医生'
/

comment on column DIAG_INFO.DIAG_DEPT_NAME is '诊断科室'
/

comment on column DIAG_INFO.DIAG_DIAGNOSIS is '主诊断标识（1-主诊断，2-其他诊断）'
/

comment on column DIAG_INFO.DIAG_NO is '诊断序号（诊断顺位编码）'
/

comment on column DIAG_INFO.DIAG_CLASSIFICATIONS is '诊断类别（1-西医诊断，2-中医诊断，3-中医症候）'
/

create index DIAG_INFO_OUTPATIENT_SN_IDX
	on DIAG_INFO (OUTPATIENT_SN)
/

create index DIAG_INFO_INPATIENT_SN_IDX
	on DIAG_INFO (INPATIENT_SN)
/

create table DISCHARGE_ABSTRACT
(
    INPATIENT_SN VARCHAR2(18) not null,
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint DISCHARGE_ABSTRACT_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_DAYS NUMBER(4),
    INP_SITUATION VARCHAR2(2000),
    POSITIVE_TEST_RESULTS VARCHAR2(1000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    OPERATION_TYPE_CODE NUMBER(1),
    OPERAT_INCIS_HEAL_TYPE_CODE NUMBER(1),
    OPERATION_PROCESS_DESC VARCHAR2(2000),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    TCD_DECOCTION_METHOD VARCHAR2(100),
    TCD_MEDICATION_METHOD VARCHAR2(100),
    DIAG_TREAT_DESC VARCHAR2(2000),
    DISHOSPITAL_SITUATION VARCHAR2(2000),
    DISHOSPITAL_SIGNS VARCHAR2(1000),
    OUTHOS_ADVIC VARCHAR2(1000),
    UNDERLYING_DEATH_CODE NUMBER(1),
    INP_DOCTOR_SIGN VARCHAR2(50),
    SUPERIOR_DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table DISCHARGE_ABSTRACT is 'cda子集主表-出院小结记录子集主表(DISCHARGE_ABSTRACT)'
/

comment on column DISCHARGE_ABSTRACT.INPATIENT_SN is '住院流水号'
/

comment on column DISCHARGE_ABSTRACT.INP_NO is '住院号'
/

comment on column DISCHARGE_ABSTRACT.DOC_NO is '文档编号'
/

comment on column DISCHARGE_ABSTRACT.PATIENT_ID is '患者ID'
/

comment on column DISCHARGE_ABSTRACT.INP_DAYS is '实际住院天数'
/

comment on column DISCHARGE_ABSTRACT.INP_SITUATION is '入院情况'
/

comment on column DISCHARGE_ABSTRACT.POSITIVE_TEST_RESULTS is '阳性辅助检查结果'
/

comment on column DISCHARGE_ABSTRACT.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column DISCHARGE_ABSTRACT.OPERATION_TYPE_CODE is '手术切口类别代码'
/

comment on column DISCHARGE_ABSTRACT.OPERAT_INCIS_HEAL_TYPE_CODE is '手术切口愈合等级代码'
/

comment on column DISCHARGE_ABSTRACT.OPERATION_PROCESS_DESC is '手术过程'
/

comment on column DISCHARGE_ABSTRACT.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column DISCHARGE_ABSTRACT.TCD_DECOCTION_METHOD is '中药煎煮方法'
/

comment on column DISCHARGE_ABSTRACT.TCD_MEDICATION_METHOD is '中药用药方法'
/

comment on column DISCHARGE_ABSTRACT.DIAG_TREAT_DESC is '诊疗过程描述'
/

comment on column DISCHARGE_ABSTRACT.DISHOSPITAL_SITUATION is '出院情况'
/

comment on column DISCHARGE_ABSTRACT.DISHOSPITAL_SIGNS is '出院时症状与体征'
/

comment on column DISCHARGE_ABSTRACT.OUTHOS_ADVIC is '出院医嘱'
/

comment on column DISCHARGE_ABSTRACT.UNDERLYING_DEATH_CODE is '病情转归代码'
/

comment on column DISCHARGE_ABSTRACT.INP_DOCTOR_SIGN is '住院医师签名'
/

comment on column DISCHARGE_ABSTRACT.SUPERIOR_DOCTOR_SIGN is '上级医师签名'
/

comment on column DISCHARGE_ABSTRACT.SIGN_DATETIME is '签名日期时间'
/

create index D_A_INPATIENT_SN_IDX
	on DISCHARGE_ABSTRACT (INPATIENT_SN)
/

create table DISCHARGE_ASSESSMENT
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint DISCHARGE_ASSESSMENT_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    DIETARY_STATUS_CODE NUMBER(1),
    SELF_CARE_STATUS NUMBER(1),
    DISHOSPITAL_STATUS VARCHAR2(2000),
    DISHOSPITAL_DISPOSITION_CODE NUMBER(1),
    DRUG_USAGE VARCHAR2(100),
    DIET_GUIDE_CODE VARCHAR2(2),
    LIFESTYLE_COUNSELLING VARCHAR2(50),
    EDUCATIONAL_CONTENTS VARCHAR2(100),
    SECOND_CLINIC VARCHAR2(100),
    NURSING_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    INP_DOCTOR_SIGN VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table DISCHARGE_ASSESSMENT is 'cda子集主表-出院评估与指导记录（DISCHARGE_ASSESSMENT）'
/

comment on column DISCHARGE_ASSESSMENT.INPATIENT_SN is '住院流水号'
/

comment on column DISCHARGE_ASSESSMENT.DOC_NO is '文档编号'
/

comment on column DISCHARGE_ASSESSMENT.PATIENT_ID is '患者ID'
/

comment on column DISCHARGE_ASSESSMENT.INP_NO is '住院号'
/

comment on column DISCHARGE_ASSESSMENT.DIETARY_STATUS_CODE is '饮食情况代码'
/

comment on column DISCHARGE_ASSESSMENT.SELF_CARE_STATUS is '自理能力代码'
/

comment on column DISCHARGE_ASSESSMENT.DISHOSPITAL_STATUS is '出院情况'
/

comment on column DISCHARGE_ASSESSMENT.DISHOSPITAL_DISPOSITION_CODE is '离院方式代码'
/

comment on column DISCHARGE_ASSESSMENT.DRUG_USAGE is '用药指导'
/

comment on column DISCHARGE_ASSESSMENT.DIET_GUIDE_CODE is '饮食指导代码'
/

comment on column DISCHARGE_ASSESSMENT.LIFESTYLE_COUNSELLING is '生活方式指导'
/

comment on column DISCHARGE_ASSESSMENT.EDUCATIONAL_CONTENTS is '宣教内容'
/

comment on column DISCHARGE_ASSESSMENT.SECOND_CLINIC is '复诊指导'
/

comment on column DISCHARGE_ASSESSMENT.NURSING_SIGN is '护士签名'
/

comment on column DISCHARGE_ASSESSMENT.SIGN_DATETIME is '签名日期时间'
/

comment on column DISCHARGE_ASSESSMENT.INP_DOCTOR_SIGN is '住院医师签名'
/

create index D_ASS_INPATIENT_SN_IDX
	on DISCHARGE_ASSESSMENT (INPATIENT_SN)
/

create table DISCHARGE_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint DISCHARGE_RECORD_PK
        primary key,
    INP_NO VARCHAR2(18),
    PATIENT_ID VARCHAR2(20),
    INP_SITUATION VARCHAR2(2000),
    POSITIVE_TEST_RESULTS VARCHAR2(1000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    DIAG_DESC VARCHAR2(2000),
    CHIN_DECOC_DECWAY VARCHAR2(100),
    CHIN_DRINK_DECWAY VARCHAR2(100),
    DISHOSPITAL_SITUATION VARCHAR2(2000),
    DISHOSPITAL_SYMPTOM VARCHAR2(1000),
    OUTHOS_ADVIC VARCHAR2(1000),
    INP_DOCTOR_SIGN VARCHAR2(50),
    PHYSICIAN_DOCTOR_SIGN VARCHAR2(50),
    ARCHIATER_DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATATIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table DISCHARGE_RECORD is 'cda子集主表-出院记录子集主表(DISCHARGE_RECORD)'
/

comment on column DISCHARGE_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column DISCHARGE_RECORD.DOC_NO is '文档编号'
/

comment on column DISCHARGE_RECORD.INP_NO is '住院号'
/

comment on column DISCHARGE_RECORD.PATIENT_ID is '患者ID'
/

comment on column DISCHARGE_RECORD.INP_SITUATION is '入院情况'
/

comment on column DISCHARGE_RECORD.POSITIVE_TEST_RESULTS is '阳性辅助检查结果'
/

comment on column DISCHARGE_RECORD.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column DISCHARGE_RECORD.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column DISCHARGE_RECORD.DIAG_DESC is '诊疗过程描述'
/

comment on column DISCHARGE_RECORD.CHIN_DECOC_DECWAY is '中药煎煮方法'
/

comment on column DISCHARGE_RECORD.CHIN_DRINK_DECWAY is '中药用药方法'
/

comment on column DISCHARGE_RECORD.DISHOSPITAL_SITUATION is '出院情况'
/

comment on column DISCHARGE_RECORD.DISHOSPITAL_SYMPTOM is '出院时症状与体征'
/

comment on column DISCHARGE_RECORD.OUTHOS_ADVIC is '出院医嘱'
/

comment on column DISCHARGE_RECORD.INP_DOCTOR_SIGN is '住院医师签名'
/

comment on column DISCHARGE_RECORD.PHYSICIAN_DOCTOR_SIGN is '主治医师签名'
/

comment on column DISCHARGE_RECORD.ARCHIATER_DOCTOR_SIGN is '主任医师签名'
/

comment on column DISCHARGE_RECORD.SIGN_DATATIME is '签名日期时间'
/

create index D_R_INPATIENT_SN_IDX
	on DISCHARGE_RECORD (INPATIENT_SN)
/

create table DRUGPERSON_NAME_DETAIL
(
    OUTPATIENT_SN VARCHAR2(18),
    PRESC_ID VARCHAR2(50) not null
        constraint DRUGPERSON_NAME_DETAIL_PK
        primary key,
    CHECK_PERSON_NAME VARCHAR2(50),
    VERIFY_PERSON_NAME VARCHAR2(50),
    DISPENSING_PERSON_NAME VARCHAR2(50),
    ALLOCATE_PERSON_NAME VARCHAR2(50),
    RECIPE_REMARK VARCHAR2(100),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table DRUGPERSON_NAME_DETAIL is 'cda子集公共表-门诊药剂师公用表(DRUGPERSON_NAME_DETAIL)'
/

comment on column DRUGPERSON_NAME_DETAIL.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column DRUGPERSON_NAME_DETAIL.PRESC_ID is '处方编号'
/

comment on column DRUGPERSON_NAME_DETAIL.CHECK_PERSON_NAME is '处方审核药剂师签名'
/

comment on column DRUGPERSON_NAME_DETAIL.VERIFY_PERSON_NAME is '处方核对药剂师签名'
/

comment on column DRUGPERSON_NAME_DETAIL.DISPENSING_PERSON_NAME is '处方发药药剂师签名'
/

comment on column DRUGPERSON_NAME_DETAIL.ALLOCATE_PERSON_NAME is '处方调配药剂师签名'
/

comment on column DRUGPERSON_NAME_DETAIL.RECIPE_REMARK is '处方备注信息'
/

create index D_N_D_OUTPATIENT_SN_IDX
	on DRUGPERSON_NAME_DETAIL (OUTPATIENT_SN)
/

create table EMERGENCY_MEDICAL_RECORDS
(
    OUTPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint EMERGENCY_MEDICAL_RECORDS_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    ALLERGY_HOSTORY_FLAG VARCHAR2(5),
    ALLERGY_HISTORY VARCHAR2(1000),
    NEWLY_DIAGNOSED_CODE VARCHAR2(1),
    IN_OBSERVATION_DATETIME DATE,
    CHIEF_COMPLAINT VARCHAR2(100),
    PRESENT_DISEASE_HISTORY VARCHAR2(2000),
    PAST_HISTORY VARCHAR2(1000),
    PHYSICAL_EXAMINATION VARCHAR2(500),
    TCM_FOUR_OBSERVATIONS VARCHAR2(1000),
    AUXILIARYEXAMI_ITEM VARCHAR2(100),
    AUXILIARYEXAMI_RESULT VARCHAR2(1000),
    DIALECTICAL_ACCROD VARCHAR2(100),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    APPLY_NO VARCHAR2(20),
    EMERGENCY_OBSERVATION_COURSE VARCHAR2(2000),
    RESCUE_BEGIN_DATETIME DATE,
    RESCUE_END_DATETIME DATE,
    EMERGENCY_RESCUE_RECORD VARCHAR2(2000),
    CREATE_DATETIME DATE,
    MATTERS_NEEDING_ATTENTION VARCHAR2(1000),
    RESCUE_PERSONNEL_LIST VARCHAR2(200),
    PROFESSIONAL_CATAGORY_CODE NUMBER(1),
    PATIENT_WHEREABOUTS_CODE VARCHAR2(2),
    RESPONSIBLE_DOCTOR VARCHAR2(50),
    VISITING_DOCTOR_SIGN VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table EMERGENCY_MEDICAL_RECORDS is 'cda子集主表-急诊留观病历子集主表（EMERGENCY_MEDICAL_RECORDS）'
/

comment on column EMERGENCY_MEDICAL_RECORDS.OUTPATIENT_SN is '急诊流水号'
/

comment on column EMERGENCY_MEDICAL_RECORDS.DOC_NO is '文档编号'
/

comment on column EMERGENCY_MEDICAL_RECORDS.PATIENT_ID is '患者ID'
/

comment on column EMERGENCY_MEDICAL_RECORDS.OUTP_NO is '急诊号'
/

comment on column EMERGENCY_MEDICAL_RECORDS.ALLERGY_HOSTORY_FLAG is '过敏史标志'
/

comment on column EMERGENCY_MEDICAL_RECORDS.ALLERGY_HISTORY is '过敏史'
/

comment on column EMERGENCY_MEDICAL_RECORDS.NEWLY_DIAGNOSED_CODE is '初诊标志代码'
/

comment on column EMERGENCY_MEDICAL_RECORDS.IN_OBSERVATION_DATETIME is '收人观察室日期时间'
/

comment on column EMERGENCY_MEDICAL_RECORDS.CHIEF_COMPLAINT is '主诉'
/

comment on column EMERGENCY_MEDICAL_RECORDS.PRESENT_DISEASE_HISTORY is '现病史'
/

comment on column EMERGENCY_MEDICAL_RECORDS.PAST_HISTORY is '既往史'
/

comment on column EMERGENCY_MEDICAL_RECORDS.PHYSICAL_EXAMINATION is '体格检查'
/

comment on column EMERGENCY_MEDICAL_RECORDS.TCM_FOUR_OBSERVATIONS is '中医“四诊”观察结果'
/

comment on column EMERGENCY_MEDICAL_RECORDS.AUXILIARYEXAMI_ITEM is '辅助检杳项目'
/

comment on column EMERGENCY_MEDICAL_RECORDS.AUXILIARYEXAMI_RESULT is '辅助检查结果'
/

comment on column EMERGENCY_MEDICAL_RECORDS.DIALECTICAL_ACCROD is '辨证依据'
/

comment on column EMERGENCY_MEDICAL_RECORDS.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column EMERGENCY_MEDICAL_RECORDS.APPLY_NO is '电子申请单编号'
/

comment on column EMERGENCY_MEDICAL_RECORDS.EMERGENCY_OBSERVATION_COURSE is '急诊留观病程记录'
/

comment on column EMERGENCY_MEDICAL_RECORDS.RESCUE_BEGIN_DATETIME is '抢救开始日期时间'
/

comment on column EMERGENCY_MEDICAL_RECORDS.RESCUE_END_DATETIME is '抢救结束日期时间'
/

comment on column EMERGENCY_MEDICAL_RECORDS.EMERGENCY_RESCUE_RECORD is '急诊抢救记录'
/

comment on column EMERGENCY_MEDICAL_RECORDS.CREATE_DATETIME is '记录日期时间'
/

comment on column EMERGENCY_MEDICAL_RECORDS.MATTERS_NEEDING_ATTENTION is '注意事项'
/

comment on column EMERGENCY_MEDICAL_RECORDS.RESCUE_PERSONNEL_LIST is '参加抢救人员名单'
/

comment on column EMERGENCY_MEDICAL_RECORDS.PROFESSIONAL_CATAGORY_CODE is '专业技术职务类别代码'
/

comment on column EMERGENCY_MEDICAL_RECORDS.PATIENT_WHEREABOUTS_CODE is '患者去向代码'
/

comment on column EMERGENCY_MEDICAL_RECORDS.RESPONSIBLE_DOCTOR is '责任医生签名'
/

comment on column EMERGENCY_MEDICAL_RECORDS.VISITING_DOCTOR_SIGN is '就诊医生签名'
/

comment on column EMERGENCY_MEDICAL_RECORDS.LAST_MODIFIC_TIME is '最后修改时间-抽数据使用'
/

create index E_M_R_OUTPATIENT_SN_IDX
	on EMERGENCY_MEDICAL_RECORDS (OUTPATIENT_SN)
/

create table EMR_BASICHEALTH
(
    PATIENT_ID VARCHAR2(20),
    HEALTH_CARD_NO VARCHAR2(18),
    ABO_BLOOD_CODE VARCHAR2(1),
    RH_BLOOD_CODE VARCHAR2(1),
    DISEASE_HISTORY VARCHAR2(1000),
    INFECT_HISTORY VARCHAR2(1000),
    PREVENT_HISTORY VARCHAR2(1000),
    OPERATION_HISTORY VARCHAR2(1000),
    BLOOD_TRANSFUSION_HISTORY VARCHAR2(1000),
    ALLERGY_HISTORY VARCHAR2(1000),
    PERSON_HISTORY VARCHAR2(1000),
    MARITAL_HISTORY VARCHAR2(1000),
    MENSTRUATION_HISTORY VARCHAR2(1000),
    FAMILY_HISTORY VARCHAR2(1000),
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint EMR_BASICHEALTH_PK
        primary key,
    LAST_MODIFIC_TIME DATE,
    constraint "EMR_BASICHEALTH_check"
        check (REGEXP_LIKE(OUTPATIENT_SN, '/S') and (not REGEXP_LIKE(INPATIENT_SN, '/S'))
            or
               (REGEXP_LIKE(INPATIENT_SN, '/S') and not REGEXP_LIKE(OUTPATIENT_SN, '/S')))
)
    /

comment on table EMR_BASICHEALTH is 'cda子集公共表-患者基本健康信息表(EMR_BASICHEALTH)'
/

comment on column EMR_BASICHEALTH.PATIENT_ID is '患者ID'
/

comment on column EMR_BASICHEALTH.HEALTH_CARD_NO is '居民健康卡号'
/

comment on column EMR_BASICHEALTH.ABO_BLOOD_CODE is 'ABO血型代码'
/

comment on column EMR_BASICHEALTH.RH_BLOOD_CODE is 'Rh血型代码'
/

comment on column EMR_BASICHEALTH.DISEASE_HISTORY is '疾病史（含外伤）'
/

comment on column EMR_BASICHEALTH.INFECT_HISTORY is '传染病史'
/

comment on column EMR_BASICHEALTH.PREVENT_HISTORY is '预防接种史'
/

comment on column EMR_BASICHEALTH.OPERATION_HISTORY is '手术史'
/

comment on column EMR_BASICHEALTH.BLOOD_TRANSFUSION_HISTORY is '输血史'
/

comment on column EMR_BASICHEALTH.ALLERGY_HISTORY is '过敏史'
/

comment on column EMR_BASICHEALTH.PERSON_HISTORY is '个人史'
/

comment on column EMR_BASICHEALTH.MARITAL_HISTORY is '婚育史'
/

comment on column EMR_BASICHEALTH.MENSTRUATION_HISTORY is '月经史'
/

comment on column EMR_BASICHEALTH.FAMILY_HISTORY is '家族史'
/

comment on column EMR_BASICHEALTH.OUTPATIENT_SN is '门诊流水号'
/

comment on column EMR_BASICHEALTH.INPATIENT_SN is '住院流水号'
/

comment on column EMR_BASICHEALTH.DOC_NO is '主键-文档ID（patient_id+"_"+outpatient_sn+"_"+inpatient_sn某个流水号为空就直接给空即可，如“PID01_123_”或“PID01__123”）'
/

create index E_B_INPATIENT_SN_IDX
	on EMR_BASICHEALTH (INPATIENT_SN)
/

create index E_B_OUTPATIENT_SN_IDX
	on EMR_BASICHEALTH (OUTPATIENT_SN)
/

create table EMR_BASICPATIENT
(
    PATIENT_ID VARCHAR2(20) not null
        constraint EMR_BASICPATIENT_PK
        primary key,
    HEALTH_FILE_NO VARCHAR2(17),
    IDENTITY_NO VARCHAR2(18),
    IDENTITY_TYPE VARCHAR2(2),
    HEALTH_CARD_NO VARCHAR2(18),
    PAYMENT_TYPE VARCHAR2(2),
    PATIENT_NAME VARCHAR2(50),
    BIRTHDAY DATE,
    PATIENT_SEX VARCHAR2(1),
    MARITAL_STATUS_CODE VARCHAR2(2),
    NATION VARCHAR2(2),
    NATIONNALITY VARCHAR2(3),
    DEGREE_CODE NUMBER(2),
    OCCUPATIENTION_CLASS_CODE NUMBER(2),
    OCCUPATION_NAME VARCHAR2(70),
    CURRENT_EMAIL VARCHAR2(70),
    WORKUNIT_PHONE VARCHAR2(20),
    INPUT_DATE DATE,
    INPUT_ORGAN_CODE VARCHAR2(10),
    INPUT_NAME VARCHAR2(50),
    CURRENT_PHONE VARCHAR2(20),
    CONTACT_NAME VARCHAR2(50),
    CONTACT_PHONE VARCHAR2(20),
    LAST_MODIFIC_TIME DATE,
    EMPI_ID VARCHAR2(32)
)
    /

comment on table EMR_BASICPATIENT is 'cda子集公共表-患者基本信息表(EMR_BASICPATIENT)'
/

comment on column EMR_BASICPATIENT.PATIENT_ID is '患者ID'
/

comment on column EMR_BASICPATIENT.HEALTH_FILE_NO is '城乡居民健康档案编号'
/

comment on column EMR_BASICPATIENT.IDENTITY_NO is '患者身份证件号码'
/

comment on column EMR_BASICPATIENT.IDENTITY_TYPE is '身份证件类别代码'
/

comment on column EMR_BASICPATIENT.HEALTH_CARD_NO is '居民健康卡号'
/

comment on column EMR_BASICPATIENT.PAYMENT_TYPE is '医疗保险类别代码'
/

comment on column EMR_BASICPATIENT.PATIENT_NAME is '患者姓名'
/

comment on column EMR_BASICPATIENT.BIRTHDAY is '出生日期'
/

comment on column EMR_BASICPATIENT.PATIENT_SEX is '性别代码'
/

comment on column EMR_BASICPATIENT.MARITAL_STATUS_CODE is '婚姻状况代码'
/

comment on column EMR_BASICPATIENT.NATION is '民族代码'
/

comment on column EMR_BASICPATIENT.NATIONNALITY is '国籍代码'
/

comment on column EMR_BASICPATIENT.DEGREE_CODE is '学历代码'
/

comment on column EMR_BASICPATIENT.OCCUPATIENTION_CLASS_CODE is '从业状况代码'
/

comment on column EMR_BASICPATIENT.OCCUPATION_NAME is '工作单位名称'
/

comment on column EMR_BASICPATIENT.CURRENT_EMAIL is '患者电子邮件地址'
/

comment on column EMR_BASICPATIENT.WORKUNIT_PHONE is '工作单位电话号码'
/

comment on column EMR_BASICPATIENT.INPUT_DATE is '建档日期时间'
/

comment on column EMR_BASICPATIENT.INPUT_ORGAN_CODE is '建档医疗机构组织机构'
/

comment on column EMR_BASICPATIENT.INPUT_NAME is '建档者姓名'
/

comment on column EMR_BASICPATIENT.CURRENT_PHONE is '患者电话号码'
/

comment on column EMR_BASICPATIENT.CONTACT_NAME is '联系人姓名'
/

comment on column EMR_BASICPATIENT.CONTACT_PHONE is '联系人电话号码'
/

comment on column EMR_BASICPATIENT.EMPI_ID is 'empi号'
/

create index E_B_IDENTITY_NO_IDX
	on EMR_BASICPATIENT (IDENTITY_NO)
/

create table EMR_HEALTHEVENTS
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    PATIENT_ID VARCHAR2(20) not null,
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    CHINESE_MEDICINE_TYPE_NAME VARCHAR2(2000),
    OTHER_MEDICAL_TREATMENT VARCHAR2(50),
    UNDERLYING_DEATH_CODE VARCHAR2(1),
    RESPONSIBLE_DOCTOR VARCHAR2(50),
    STATE VARCHAR2(1),
    BATCH_NUM VARCHAR2(32),
    GEN_DATETIME DATE,
    CREATE_TIME DATE,
    EVENT_SEQ NUMBER(11) not null,
    SYS_SOURCE VARCHAR2(50),
    DRUG_NAME VARCHAR2(50),
    DRUG_USAGE VARCHAR2(100),
    ADVERSE_DRUG_REACTIONS VARCHAR2(100),
    TCD_TYPE_CODE VARCHAR2(1),
    DOC_NO VARCHAR2(50) not null
        constraint EMR_HEALTHEVENTS_PK
        primary key,
    HEALTH_CARD_NO VARCHAR2(18),
    LAST_MODIFIC_TIME DATE,
    constraint "EMR_HEALTHEVENTS_check"
        check (REGEXP_LIKE(OUTPATIENT_SN, '/S') and (not REGEXP_LIKE(INPATIENT_SN, '/S'))
            or
               (REGEXP_LIKE(INPATIENT_SN, '/S') and not REGEXP_LIKE(OUTPATIENT_SN, '/S')))
)
    /

comment on table EMR_HEALTHEVENTS is 'cda子集主表-卫生事件摘要表(EMR_HEALTHEVENTS)'
/

comment on column EMR_HEALTHEVENTS.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column EMR_HEALTHEVENTS.INPATIENT_SN is '住院流水号'
/

comment on column EMR_HEALTHEVENTS.PATIENT_ID is '患者ID'
/

comment on column EMR_HEALTHEVENTS.OUTP_NO is '门（急）诊号'
/

comment on column EMR_HEALTHEVENTS.INP_NO is '住院号'
/

comment on column EMR_HEALTHEVENTS.CHINESE_MEDICINE_TYPE_NAME is '其他医学处置'
/

comment on column EMR_HEALTHEVENTS.OTHER_MEDICAL_TREATMENT is '根本死因代码'
/

comment on column EMR_HEALTHEVENTS.UNDERLYING_DEATH_CODE is '病情转归代码'
/

comment on column EMR_HEALTHEVENTS.RESPONSIBLE_DOCTOR is '责任医师姓名'
/

comment on column EMR_HEALTHEVENTS.STATE is 'cda文档生成状态 Y:成功，N:失败，P:部分'
/

comment on column EMR_HEALTHEVENTS.BATCH_NUM is 'cda生成批次号'
/

comment on column EMR_HEALTHEVENTS.GEN_DATETIME is 'cda文档生成时间'
/

comment on column EMR_HEALTHEVENTS.CREATE_TIME is '子集创建时间'
/

comment on column EMR_HEALTHEVENTS.EVENT_SEQ is '序列号'
/

comment on column EMR_HEALTHEVENTS.SYS_SOURCE is '系统来源'
/

comment on column EMR_HEALTHEVENTS.DRUG_NAME is '关键药物名称'
/

comment on column EMR_HEALTHEVENTS.DRUG_USAGE is '关键药物用法'
/

comment on column EMR_HEALTHEVENTS.ADVERSE_DRUG_REACTIONS is '药物不良反应情况'
/

comment on column EMR_HEALTHEVENTS.TCD_TYPE_CODE is '中药使用类别代码'
/

comment on column EMR_HEALTHEVENTS.DOC_NO is '主键'
/

comment on column EMR_HEALTHEVENTS.HEALTH_CARD_NO is '居民健康卡号'
/

create index E_H_OUTPATIENT_SN_IDX
	on EMR_HEALTHEVENTS (OUTPATIENT_SN)
/

create index E_H_INPATIENT_SN_IDX
	on EMR_HEALTHEVENTS (INPATIENT_SN)
/

create index EMR_HEALTHEVENTS_INP_NO_IDX
	on EMR_HEALTHEVENTS (INP_NO)
/

create index EMR_HEALTHEVENTS_OUTP_NO_IDX
	on EMR_HEALTHEVENTS (OUTP_NO)
/

create table EMR_MEDICALBILL
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint EMR_MEDICALBILL_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    HEALTH_CARD_NO VARCHAR2(18),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    PAY_WAY VARCHAR2(2),
    OUTP_COST_AMOUNT NUMBER(8,2),
    INP_COST_AMOUNT NUMBER(10,2),
    PERSONAL_COST_AMOUNT NUMBER(10,2),
    LAST_MODIFIC_TIME DATE,
    constraint "EMR_MEDICALBILL_check"
        check (REGEXP_LIKE(OUTPATIENT_SN, '/S') and (not REGEXP_LIKE(INPATIENT_SN, '/S'))
            or
               (REGEXP_LIKE(INPATIENT_SN, '/S') and not REGEXP_LIKE(OUTPATIENT_SN, '/S')))
)
    /

comment on table EMR_MEDICALBILL is 'cda子集主表-医疗费用记录子集主表(EMR_MEDICALBILL)'
/

comment on column EMR_MEDICALBILL.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column EMR_MEDICALBILL.INPATIENT_SN is '住院流水号'
/

comment on column EMR_MEDICALBILL.DOC_NO is '文档编号'
/

comment on column EMR_MEDICALBILL.PATIENT_ID is '患者ID'
/

comment on column EMR_MEDICALBILL.HEALTH_CARD_NO is '居民健康卡号'
/

comment on column EMR_MEDICALBILL.OUTP_NO is '门（急）诊号'
/

comment on column EMR_MEDICALBILL.INP_NO is '住院号'
/

comment on column EMR_MEDICALBILL.PAY_WAY is '医疗付费方式代码'
/

comment on column EMR_MEDICALBILL.OUTP_COST_AMOUNT is '门诊费用金额'
/

comment on column EMR_MEDICALBILL.INP_COST_AMOUNT is '住院费用金额'
/

comment on column EMR_MEDICALBILL.PERSONAL_COST_AMOUNT is '个人承担费用金额'
/

create index E_M_OUTPATIENT_SN_IDX
	on EMR_MEDICALBILL (OUTPATIENT_SN)
/

create index E_M_INPATIENT_SN_IDX
	on EMR_MEDICALBILL (INPATIENT_SN)
/

create table EXPECTANT_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    PATIENT_ID VARCHAR2(20),
    DOC_NO VARCHAR2(50) not null
        constraint EXPECTANT_RECORD_PK
        primary key,
    INP_NO VARCHAR2(18),
    PREDELIVERY_DATETIME DATE,
    DELIVERY_TIMEGRAVIDITY_TIME NUMBER(2),
    DELIVERY_TIME NUMBER(2),
    LAST_MENSTRUAL_PERIOD DATE,
    CONCEPTION_CODE NUMBER(1),
    EDC_DESC DATE,
    PRENATAL_EXAMINATION_CODE VARCHAR2(10),
    PRENATAL_EXAMINATION_ABNORMAL VARCHAR2(200),
    PREPREGNANCY_WEIGHT NUMBER(6,2),
    ANTE_PARTUM_WEIGHT NUMBER(6,2),
    SPECIAL_CASES_PREGNANCY VARCHAR2(200),
    PAST_HISTORY VARCHAR2(1000),
    OPERATION_HISTORY VARCHAR2(1000),
    PAST_PREGNANCY_HISTORY VARCHAR2(1000),
    SYSTOLIC_PRESSURE NUMBER(3),
    DIASTOLIC_PRESSURE NUMBER(3),
    TEMPERATURE NUMBER(4,1),
    PULSE_RATE NUMBER(3),
    BREATH_FREQUENCY NUMBER(3),
    FUNDUS_HEIGHT NUMBER(4,1),
    ABDOMINAL_GIRTH NUMBER(5,1),
    FETAL_HEART_RATE NUMBER(3),
    FETAL_POSITION_CODE VARCHAR2(2),
    ESTIMATED_FETAL_WEIGHT NUMBER(4),
    HEADPOS_DYSTOCIA_EVAL VARCHAR2(200),
    SACRAL_EXTERNAL_DIAMETER NUMBER(4,1),
    INTERTUBEROUS_DIAMETER NUMBER(4,1),
    CONTRACTIONS VARCHAR2(200),
    CERVICAL_CONDITION VARCHAR2(100),
    UTERINE_ORIFICE_CONDITION VARCHAR2(100),
    EMBRYOLEMMA_CODE NUMBER(1),
    RUPTURE_MEMBRANE_CODE NUMBER(1),
    PRESENTATION_POSITION VARCHAR2(100),
    AMNIOTIC_FLUID_CONDITION VARCHAR2(100),
    BLADDER_FILLING_CODE VARCHAR2(10),
    FLATULENCE_CODE VARCHAR2(10),
    EXAM_METHOD_CODE NUMBER(1),
    DISPOSITION_PLAN VARCHAR2(2000),
    PLANNED_DELIVERY_CODE VARCHAR2(2),
    DELIVERY_DATETIME DATE,
    BIRTH_PROCESS VARCHAR2(200),
    LABOR_INSPECTION_SIG VARCHAR2(50),
    RECORD_SIGN VARCHAR2(50),
    EXIT_DIAMETER NUMBER(4,1),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table EXPECTANT_RECORD is 'cda子集主表-待产记录表(EXPECTANT_RECORD)'
/

comment on column EXPECTANT_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column EXPECTANT_RECORD.PATIENT_ID is '患者ID'
/

comment on column EXPECTANT_RECORD.DOC_NO is '文档编号'
/

comment on column EXPECTANT_RECORD.INP_NO is '住院号'
/

comment on column EXPECTANT_RECORD.PREDELIVERY_DATETIME is '待产日期时间'
/

comment on column EXPECTANT_RECORD.DELIVERY_TIMEGRAVIDITY_TIME is '孕次'
/

comment on column EXPECTANT_RECORD.DELIVERY_TIME is '产次'
/

comment on column EXPECTANT_RECORD.LAST_MENSTRUAL_PERIOD is '末次月经日期'
/

comment on column EXPECTANT_RECORD.CONCEPTION_CODE is '受孕形式代码'
/

comment on column EXPECTANT_RECORD.EDC_DESC is '预产期'
/

comment on column EXPECTANT_RECORD.PRENATAL_EXAMINATION_CODE is '产前检查标志'
/

comment on column EXPECTANT_RECORD.PRENATAL_EXAMINATION_ABNORMAL is '产前检查异常情况'
/

comment on column EXPECTANT_RECORD.PREPREGNANCY_WEIGHT is '孕前体重（kg）'
/

comment on column EXPECTANT_RECORD.ANTE_PARTUM_WEIGHT is '分娩前体重（kg）'
/

comment on column EXPECTANT_RECORD.SPECIAL_CASES_PREGNANCY is '此次妊娠特殊情况'
/

comment on column EXPECTANT_RECORD.PAST_HISTORY is '既往史'
/

comment on column EXPECTANT_RECORD.OPERATION_HISTORY is '手术史'
/

comment on column EXPECTANT_RECORD.PAST_PREGNANCY_HISTORY is '既往孕产史'
/

comment on column EXPECTANT_RECORD.SYSTOLIC_PRESSURE is '收缩压(mmHg)'
/

comment on column EXPECTANT_RECORD.DIASTOLIC_PRESSURE is '舒张压(mmHg)'
/

comment on column EXPECTANT_RECORD.TEMPERATURE is '体温（℃）'
/

comment on column EXPECTANT_RECORD.PULSE_RATE is '脉率(次/min)'
/

comment on column EXPECTANT_RECORD.BREATH_FREQUENCY is '呼吸频率(次/min)'
/

comment on column EXPECTANT_RECORD.FUNDUS_HEIGHT is '宫底高度（cm）'
/

comment on column EXPECTANT_RECORD.ABDOMINAL_GIRTH is '腹围（cm）'
/

comment on column EXPECTANT_RECORD.FETAL_HEART_RATE is '胎心率(次/min)'
/

comment on column EXPECTANT_RECORD.FETAL_POSITION_CODE is '胎方位代码'
/

comment on column EXPECTANT_RECORD.ESTIMATED_FETAL_WEIGHT is '估计胎儿体重(g)--cda模板没有该字段'
/

comment on column EXPECTANT_RECORD.HEADPOS_DYSTOCIA_EVAL is '头位难产情况的评估'
/

comment on column EXPECTANT_RECORD.SACRAL_EXTERNAL_DIAMETER is '骶耻外径（cm）'
/

comment on column EXPECTANT_RECORD.INTERTUBEROUS_DIAMETER is '坐骨结节间径（cm）'
/

comment on column EXPECTANT_RECORD.CONTRACTIONS is '宫缩情况'
/

comment on column EXPECTANT_RECORD.CERVICAL_CONDITION is '宫颈情况'
/

comment on column EXPECTANT_RECORD.UTERINE_ORIFICE_CONDITION is '宫口情况'
/

comment on column EXPECTANT_RECORD.EMBRYOLEMMA_CODE is '胎膜情况代码'
/

comment on column EXPECTANT_RECORD.RUPTURE_MEMBRANE_CODE is '破膜方式代码'
/

comment on column EXPECTANT_RECORD.PRESENTATION_POSITION is '先露位置'
/

comment on column EXPECTANT_RECORD.AMNIOTIC_FLUID_CONDITION is '羊水情况'
/

comment on column EXPECTANT_RECORD.BLADDER_FILLING_CODE is '膀胱充盈标志'
/

comment on column EXPECTANT_RECORD.FLATULENCE_CODE is '肠胀气标志'
/

comment on column EXPECTANT_RECORD.EXAM_METHOD_CODE is '检查方式代码'
/

comment on column EXPECTANT_RECORD.DISPOSITION_PLAN is '处置计划'
/

comment on column EXPECTANT_RECORD.PLANNED_DELIVERY_CODE is '计划选取的分娩方式代码'
/

comment on column EXPECTANT_RECORD.DELIVERY_DATETIME is '产程记录日期时间'
/

comment on column EXPECTANT_RECORD.BIRTH_PROCESS is '产程经过'
/

comment on column EXPECTANT_RECORD.LABOR_INSPECTION_SIG is '产程检查者签名'
/

comment on column EXPECTANT_RECORD.RECORD_SIGN is '记录人员签名'
/

comment on column EXPECTANT_RECORD.EXIT_DIAMETER is '出口横经（CM）'
/

create index E_R_INPATIENT_SN_IDX
	on EXPECTANT_RECORD (INPATIENT_SN)
/

create table FIRST_COURSE_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint FIRST_COURSE_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    RECORD_DATATIME DATE,
    CHIEF_COMPLAINT VARCHAR2(100),
    RECORD_FEATURE VARCHAR2(2000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    DIAG_EVIDENCE VARCHAR2(1000),
    ASSESSMENT_PLAN VARCHAR2(2000),
    IDENTIFY_WM_DIAGNAME VARCHAR2(50),
    IDENTIFY_TCM_DIAGNAME VARCHAR2(50),
    IDENTIFY_TCM_SYMPTOMNAME VARCHAR2(50),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    INP_DOCTOR_SIGN VARCHAR2(50),
    SUPER_DOCTOR_SIGN VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table FIRST_COURSE_RECORD is 'cda子集主表-首次病程记录子集主表(FIRST_COURSE_RECORD)'
/

comment on column FIRST_COURSE_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column FIRST_COURSE_RECORD.DOC_NO is '文档编号'
/

comment on column FIRST_COURSE_RECORD.PATIENT_ID is '患者ID'
/

comment on column FIRST_COURSE_RECORD.INP_NO is '住院号'
/

comment on column FIRST_COURSE_RECORD.RECORD_DATATIME is '记录日期时间'
/

comment on column FIRST_COURSE_RECORD.CHIEF_COMPLAINT is '主诉'
/

comment on column FIRST_COURSE_RECORD.RECORD_FEATURE is '病例特点'
/

comment on column FIRST_COURSE_RECORD.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column FIRST_COURSE_RECORD.DIAG_EVIDENCE is '诊断依据'
/

comment on column FIRST_COURSE_RECORD.ASSESSMENT_PLAN is '诊疗计划'
/

comment on column FIRST_COURSE_RECORD.IDENTIFY_WM_DIAGNAME is '鉴别诊断-西医诊断名称'
/

comment on column FIRST_COURSE_RECORD.IDENTIFY_TCM_DIAGNAME is '鉴别诊断-中医病名名称'
/

comment on column FIRST_COURSE_RECORD.IDENTIFY_TCM_SYMPTOMNAME is '鉴别诊断-中医证候名称'
/

comment on column FIRST_COURSE_RECORD.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column FIRST_COURSE_RECORD.INP_DOCTOR_SIGN is '住院医师签名'
/

comment on column FIRST_COURSE_RECORD.SUPER_DOCTOR_SIGN is '上级医师签名'
/

create index F_C_R_INPATIENT_SN_IDX
	on FIRST_COURSE_RECORD (INPATIENT_SN)
/

create table GENERAL_OPERATION_RECORDS
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint GENERAL_OPERATION_RECORDS_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OPERA_SN VARCHAR2(18),
    ELECTRONIC_APPLY_NO VARCHAR2(20),
    OPERATION_PROCESS_DESC VARCHAR2(2000),
    OPERATION_FLAG VARCHAR2(5),
    SKIN_DISINFECTION_DESC VARCHAR2(200),
    OPERATION_INCISION_DESC VARCHAR2(200),
    IS_DRAINAGE VARCHAR2(5),
    OPERATION_BLEEDING NUMBER(5),
    OPERATION_INFUSION NUMBER(5),
    BLOOD_TRANSFERED_VALUE NUMBER(4),
    DRAINAGE_MATERIAL VARCHAR2(200),
    DRAINAGE_MATERIAL_NUM VARCHAR2(200),
    OPERATION_PLACE VARCHAR2(50),
    BLOODTRANSFERED_REACTION_CODE VARCHAR2(5),
    OPERATION_DOCTOR_NAME VARCHAR2(50),
    SIGN_DATETIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table GENERAL_OPERATION_RECORDS is 'cda子集主表-一般手术记录子集主表(GENERAL_OPERATION_RECORDS)'
/

comment on column GENERAL_OPERATION_RECORDS.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column GENERAL_OPERATION_RECORDS.INPATIENT_SN is '住院流水号'
/

comment on column GENERAL_OPERATION_RECORDS.OUTP_NO is '门（急）诊号'
/

comment on column GENERAL_OPERATION_RECORDS.INP_NO is '住院号'
/

comment on column GENERAL_OPERATION_RECORDS.DOC_NO is '文档编号'
/

comment on column GENERAL_OPERATION_RECORDS.PATIENT_ID is '患者ID'
/

comment on column GENERAL_OPERATION_RECORDS.OPERA_SN is '手术记录流水号'
/

comment on column GENERAL_OPERATION_RECORDS.ELECTRONIC_APPLY_NO is '电子申请单编号'
/

comment on column GENERAL_OPERATION_RECORDS.OPERATION_PROCESS_DESC is '手术过程描述'
/

comment on column GENERAL_OPERATION_RECORDS.OPERATION_FLAG is '手术史标志'
/

comment on column GENERAL_OPERATION_RECORDS.SKIN_DISINFECTION_DESC is '皮肤消毒描述'
/

comment on column GENERAL_OPERATION_RECORDS.OPERATION_INCISION_DESC is '手术切口描述'
/

comment on column GENERAL_OPERATION_RECORDS.IS_DRAINAGE is '引流标志'
/

comment on column GENERAL_OPERATION_RECORDS.OPERATION_BLEEDING is '出血量（mL)'
/

comment on column GENERAL_OPERATION_RECORDS.OPERATION_INFUSION is '输液量(mL)'
/

comment on column GENERAL_OPERATION_RECORDS.BLOOD_TRANSFERED_VALUE is '输血量(mL)'
/

comment on column GENERAL_OPERATION_RECORDS.DRAINAGE_MATERIAL is '引流材料名称'
/

comment on column GENERAL_OPERATION_RECORDS.DRAINAGE_MATERIAL_NUM is '引流材料数目'
/

comment on column GENERAL_OPERATION_RECORDS.OPERATION_PLACE is '放置部位'
/

comment on column GENERAL_OPERATION_RECORDS.BLOODTRANSFERED_REACTION_CODE is '输血反应标志'
/

comment on column GENERAL_OPERATION_RECORDS.OPERATION_DOCTOR_NAME is '手术者姓名'
/

comment on column GENERAL_OPERATION_RECORDS.SIGN_DATETIME is '签名日期时间'
/

comment on column GENERAL_OPERATION_RECORDS.LAST_MODIFIC_TIME is '最后修改时间'
/

create index G_O_R_OUTPATIENT_SN_IDX
	on GENERAL_OPERATION_RECORDS (OUTPATIENT_SN)
/

create index G_O_R_INPATIENT_SN_IDX
	on GENERAL_OPERATION_RECORDS (INPATIENT_SN)
/

create table H24_ADMISSION_DISCHARGE_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint H24_ADMISSION_DISCHARGE_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    MEDICALHIS_NAME VARCHAR2(50),
    PRESENTER_PATIENT_RELAT_CODE VARCHAR2(2),
    IS_CREDIBLE VARCHAR2(5),
    CHIEF_COMPLAINT VARCHAR2(100),
    PRESENT_DISEASE_HISTORY VARCHAR2(200),
    INP_SITUATION VARCHAR2(2000),
    SYMPTOM_NAME VARCHAR2(50),
    SYMPTOM_DESC VARCHAR2(1000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    DIAG_PROCESS_DESC VARCHAR2(2000),
    DISHOSPITAL_SITUATION VARCHAR2(2000),
    OUTHOS_ADVIC VARCHAR2(1000),
    OUTHOS_ADVIC_OPENER_SIG VARCHAR2(50),
    OUTHOS_ADVIC_OPEN_DATE DATE,
    RECEIVE_DOCTOR_SIGN VARCHAR2(50),
    INP_DOCTOR_SIGN VARCHAR2(50),
    PHYSICIAN_DOCTOR_SIGN VARCHAR2(50),
    ARCHIATER_DOCTOR_SIGN VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table H24_ADMISSION_DISCHARGE_RECORD is 'cda子集主表-24 h内入出院记录子集主表(H24_ADMISSION_DISCHARGE_RECORD)'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.DOC_NO is '文档编号'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.PATIENT_ID is '患者ID'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.INP_NO is '住院号'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.MEDICALHIS_NAME is '病史陈述者姓名'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.PRESENTER_PATIENT_RELAT_CODE is '陈述者与患者的关系代码'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.IS_CREDIBLE is '陈述内容可靠标志'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.CHIEF_COMPLAINT is '主诉'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.PRESENT_DISEASE_HISTORY is '现病史'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.INP_SITUATION is '入院情况'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.SYMPTOM_NAME is '症状名称'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.SYMPTOM_DESC is '症状描述'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.DIAG_PROCESS_DESC is '诊疗过程描述'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.DISHOSPITAL_SITUATION is '出院情况'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.OUTHOS_ADVIC is '出院医嘱'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.OUTHOS_ADVIC_OPENER_SIG is '出院医嘱开立人签名'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.OUTHOS_ADVIC_OPEN_DATE is '出院医嘱开立日期时间'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.RECEIVE_DOCTOR_SIGN is '接诊医师签名'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.INP_DOCTOR_SIGN is '住院医师签名'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.PHYSICIAN_DOCTOR_SIGN is '主治医师签名'
/

comment on column H24_ADMISSION_DISCHARGE_RECORD.ARCHIATER_DOCTOR_SIGN is '主任医师签名'
/

create index H24_A_D_R_INPATIENT_SN_IDX
	on H24_ADMISSION_DISCHARGE_RECORD (INPATIENT_SN)
/

create table HANDOVER_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint HANDOVER_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    CHIEF_COMPLAINT VARCHAR2(100),
    INP_SITUATION VARCHAR2(2000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    DIAG_DESC VARCHAR2(2000),
    CURRENTLY_SITUATION VARCHAR2(2000),
    MATTERS_NEED_ATTENTION VARCHAR2(1000),
    SUCC_ASSESSMENT_PLAN VARCHAR2(2000),
    HANDOVER_DATATIME DATE,
    HANDOVER_SIGN VARCHAR2(50),
    TAKE_DATATIME DATE,
    TAKE_SIGN VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table HANDOVER_RECORD is 'cda子集主表-交接班记录子集主表(HANDOVER_RECORD)'
/

comment on column HANDOVER_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column HANDOVER_RECORD.DOC_NO is '文档编号'
/

comment on column HANDOVER_RECORD.PATIENT_ID is '患者ID'
/

comment on column HANDOVER_RECORD.INP_NO is '住院号'
/

comment on column HANDOVER_RECORD.CHIEF_COMPLAINT is '主诉'
/

comment on column HANDOVER_RECORD.INP_SITUATION is '入院情况'
/

comment on column HANDOVER_RECORD.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column HANDOVER_RECORD.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column HANDOVER_RECORD.DIAG_DESC is '诊疗过程描述'
/

comment on column HANDOVER_RECORD.CURRENTLY_SITUATION is '目前情况'
/

comment on column HANDOVER_RECORD.MATTERS_NEED_ATTENTION is '注意事项'
/

comment on column HANDOVER_RECORD.SUCC_ASSESSMENT_PLAN is '接班诊疗计划'
/

comment on column HANDOVER_RECORD.HANDOVER_DATATIME is '交班日期时间'
/

comment on column HANDOVER_RECORD.HANDOVER_SIGN is '交班者签名'
/

comment on column HANDOVER_RECORD.TAKE_DATATIME is '接班日期时间'
/

comment on column HANDOVER_RECORD.TAKE_SIGN is '接班者签名'
/

create index H_R_INPATIENT_SN_IDX
	on HANDOVER_RECORD (INPATIENT_SN)
/

create table HOSPITALIZATION_ORDER
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint HOSPITALIZATION_ORDER_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    ORDER_TYPE_CODE NUMBER(1) not null,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table HOSPITALIZATION_ORDER is 'cda子集主表-住院医嘱子集主表(HOSPITALIZATION_ORDER)'
/

comment on column HOSPITALIZATION_ORDER.INPATIENT_SN is '住院流水号'
/

comment on column HOSPITALIZATION_ORDER.DOC_NO is '文档编号'
/

comment on column HOSPITALIZATION_ORDER.PATIENT_ID is '患者ID'
/

comment on column HOSPITALIZATION_ORDER.INP_NO is '住院号'
/

comment on column HOSPITALIZATION_ORDER.ORDER_TYPE_CODE is '医嘱类别代码'
/

create index H_O_INPATIENT_SN_IDX
	on HOSPITALIZATION_ORDER (INPATIENT_SN)
/

create table HOSPITALIZATION_ORDER_DETAIL
(
    PRESC_ID VARCHAR2(50) not null
        constraint HOSPITAL_ORDER_DETAIL_PK
        primary key,
    INPATIENT_SN VARCHAR2(18) not null,
    ORDER_TYPE_CODE NUMBER(1) not null,
    RECIPE_GROUP_NO VARCHAR2(50),
    APPLY_NO VARCHAR2(20),
    ORDER_ITEM_TYPE_CODE VARCHAR2(2),
    ADVICE_ITEM_CONTENT VARCHAR2(100),
    ADVICEPLAN_START_DATETIME DATE,
    ADVICEPLAN_END_DATETIME DATE,
    ADVICE_REMARK VARCHAR2(100),
    ADVICE_OPENDOCTOR_NAME VARCHAR2(50),
    ADVICE_OPEN_DATETIME DATE,
    ADVICE_OPENDEPT_NAME VARCHAR2(50),
    CHECK_PERSON_SIGN VARCHAR2(50),
    CHECK_ADVICE_DATETIME DATE,
    ADVICE_CHECKNURSE_SIGN VARCHAR2(50),
    ADVICE_CHECK_DATETIME DATE,
    ADVICE_END_DATETIME DATE,
    ADVICE_ENDER_SIGN VARCHAR2(50),
    CANCEL_ADVICE_DATETIME DATE,
    CANCEL_ADVICE_SIGN VARCHAR2(50),
    EXEC_PERSON_SIGN VARCHAR2(50),
    ADVICE_EXEC_DATETIME DATE,
    EXEC_DEPT_NAME VARCHAR2(50),
    ADVICE_EXEC_STATUS VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table HOSPITALIZATION_ORDER_DETAIL is 'cda子集子表-住院医嘱子集，医嘱子表(HOSPITALIZATION_ORDER_DETAIL)'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.PRESC_ID is '医嘱ID'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.INPATIENT_SN is '住院流水号'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ORDER_TYPE_CODE is '医嘱类别代码'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.RECIPE_GROUP_NO is '处方药品组号'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.APPLY_NO is '电子申请单编号'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ORDER_ITEM_TYPE_CODE is '医嘱项目类型代码'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_ITEM_CONTENT is '医嘱项目内容'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICEPLAN_START_DATETIME is '医嘱计划开始日期时间'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICEPLAN_END_DATETIME is '医嘱计划结束日期时间'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_REMARK is '医嘱备注信息'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_OPENDOCTOR_NAME is '医嘱开立者签名'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_OPEN_DATETIME is '医嘱开立日期时间'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_OPENDEPT_NAME is '医嘱开立科室'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.CHECK_PERSON_SIGN is '医嘱审核人签名'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.CHECK_ADVICE_DATETIME is '医嘱审核日期时间'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_CHECKNURSE_SIGN is '核对医嘱护士签名'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_CHECK_DATETIME is '医嘱核对日期时间'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_END_DATETIME is '医嘱停止日期时间'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_ENDER_SIGN is '停止医嘱者签名'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.CANCEL_ADVICE_DATETIME is '医嘱取消日期时间'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.CANCEL_ADVICE_SIGN is '取消医嘱者签名'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.EXEC_PERSON_SIGN is '医嘱执行者签名'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_EXEC_DATETIME is '医嘱执行日期时间'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.EXEC_DEPT_NAME is '医嘱执行科室'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.ADVICE_EXEC_STATUS is '医嘱执行状态'
/

comment on column HOSPITALIZATION_ORDER_DETAIL.LAST_MODIFIC_TIME is '最后修改时间'
/

create index H_O_D_INPATIENT_SN_IDX
	on HOSPITALIZATION_ORDER_DETAIL (INPATIENT_SN)
/

create table HOSPITAL_INFO
(
    ORGAN_NAME VARCHAR2(70) not null,
    ORGAN_CODE VARCHAR2(10) not null,
    ORGAN_NUMBER VARCHAR2(20) not null,
    ORGAN_HEAD_NAME VARCHAR2(50) not null,
    ORGAN_HEAD_NUMBER VARCHAR2(20) not null,
    ADDRESS_PROVINCE VARCHAR2(70) not null,
    ADDRESS_CITY VARCHAR2(70) not null,
    ADDRESS_COUNTY VARCHAR2(70) not null,
    TOWN_SHIP VARCHAR2(70) not null,
    ADDRESS_VILLAGE VARCHAR2(70) not null,
    ADDRESS_DOORS VARCHAR2(70) not null,
    POST_CODE NUMBER(6) not null,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table HOSPITAL_INFO is 'cda子集公共表-医疗机构信息表(HOSPITAL_INFO)'
/

comment on column HOSPITAL_INFO.ORGAN_NAME is '医疗机构名称'
/

comment on column HOSPITAL_INFO.ORGAN_CODE is '医疗机构组织结构代码'
/

comment on column HOSPITAL_INFO.ORGAN_NUMBER is '医疗机构联系电话'
/

comment on column HOSPITAL_INFO.ORGAN_HEAD_NAME is '医疗机构负责人（法人）姓名'
/

comment on column HOSPITAL_INFO.ORGAN_HEAD_NUMBER is '医疗机构负责人联系电话'
/

comment on column HOSPITAL_INFO.ADDRESS_PROVINCE is '医疗机构地址中的省、自治区或直辖市名称'
/

comment on column HOSPITAL_INFO.ADDRESS_CITY is '医疗机构地址中的市、地区或州的名称'
/

comment on column HOSPITAL_INFO.ADDRESS_COUNTY is '医疗机构地址中的县（区）的名称'
/

comment on column HOSPITAL_INFO.TOWN_SHIP is '医疗机构地址中的乡、镇或城市的街道办事处名称'
/

comment on column HOSPITAL_INFO.ADDRESS_VILLAGE is '医疗机构地址中的村或城市的街、路、里、弄等名称'
/

comment on column HOSPITAL_INFO.ADDRESS_DOORS is '医疗机构地址中的门牌号码'
/

comment on column HOSPITAL_INFO.POST_CODE is '由阿拉伯数字组成，用来表示与医疗机构地址对应的邮局及其投递区域的邮政通信代号'
/

create table HOURS24_ADMISSION_DEATH_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint HOURS24_DEATH_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    MEDICALHIS_NAME VARCHAR2(50),
    PRESENTER_PATIENT_RELAT_CODE VARCHAR2(2),
    IS_CREDIBLE VARCHAR2(5),
    DEATH_DATE DATE,
    INP_SITUATION VARCHAR2(2000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    DIAG_PROCESS_DESC VARCHAR2(2000),
    DEATH_REASON VARCHAR2(100),
    RECEIVE_DOCTOR_SIGN VARCHAR2(50),
    INP_DOCTOR_SIGN VARCHAR2(50),
    PHYSICIAN_DOCTOR_SIGN VARCHAR2(50),
    ARCHIATER_DOCTOR_SIGN VARCHAR2(50),
    CHIEF_COMPLAINT VARCHAR2(100),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table HOURS24_ADMISSION_DEATH_RECORD is 'cda子集主表-24 h内入院死亡记录子集主表(HOURS24_ADMISSION_DEATH_RECORD)'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.DOC_NO is '文档编号'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.PATIENT_ID is '患者ID'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.INP_NO is '住院号'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.MEDICALHIS_NAME is '病史陈述者姓名'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.PRESENTER_PATIENT_RELAT_CODE is '陈述者与患者的关系代码'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.IS_CREDIBLE is '陈述内容可靠标志'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.DEATH_DATE is '死亡日期时间'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.INP_SITUATION is '入院情况'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.DIAG_PROCESS_DESC is '诊疗过程描述'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.DEATH_REASON is '死亡原因'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.RECEIVE_DOCTOR_SIGN is '接诊医师签名'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.INP_DOCTOR_SIGN is '住院医师签名'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.PHYSICIAN_DOCTOR_SIGN is '主治医师签名'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.ARCHIATER_DOCTOR_SIGN is '主任医师签名'
/

comment on column HOURS24_ADMISSION_DEATH_RECORD.CHIEF_COMPLAINT is '主诉'
/

create index H_A_D_R_INPATIENT_SN_IDX
	on HOURS24_ADMISSION_DEATH_RECORD (INPATIENT_SN)
/

create table INPATIENT_DIAGNOSIS
(
    INHOS_COUNT NUMBER(2) not null,
    INP_NO VARCHAR2(18) not null,
    DIAG_TYPE VARCHAR2(2),
    DIAG_DIAGNOSIS VARCHAR2(100),
    DIAG_CLASSIFICATIONS VARCHAR2(100),
    DIAG_NO VARCHAR2(10),
    DIAG_NAME VARCHAR2(50),
    DIAG_CODE VARCHAR2(50),
    DIAG_DATATIME DATE,
    OUTHOS_INHOS_CODE VARCHAR2(1),
    LAST_MODIFIC_TIME DATE,
    DIAG_ID VARCHAR2(18) not null
        constraint INPATIENT_DIAGNO_PK
        primary key
)
    /

comment on table INPATIENT_DIAGNOSIS is 'cda子集子表-住院病案首页诊断子表(INPATIENT_DIAGNOSIS）'
/

comment on column INPATIENT_DIAGNOSIS.INHOS_COUNT is '住院次数'
/

comment on column INPATIENT_DIAGNOSIS.INP_NO is '住院号'
/

comment on column INPATIENT_DIAGNOSIS.DIAG_TYPE is '诊断类型(1-门诊诊断、2-初步诊断 3-入院诊断 4-修正诊断 5-出院诊断,6-死亡诊断 7-术前诊断 8-术中诊断 9-术后诊断, 10-确定诊断 11-补充诊断 12-目前诊断 13-直接死亡原因 14-病理诊断 15-损伤中毒)'
/

comment on column INPATIENT_DIAGNOSIS.DIAG_DIAGNOSIS is '主诊断标识(1-主诊断、2-其他诊断、3-附属诊断)'
/

comment on column INPATIENT_DIAGNOSIS.DIAG_CLASSIFICATIONS is '诊断类别(1-西医诊断，2-中医诊断，3-中医症候)'
/

comment on column INPATIENT_DIAGNOSIS.DIAG_NO is '诊断顺位'
/

comment on column INPATIENT_DIAGNOSIS.DIAG_NAME is '诊断名称'
/

comment on column INPATIENT_DIAGNOSIS.DIAG_CODE is '诊断编码'
/

comment on column INPATIENT_DIAGNOSIS.DIAG_DATATIME is '诊断时间'
/

comment on column INPATIENT_DIAGNOSIS.OUTHOS_INHOS_CODE is '入院病情代码'
/

comment on column INPATIENT_DIAGNOSIS.LAST_MODIFIC_TIME is '最后修改时间'
/

comment on column INPATIENT_DIAGNOSIS.DIAG_ID is '主键'
/

create index I_D_INHOS_COUNT_IDX
	on INPATIENT_DIAGNOSIS (INHOS_COUNT, INP_NO)
/

create table INPATIENT_MEDICAL_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint INPATIENT_MEDICAL_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    ORG_NAME VARCHAR2(70),
    ORGAN_CODE VARCHAR2(70),
    PAY_WAY VARCHAR2(2),
    HEALTH_CARD_NO VARCHAR2(18),
    INHOS_COUNT NUMBER(2),
    INP_NO VARCHAR2(18),
    MR_NO VARCHAR2(18),
    PATIENT_NAME VARCHAR2(50),
    PATIENT_SEX VARCHAR2(1),
    BIRTHDAY DATE,
    AGE_YEAR NUMBER(3),
    PATIENT_MONTH NUMBER(2),
    NATIONNALITY VARCHAR2(3),
    NEWBORN_BIRTH_WEIGHT NUMBER(4),
    NEWBORN_INP_WEIGHT NUMBER(4),
    BIRTHPLACE_PROVINCE VARCHAR2(70),
    BIRTHPLACE_CITY VARCHAR2(70),
    BIRTHPLACE_COUNTY VARCHAR2(70),
    NATIVEPLACE_PROVINCE VARCHAR2(70),
    NATIVEPLACE_CITY VARCHAR2(70),
    NATION VARCHAR2(2),
    IDENTITY_TYPE VARCHAR2(2),
    IDENTITY_NO VARCHAR2(18),
    OCCUPATION_TYPE_CODE VARCHAR2(2),
    MARITAL_STATUS_CODE VARCHAR2(2),
    CURRENT_PROVINCE VARCHAR2(70),
    CURRENT_CITY VARCHAR2(70),
    CURRENT_COUNTY VARCHAR2(70),
    CURRENT_TOWNSHIP VARCHAR2(70),
    CURRENT_VILLAGE VARCHAR2(70),
    CURRENT_DOORS VARCHAR2(70),
    CURRENT_PHONE VARCHAR2(20),
    CURRENT_ZIP_CODE VARCHAR2(6),
    ACCOUNT_PROVINCE VARCHAR2(70),
    ACCOUNT_CITY VARCHAR2(70),
    ACCOUNT_COUNTY VARCHAR2(70),
    ACCOUNT_TOWNSHIP VARCHAR2(70),
    ACCOUNT_VILLAGE VARCHAR2(70),
    ACCOUNT_DOORS VARCHAR2(70),
    ACCOUNT_ZIP_CODE VARCHAR2(6),
    WORKUNIT_NAME VARCHAR2(70),
    WORKUNIT_PROVINCE VARCHAR2(70),
    WORKUNIT_CITY VARCHAR2(70),
    WORKUNIT_COUNTY VARCHAR2(70),
    WORKUNIT_TOWNSHIP VARCHAR2(70),
    WORKUNIT_VILLAGE VARCHAR2(70),
    WORKUNIT_DOORS VARCHAR2(70),
    WORKUNIT_PHONE VARCHAR2(20),
    WORKUNIT_ZIP_CODE VARCHAR2(6),
    CONTACT_NAME VARCHAR2(50),
    RELATION VARCHAR2(1),
    CAPROVINCE VARCHAR2(70),
    CACITY VARCHAR2(70),
    CACOUNTY VARCHAR2(70),
    CATOWN_SHIP VARCHAR2(70),
    CASTREET VARCHAR2(70),
    CAHOUSE_NUMBER VARCHAR2(70),
    CONTACT_PHONE VARCHAR2(20),
    INP_APPROACH_CODE VARCHAR2(1),
    INP_DATE DATE,
    INP_DEPT_NAME VARCHAR2(50),
    INP_ROOM VARCHAR2(10),
    TRANSITION_DEP VARCHAR2(50),
    DISHOSPITAL_DATE DATE,
    DISHOSPITAL_DEPT_NAME VARCHAR2(50),
    DISHOSPITAL_ROOM VARCHAR2(10),
    INP_DAYS NUMBER(4),
    PATHOLOGY_NO VARCHAR2(18),
    DRUG_ALLERGY_FLAG VARCHAR2(5),
    ALLERGY_DRUG VARCHAR2(1000),
    INHOS_AUTOPSY_FLAG VARCHAR2(5),
    BLOOD_ABO_CODE VARCHAR2(1),
    RH_BLOOD_CODE VARCHAR2(1),
    DEPT_DIRECTOR_SIGN VARCHAR2(50),
    DIRECTOR_SIGN VARCHAR2(50),
    PHYSICIAN_DOCTOR_SIGN VARCHAR2(50),
    INP_DOCTOR_SIGN VARCHAR2(50),
    DUTY_NURSE_SIGN VARCHAR2(50),
    REFRESHER_DOCTOR_SIGN VARCHAR2(50),
    INTERNSHIP_DOCTOR_SIGN VARCHAR2(50),
    CODER_SIGN VARCHAR2(50),
    MR_QUALITY_CODE NUMBER(1),
    QC_DOCTOR_SIGNATURE VARCHAR2(50),
    QC_NURSE_SIGNATURE VARCHAR2(50),
    QUALITYCONTROL_DATE DATE,
    DISHOSPITAL_DISPOSITION_CODE VARCHAR2(1),
    RECEIVE_ORG_NAME VARCHAR2(70),
    OUTHOS_FLAG VARCHAR2(5),
    OUTHOS_PURPOSE VARCHAR2(100),
    HEADINJURY_INPBEFORECOMA_DAY NUMBER(5),
    HEADINJURY_INPBEFORECOMA_HOUR NUMBER(2),
    HEADINJURY_INPBEFORE_MIN NUMBER(2),
    HEADINJURY_INPAFTERCOMA_DAY NUMBER(5),
    HEADINJURY_INPAFTERCOMA_HOUR NUMBER(2),
    HEADINJURY_INPAFTERCOMA_MINUTE NUMBER(2),
    INP_TOTALCOST NUMBER(10,2),
    INP_TOTALCOST_OWNPAY NUMBER(10,2),
    MEDICAL_COMMONLYSERVICE_COST NUMBER(10,2),
    MEDICAL_COMMONLYOPERATION_COST NUMBER(10,2),
    MEDICAL_NURSING_COST NUMBER(10,2),
    MEDICAL_OTHER_COST NUMBER(10,2),
    DIAG_PATHOLOGY_COST NUMBER(10,2),
    DIAG_LABORATORY_COST NUMBER(10,2),
    IMAGING_DIAGNOSIS_EXPENSE NUMBER(10,2),
    DIAG_CLINICAL_COST NUMBER(10,2),
    TREAT_NOOPERATION_ITEMCOST NUMBER(10,2),
    TREAT_NOOPERATION_PHYSICSCOST NUMBER(10,2),
    TREAT_OPERATIONTREAT_COST NUMBER(10,2),
    TREAT_OPER_ANAESTHESIACOST NUMBER(10,2),
    TREAT_OPERATIONTREAT_OPERCOST NUMBER(10,2),
    RECOVERY_COST NUMBER(10,2),
    TCM_TREAT_COST NUMBER(10,2),
    DRUG_COST NUMBER(10,2),
    DRUG_ANTIBIOTICS_COST NUMBER(10,2),
    PROPRIETARY_CM_EXPENSE NUMBER(10,2),
    TCD_CHM_COST NUMBER(10,2),
    BLOOD_COST NUMBER(10,2),
    BLOOD_ALBURMIN_COST NUMBER(10,2),
    BLOOD_GLOBULIN_COST NUMBER(10,2),
    BLOOD_COGULATIONFACTOR_COST NUMBER(10,2),
    BLOOD_CELLFACTOR_COST NUMBER(10,2),
    CHECK_DMM_EXPENSE NUMBER(10,2),
    EXP_TREAT_COST NUMBER(10,2),
    EXP_OPERTION_COST NUMBER(10,2),
    OTHER_COST NUMBER(10,2),
    DISEASE_STATUS_CODE VARCHAR2(2),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table INPATIENT_MEDICAL_RECORD is 'cda子集主表-住院病案首页子集主表(INPATIENT_MEDICAL_RECORD)'
/

comment on column INPATIENT_MEDICAL_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column INPATIENT_MEDICAL_RECORD.DOC_NO is '文档编号'
/

comment on column INPATIENT_MEDICAL_RECORD.PATIENT_ID is '患者ID'
/

comment on column INPATIENT_MEDICAL_RECORD.ORG_NAME is '医疗机构名称'
/

comment on column INPATIENT_MEDICAL_RECORD.ORGAN_CODE is '医疗机构组织机构代码'
/

comment on column INPATIENT_MEDICAL_RECORD.PAY_WAY is '医疗付费方式代码'
/

comment on column INPATIENT_MEDICAL_RECORD.HEALTH_CARD_NO is '居民健康卡号'
/

comment on column INPATIENT_MEDICAL_RECORD.INHOS_COUNT is '住院次数'
/

comment on column INPATIENT_MEDICAL_RECORD.INP_NO is '住院号'
/

comment on column INPATIENT_MEDICAL_RECORD.MR_NO is '病案号'
/

comment on column INPATIENT_MEDICAL_RECORD.PATIENT_NAME is '姓名'
/

comment on column INPATIENT_MEDICAL_RECORD.PATIENT_SEX is '性别代码'
/

comment on column INPATIENT_MEDICAL_RECORD.BIRTHDAY is '出生日期'
/

comment on column INPATIENT_MEDICAL_RECORD.AGE_YEAR is '年龄（岁）'
/

comment on column INPATIENT_MEDICAL_RECORD.PATIENT_MONTH is '年龄（月）'
/

comment on column INPATIENT_MEDICAL_RECORD.NATIONNALITY is '国籍代码'
/

comment on column INPATIENT_MEDICAL_RECORD.NEWBORN_BIRTH_WEIGHT is '新生儿出生体重(g)'
/

comment on column INPATIENT_MEDICAL_RECORD.NEWBORN_INP_WEIGHT is '新生儿入院体重(g)'
/

comment on column INPATIENT_MEDICAL_RECORD.BIRTHPLACE_PROVINCE is '出生地-省（自治区、直辖市）'
/

comment on column INPATIENT_MEDICAL_RECORD.BIRTHPLACE_CITY is '出生地-市（地区、州）'
/

comment on column INPATIENT_MEDICAL_RECORD.BIRTHPLACE_COUNTY is '出生地-县（区）'
/

comment on column INPATIENT_MEDICAL_RECORD.NATIVEPLACE_PROVINCE is '籍贯-省（自治区、直辖市）'
/

comment on column INPATIENT_MEDICAL_RECORD.NATIVEPLACE_CITY is '籍贯-市（地区、州）'
/

comment on column INPATIENT_MEDICAL_RECORD.NATION is '民族'
/

comment on column INPATIENT_MEDICAL_RECORD.IDENTITY_TYPE is '身份证件类别代码'
/

comment on column INPATIENT_MEDICAL_RECORD.IDENTITY_NO is '患者身份证件号码'
/

comment on column INPATIENT_MEDICAL_RECORD.OCCUPATION_TYPE_CODE is '职业类别代码'
/

comment on column INPATIENT_MEDICAL_RECORD.MARITAL_STATUS_CODE is '婚姻状况代码'
/

comment on column INPATIENT_MEDICAL_RECORD.CURRENT_PROVINCE is '现住址-省（自治区、直辖市）'
/

comment on column INPATIENT_MEDICAL_RECORD.CURRENT_CITY is '现住址-市（地区、州）'
/

comment on column INPATIENT_MEDICAL_RECORD.CURRENT_COUNTY is '现住址-县（区）'
/

comment on column INPATIENT_MEDICAL_RECORD.CURRENT_TOWNSHIP is '现住址-乡（镇、街道办事处）'
/

comment on column INPATIENT_MEDICAL_RECORD.CURRENT_VILLAGE is '现住址-村（街、路、弄等）'
/

comment on column INPATIENT_MEDICAL_RECORD.CURRENT_DOORS is '现住址-门牌号码'
/

comment on column INPATIENT_MEDICAL_RECORD.CURRENT_PHONE is '电话号码'
/

comment on column INPATIENT_MEDICAL_RECORD.CURRENT_ZIP_CODE is '现住址-邮政编码'
/

comment on column INPATIENT_MEDICAL_RECORD.ACCOUNT_PROVINCE is '户口地址-省（自治区、直辖市）'
/

comment on column INPATIENT_MEDICAL_RECORD.ACCOUNT_CITY is '户口地址-市（地区、州）'
/

comment on column INPATIENT_MEDICAL_RECORD.ACCOUNT_COUNTY is '户口地址-县（区）'
/

comment on column INPATIENT_MEDICAL_RECORD.ACCOUNT_TOWNSHIP is '户口地址-乡（镇、街道办事处）'
/

comment on column INPATIENT_MEDICAL_RECORD.ACCOUNT_VILLAGE is '户口地址-村（街、路、弄等）'
/

comment on column INPATIENT_MEDICAL_RECORD.ACCOUNT_DOORS is '户口地址-门牌号码'
/

comment on column INPATIENT_MEDICAL_RECORD.ACCOUNT_ZIP_CODE is '户口地址-邮政编码'
/

comment on column INPATIENT_MEDICAL_RECORD.WORKUNIT_NAME is '工作单位名称'
/

comment on column INPATIENT_MEDICAL_RECORD.WORKUNIT_PROVINCE is '工作单位地址-省（自治区、直辖市）'
/

comment on column INPATIENT_MEDICAL_RECORD.WORKUNIT_CITY is '工作单位地址-市（地区、州）'
/

comment on column INPATIENT_MEDICAL_RECORD.WORKUNIT_COUNTY is '工作单位地址-县（区）'
/

comment on column INPATIENT_MEDICAL_RECORD.WORKUNIT_TOWNSHIP is '工作单位地址-乡（镇、街道办事处）'
/

comment on column INPATIENT_MEDICAL_RECORD.WORKUNIT_VILLAGE is '工作单位地址-村（街、路、弄等）'
/

comment on column INPATIENT_MEDICAL_RECORD.WORKUNIT_DOORS is '工作单位地址-门牌号码'
/

comment on column INPATIENT_MEDICAL_RECORD.WORKUNIT_PHONE is '工作单位电话号码'
/

comment on column INPATIENT_MEDICAL_RECORD.WORKUNIT_ZIP_CODE is '工作单位地址-邮政编码'
/

comment on column INPATIENT_MEDICAL_RECORD.CONTACT_NAME is '联系人姓名'
/

comment on column INPATIENT_MEDICAL_RECORD.RELATION is '联系人与患者的关系代码'
/

comment on column INPATIENT_MEDICAL_RECORD.CAPROVINCE is '联系人地址-省（自治区、直辖市）'
/

comment on column INPATIENT_MEDICAL_RECORD.CACITY is '联系人地址-市（地区、州）'
/

comment on column INPATIENT_MEDICAL_RECORD.CACOUNTY is '联系人地址-县（区）'
/

comment on column INPATIENT_MEDICAL_RECORD.CATOWN_SHIP is '联系人地址-乡（镇、街道办事处）'
/

comment on column INPATIENT_MEDICAL_RECORD.CASTREET is '联系人地址-村（街、路、弄等）'
/

comment on column INPATIENT_MEDICAL_RECORD.CAHOUSE_NUMBER is '联系人地址-门牌号码'
/

comment on column INPATIENT_MEDICAL_RECORD.CONTACT_PHONE is '联系人电话号码'
/

comment on column INPATIENT_MEDICAL_RECORD.INP_APPROACH_CODE is '入院途径代码'
/

comment on column INPATIENT_MEDICAL_RECORD.INP_DATE is '入院日期时间'
/

comment on column INPATIENT_MEDICAL_RECORD.INP_DEPT_NAME is '入院科别'
/

comment on column INPATIENT_MEDICAL_RECORD.INP_ROOM is '入院病房'
/

comment on column INPATIENT_MEDICAL_RECORD.TRANSITION_DEP is '转科科别'
/

comment on column INPATIENT_MEDICAL_RECORD.DISHOSPITAL_DATE is '出院日期时间'
/

comment on column INPATIENT_MEDICAL_RECORD.DISHOSPITAL_DEPT_NAME is '出院科别'
/

comment on column INPATIENT_MEDICAL_RECORD.DISHOSPITAL_ROOM is '出院病房'
/

comment on column INPATIENT_MEDICAL_RECORD.INP_DAYS is '实际住院天数'
/

comment on column INPATIENT_MEDICAL_RECORD.PATHOLOGY_NO is '病理号'
/

comment on column INPATIENT_MEDICAL_RECORD.DRUG_ALLERGY_FLAG is '药物过敏标志'
/

comment on column INPATIENT_MEDICAL_RECORD.ALLERGY_DRUG is '过敏药物'
/

comment on column INPATIENT_MEDICAL_RECORD.INHOS_AUTOPSY_FLAG is '死亡患者尸检标志'
/

comment on column INPATIENT_MEDICAL_RECORD.BLOOD_ABO_CODE is 'ABO血型代码'
/

comment on column INPATIENT_MEDICAL_RECORD.RH_BLOOD_CODE is 'Rh血型代码'
/

comment on column INPATIENT_MEDICAL_RECORD.DEPT_DIRECTOR_SIGN is '科主任签名'
/

comment on column INPATIENT_MEDICAL_RECORD.DIRECTOR_SIGN is '主任（副主任）医师签名'
/

comment on column INPATIENT_MEDICAL_RECORD.PHYSICIAN_DOCTOR_SIGN is '主治医师签名'
/

comment on column INPATIENT_MEDICAL_RECORD.INP_DOCTOR_SIGN is '住院医师签名'
/

comment on column INPATIENT_MEDICAL_RECORD.DUTY_NURSE_SIGN is '责任护士签名'
/

comment on column INPATIENT_MEDICAL_RECORD.REFRESHER_DOCTOR_SIGN is '进修医师签名'
/

comment on column INPATIENT_MEDICAL_RECORD.INTERNSHIP_DOCTOR_SIGN is '实习医师签名'
/

comment on column INPATIENT_MEDICAL_RECORD.CODER_SIGN is '编码员签名'
/

comment on column INPATIENT_MEDICAL_RECORD.MR_QUALITY_CODE is '病案质量代码'
/

comment on column INPATIENT_MEDICAL_RECORD.QC_DOCTOR_SIGNATURE is '质控医师签名'
/

comment on column INPATIENT_MEDICAL_RECORD.QC_NURSE_SIGNATURE is '质控护士签名'
/

comment on column INPATIENT_MEDICAL_RECORD.QUALITYCONTROL_DATE is '质控日期'
/

comment on column INPATIENT_MEDICAL_RECORD.DISHOSPITAL_DISPOSITION_CODE is '离院方式代码'
/

comment on column INPATIENT_MEDICAL_RECORD.RECEIVE_ORG_NAME is '拟接收医疗机构名称'
/

comment on column INPATIENT_MEDICAL_RECORD.OUTHOS_FLAG is '出院31天内再住院标志'
/

comment on column INPATIENT_MEDICAL_RECORD.OUTHOS_PURPOSE is '出院31天内再住院目的'
/

comment on column INPATIENT_MEDICAL_RECORD.HEADINJURY_INPBEFORECOMA_DAY is '颅脑损伤患者入院前昏迷时间-d'
/

comment on column INPATIENT_MEDICAL_RECORD.HEADINJURY_INPBEFORECOMA_HOUR is '颅脑损伤患者入院前昏迷时间-h'
/

comment on column INPATIENT_MEDICAL_RECORD.HEADINJURY_INPBEFORE_MIN is '颅脑损伤患者入院前昏迷时间-min'
/

comment on column INPATIENT_MEDICAL_RECORD.HEADINJURY_INPAFTERCOMA_DAY is '颅脑损伤患者入院后昏迷时间-d'
/

comment on column INPATIENT_MEDICAL_RECORD.HEADINJURY_INPAFTERCOMA_HOUR is '颅脑损伤患者入院后昏迷时间-h'
/

comment on column INPATIENT_MEDICAL_RECORD.HEADINJURY_INPAFTERCOMA_MINUTE is '颅脑损伤患者入院后昏迷时间-min'
/

comment on column INPATIENT_MEDICAL_RECORD.INP_TOTALCOST is '住院总费用'
/

comment on column INPATIENT_MEDICAL_RECORD.INP_TOTALCOST_OWNPAY is '住院总费用-自付金额'
/

comment on column INPATIENT_MEDICAL_RECORD.MEDICAL_COMMONLYSERVICE_COST is '综合医疗服务类-一般医疗服务费'
/

comment on column INPATIENT_MEDICAL_RECORD.MEDICAL_COMMONLYOPERATION_COST is '综合医疗服务类-一般治疗操作费'
/

comment on column INPATIENT_MEDICAL_RECORD.MEDICAL_NURSING_COST is '综合医疗服务类-护理费'
/

comment on column INPATIENT_MEDICAL_RECORD.MEDICAL_OTHER_COST is '综合医疗服务类-其他费用'
/

comment on column INPATIENT_MEDICAL_RECORD.DIAG_PATHOLOGY_COST is '诊断类-病理诊断费'
/

comment on column INPATIENT_MEDICAL_RECORD.DIAG_LABORATORY_COST is '诊断类-实验室诊断费'
/

comment on column INPATIENT_MEDICAL_RECORD.IMAGING_DIAGNOSIS_EXPENSE is '诊断类-影像学诊断费'
/

comment on column INPATIENT_MEDICAL_RECORD.DIAG_CLINICAL_COST is '诊断类-临床诊断项目费'
/

comment on column INPATIENT_MEDICAL_RECORD.TREAT_NOOPERATION_ITEMCOST is '治疗类-非手术治疗项目费'
/

comment on column INPATIENT_MEDICAL_RECORD.TREAT_NOOPERATION_PHYSICSCOST is '治疗类-非手术治疗项目费-临床物理治疗费'
/

comment on column INPATIENT_MEDICAL_RECORD.TREAT_OPERATIONTREAT_COST is '治疗类-手术治疗费'
/

comment on column INPATIENT_MEDICAL_RECORD.TREAT_OPER_ANAESTHESIACOST is '治疗类-手术治疗费-麻醉费'
/

comment on column INPATIENT_MEDICAL_RECORD.TREAT_OPERATIONTREAT_OPERCOST is '治疗类-手术治疗费-手术费'
/

comment on column INPATIENT_MEDICAL_RECORD.RECOVERY_COST is '康复类-康复费'
/

comment on column INPATIENT_MEDICAL_RECORD.TCM_TREAT_COST is '中医类-中医治疗费'
/

comment on column INPATIENT_MEDICAL_RECORD.DRUG_COST is '西药类-西药费'
/

comment on column INPATIENT_MEDICAL_RECORD.DRUG_ANTIBIOTICS_COST is '西药类-西药费-抗菌药物费用'
/

comment on column INPATIENT_MEDICAL_RECORD.PROPRIETARY_CM_EXPENSE is '中药类-中成药费'
/

comment on column INPATIENT_MEDICAL_RECORD.TCD_CHM_COST is '中药类-中草药费'
/

comment on column INPATIENT_MEDICAL_RECORD.BLOOD_COST is '血液和血液制品类-血费'
/

comment on column INPATIENT_MEDICAL_RECORD.BLOOD_ALBURMIN_COST is '血液和血液制品类-白蛋白类制品费'
/

comment on column INPATIENT_MEDICAL_RECORD.BLOOD_GLOBULIN_COST is '血液和血液制品类-球蛋白类制品费'
/

comment on column INPATIENT_MEDICAL_RECORD.BLOOD_COGULATIONFACTOR_COST is '血液和血液制品类-凝血因子类制品费'
/

comment on column INPATIENT_MEDICAL_RECORD.BLOOD_CELLFACTOR_COST is '血液和血液制品类-细胞因子类制品费'
/

comment on column INPATIENT_MEDICAL_RECORD.CHECK_DMM_EXPENSE is '耗材类-检查用一次性医用材料费'
/

comment on column INPATIENT_MEDICAL_RECORD.EXP_TREAT_COST is '耗材类-治疗用一次性医用材料费'
/

comment on column INPATIENT_MEDICAL_RECORD.EXP_OPERTION_COST is '耗材类-手术用一次性医用材料费'
/

comment on column INPATIENT_MEDICAL_RECORD.OTHER_COST is '其他类-其他费'
/

comment on column INPATIENT_MEDICAL_RECORD.DISEASE_STATUS_CODE is '住院者疾病状态代码'
/

comment on column INPATIENT_MEDICAL_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index I_M_R_INPATIENT_SN_IDX
	on INPATIENT_MEDICAL_RECORD (INPATIENT_SN)
/

create table INTRACTABLE_DISCUSS_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint INTRACTABLE_DISCUSS_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    DISCUSS_DATATIME DATE,
    DISCUSS_PLACE VARCHAR2(50),
    DISCUSS_NAMES VARCHAR2(200),
    COMPERE_NAME VARCHAR2(50),
    DISCUSS_SUGGESTION VARCHAR2(2000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    DIALECTICAL_DESC VARCHAR2(1000),
    ADVICE_CONTENT VARCHAR2(1000),
    CHIN_DRINK_DECWAY VARCHAR2(1000),
    COMPERE_SUMMARY_SUGGESTION VARCHAR2(2000),
    DOCTOR_SIGN VARCHAR2(50),
    PHYSICIAN_DOCTOR_SIGN VARCHAR2(50),
    ARCHIATER_DOCTOR_SIGN VARCHAR2(50),
    CHIN_DECOC_DECWAY VARCHAR2(100),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table INTRACTABLE_DISCUSS_RECORD is 'cda子集主表-疑难病例讨论子集主表(INTRACTABLE_DISCUSS_RECORD)'
/

comment on column INTRACTABLE_DISCUSS_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column INTRACTABLE_DISCUSS_RECORD.DOC_NO is '文档编号'
/

comment on column INTRACTABLE_DISCUSS_RECORD.PATIENT_ID is '患者ID'
/

comment on column INTRACTABLE_DISCUSS_RECORD.INP_NO is '住院号'
/

comment on column INTRACTABLE_DISCUSS_RECORD.DISCUSS_DATATIME is '讨论日期时间'
/

comment on column INTRACTABLE_DISCUSS_RECORD.DISCUSS_PLACE is '讨论地点'
/

comment on column INTRACTABLE_DISCUSS_RECORD.DISCUSS_NAMES is '参加讨论人员名单'
/

comment on column INTRACTABLE_DISCUSS_RECORD.COMPERE_NAME is '主持人姓名'
/

comment on column INTRACTABLE_DISCUSS_RECORD.DISCUSS_SUGGESTION is '讨论意见'
/

comment on column INTRACTABLE_DISCUSS_RECORD.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column INTRACTABLE_DISCUSS_RECORD.DIALECTICAL_DESC is '辨证论治详细描述'
/

comment on column INTRACTABLE_DISCUSS_RECORD.ADVICE_CONTENT is '中药处方医嘱内容'
/

comment on column INTRACTABLE_DISCUSS_RECORD.CHIN_DRINK_DECWAY is '中药用药方法'
/

comment on column INTRACTABLE_DISCUSS_RECORD.COMPERE_SUMMARY_SUGGESTION is '主持人总结意见'
/

comment on column INTRACTABLE_DISCUSS_RECORD.DOCTOR_SIGN is '医师签名'
/

comment on column INTRACTABLE_DISCUSS_RECORD.PHYSICIAN_DOCTOR_SIGN is '主治医师签名'
/

comment on column INTRACTABLE_DISCUSS_RECORD.ARCHIATER_DOCTOR_SIGN is '主任医师签名'
/

comment on column INTRACTABLE_DISCUSS_RECORD.CHIN_DECOC_DECWAY is '中药煎煮法'
/

create index I_D_R_INPATIENT_SN_IDX
	on INTRACTABLE_DISCUSS_RECORD (INPATIENT_SN)
/

create table MEDICAL_ORDER_MASTER
(
    OUTPATIENT_SN VARCHAR2(18) not null,
    PRESC_ID VARCHAR2(50) not null
        constraint MEDICAL_ORDER_MASTER_PK
        primary key,
    ADVICE_REMARK VARCHAR2(100),
    ADVICE_OPENDEPT_NAME VARCHAR2(50),
    ADVICE_OPENDOCTOR_SIGN VARCHAR2(50),
    ADVICE_OPEN_DATETIME DATE,
    CHECK_PERSON_SIGN VARCHAR2(50),
    CHECK_ADVICE_DATETIME DATE,
    EXEC_DEPT_NAME VARCHAR2(50),
    EXEC_PERSON_SIGN VARCHAR2(50),
    ADVICE_EXEC_DATETIME DATE,
    ADVICE_EXEC_STATUS VARCHAR2(50),
    CANCEL_PERSON_SIGN VARCHAR2(50),
    CANCEL_ADVICE_DATETIME DATE,
    ORDER_BEGIN_TIME DATE,
    ORDER_END_TIME DATE,
    ADVICE_ITEM_CONTENT VARCHAR2(100),
    ORDER_ITEM_TYPE_CODE VARCHAR2(2),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table MEDICAL_ORDER_MASTER is 'cda子集子表-急诊留观病历医嘱子表（MEDICAL_ORDER_MASTER）与门（急）诊病历子集医嘱子表结构一模一样'
/

comment on column MEDICAL_ORDER_MASTER.OUTPATIENT_SN is '急诊流水号'
/

comment on column MEDICAL_ORDER_MASTER.PRESC_ID is '急诊医嘱ID'
/

comment on column MEDICAL_ORDER_MASTER.ADVICE_REMARK is '医嘱备注信息'
/

comment on column MEDICAL_ORDER_MASTER.ADVICE_OPENDEPT_NAME is '医嘱开立科室'
/

comment on column MEDICAL_ORDER_MASTER.ADVICE_OPENDOCTOR_SIGN is '医嘱开立者签名'
/

comment on column MEDICAL_ORDER_MASTER.ADVICE_OPEN_DATETIME is '医嘱开立日期时间'
/

comment on column MEDICAL_ORDER_MASTER.CHECK_PERSON_SIGN is '医嘱审核者签名'
/

comment on column MEDICAL_ORDER_MASTER.CHECK_ADVICE_DATETIME is '医嘱审核日期时间'
/

comment on column MEDICAL_ORDER_MASTER.EXEC_DEPT_NAME is '医嘱执行科室'
/

comment on column MEDICAL_ORDER_MASTER.EXEC_PERSON_SIGN is '医嘱执行者签名'
/

comment on column MEDICAL_ORDER_MASTER.ADVICE_EXEC_DATETIME is '医嘱执行日期时间'
/

comment on column MEDICAL_ORDER_MASTER.ADVICE_EXEC_STATUS is '医嘱执行状态'
/

comment on column MEDICAL_ORDER_MASTER.CANCEL_PERSON_SIGN is '取消医嘱者签名'
/

comment on column MEDICAL_ORDER_MASTER.CANCEL_ADVICE_DATETIME is '医嘱取消日期时间'
/

comment on column MEDICAL_ORDER_MASTER.ORDER_BEGIN_TIME is '医嘱计划开始时间'
/

comment on column MEDICAL_ORDER_MASTER.ORDER_END_TIME is '医嘱计划结束时间'
/

comment on column MEDICAL_ORDER_MASTER.ADVICE_ITEM_CONTENT is '医嘱项目内容'
/

comment on column MEDICAL_ORDER_MASTER.ORDER_ITEM_TYPE_CODE is '医嘱项目类型代码'
/

comment on column MEDICAL_ORDER_MASTER.LAST_MODIFIC_TIME is '最后修改时间'
/

create index M_O_M_OUTPATIENT_SN_IDX
	on MEDICAL_ORDER_MASTER (OUTPATIENT_SN)
/

create table NURSING_OBSERVATION
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    GENERAL_NURSING_ID VARCHAR2(18),
    NURSING_OBSERVATION_NAME VARCHAR2(100),
    NURSING_OBSERVATION_RESULT VARCHAR2(1000),
    NURSING_OBSERVATION_DATE DATE,
    NURSING_TYPE_CODE NUMBER(18),
    NURSE_SIGN VARCHAR2(50),
    NURSING_OBSERVATION_ID VARCHAR2(18) not null
        constraint NURSING_OBSERVATION_PK
        primary key,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table NURSING_OBSERVATION is 'cda子集公共表-护理观察表(NURSING_OBSERVATION)'
/

comment on column NURSING_OBSERVATION.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column NURSING_OBSERVATION.INPATIENT_SN is '住院流水号'
/

comment on column NURSING_OBSERVATION.GENERAL_NURSING_ID is '护理记录唯一标识'
/

comment on column NURSING_OBSERVATION.NURSING_OBSERVATION_NAME is '护理观察项目名称'
/

comment on column NURSING_OBSERVATION.NURSING_OBSERVATION_RESULT is '护理观察结果'
/

comment on column NURSING_OBSERVATION.NURSING_OBSERVATION_DATE is '护理观察时间'
/

comment on column NURSING_OBSERVATION.NURSING_TYPE_CODE is '护理类型代码'
/

comment on column NURSING_OBSERVATION.NURSE_SIGN is '护士签名'
/

comment on column NURSING_OBSERVATION.NURSING_OBSERVATION_ID is '护理观察ID'
/

create index N_O_OUTPATIENT_SN_IDX
	on NURSING_OBSERVATION (OUTPATIENT_SN)
/

create table NURSING_OPERATION
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    GENERAL_NURSING_ID VARCHAR2(18),
    NURSING_OPERATION_NAME VARCHAR2(100),
    NURSING_OPERATION_ITEM VARCHAR2(100),
    NURSING_OPERATION_RESULT VARCHAR2(1000),
    NURSING_OPERATION_DATE DATE,
    NURSE_SIGN VARCHAR2(50),
    NURSING_OPERATION_ID VARCHAR2(18) not null
        constraint NURSING_OPERATION_PK
        primary key,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table NURSING_OPERATION is 'cda子集公共表-护理操作表(NURSING_OPERATION)'
/

comment on column NURSING_OPERATION.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column NURSING_OPERATION.INPATIENT_SN is '住院流水号'
/

comment on column NURSING_OPERATION.GENERAL_NURSING_ID is '护理记录唯一标识'
/

comment on column NURSING_OPERATION.NURSING_OPERATION_NAME is '护理操作名称'
/

comment on column NURSING_OPERATION.NURSING_OPERATION_ITEM is '护理操作项目类目名称'
/

comment on column NURSING_OPERATION.NURSING_OPERATION_RESULT is '护理操作结果'
/

comment on column NURSING_OPERATION.NURSING_OPERATION_DATE is '护理操作时间'
/

comment on column NURSING_OPERATION.NURSE_SIGN is '护士签名'
/

comment on column NURSING_OPERATION.NURSING_OPERATION_ID is '护理操作ID'
/

create index N_OP_OUTPATIENT_SN_ID
	on NURSING_OPERATION (OUTPATIENT_SN)
/

create index N_OP_INPATIENT_SN_IDX
	on NURSING_OPERATION (INPATIENT_SN)
/

create table OPERATION_ANA
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OPER_REQ_SN VARCHAR2(18),
    OPERA_SN VARCHAR2(18),
    ANESTHESIA_METHOD_CODE NUMBER(2),
    ANESTHESIA_DOCTOR_FLAG_CODE NUMBER(1),
    ANESTHE_BEGIN_DATE DATE,
    ASA_STANDARD_CODE NUMBER(1),
    ANESTHESIA_COMPLICAT_CODE NUMBER(1),
    ANESTHESIA_EFFECT VARCHAR2(100),
    PRE_ANAESTHESIA_DRUG VARCHAR2(100),
    TRACHEAL_INTUBATION_CODE VARCHAR2(100),
    ANAESTHESIA_DRUG_NAME VARCHAR2(50),
    ANAESTHESIA_LOCATION VARCHAR2(100),
    RESPIRATORY_TYPE_CODE NUMBER(1),
    PUNCTURE_PROCESS VARCHAR2(2000),
    ANAESTHESIA_DESC VARCHAR2(200),
    ANESTHESIA_OBSERVATION_RESULT VARCHAR2(1000),
    ANESTHESIA_DOCTOR_SIGN VARCHAR2(50),
    OPERATION_ANA_ID VARCHAR2(18) not null
        constraint OPERATION_ANA_PK
        primary key,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OPERATION_ANA is 'cda子集公共表-麻醉操作表(OPERATION_ANA)'
/

comment on column OPERATION_ANA.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column OPERATION_ANA.INPATIENT_SN is '住院流水号'
/

comment on column OPERATION_ANA.OPER_REQ_SN is '手术申请单号'
/

comment on column OPERATION_ANA.OPERA_SN is '手术记录流水号'
/

comment on column OPERATION_ANA.ANESTHESIA_METHOD_CODE is '麻醉方法代码'
/

comment on column OPERATION_ANA.ANESTHESIA_DOCTOR_FLAG_CODE is '麻醉中西医标识代码'
/

comment on column OPERATION_ANA.ANESTHE_BEGIN_DATE is '麻醉开始日期时间'
/

comment on column OPERATION_ANA.ASA_STANDARD_CODE is '美国麻醉医师协会(ASA)分级标准代码'
/

comment on column OPERATION_ANA.ANESTHESIA_COMPLICAT_CODE is '麻醉合并症标志代码'
/

comment on column OPERATION_ANA.ANESTHESIA_EFFECT is '麻醉效果'
/

comment on column OPERATION_ANA.PRE_ANAESTHESIA_DRUG is '麻醉前用药'
/

comment on column OPERATION_ANA.TRACHEAL_INTUBATION_CODE is '气管插管分类'
/

comment on column OPERATION_ANA.ANAESTHESIA_DRUG_NAME is '麻醉药物名称'
/

comment on column OPERATION_ANA.ANAESTHESIA_LOCATION is '麻醉体位'
/

comment on column OPERATION_ANA.RESPIRATORY_TYPE_CODE is '呼吸类型代码'
/

comment on column OPERATION_ANA.PUNCTURE_PROCESS is '穿刺过程'
/

comment on column OPERATION_ANA.ANAESTHESIA_DESC is '麻醉描述'
/

comment on column OPERATION_ANA.ANESTHESIA_OBSERVATION_RESULT is '麻醉观察结果'
/

comment on column OPERATION_ANA.ANESTHESIA_DOCTOR_SIGN is '麻醉医师签名'
/

comment on column OPERATION_ANA.OPERATION_ANA_ID is '麻醉操作表ID'
/

create index O_A_OUTPATIENT_SN_IDX
	on OPERATION_ANA (OUTPATIENT_SN)
/

create index O_A_INPATIENT_SN_IDX
	on OPERATION_ANA (INPATIENT_SN)
/

create table OPERATION_DRUG
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OPER_REQ_SN VARCHAR2(18),
    OPERA_SN VARCHAR2(18),
    MED_TYPE NUMBER(1),
    MED_NAME VARCHAR2(100),
    DRUG_USAGE VARCHAR2(100),
    DRUG_USAGE_FRE VARCHAR2(2),
    DRUG_DOSAGE_UNIT VARCHAR2(6),
    DRUG_USAGE_DOSAGE NUMBER(5,2),
    DRUG_USAGE_TOTAL NUMBER(12,2),
    ROUTE_ADMINISTRATION NUMBER(3),
    OPERATION_DRUG_ID VARCHAR2(18) not null
        constraint OPERATION_DRUG_PK
        primary key,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OPERATION_DRUG is 'cda子集公共表-手术用药表(OPERATION_DRUG)'
/

comment on column OPERATION_DRUG.OUTPATIENT_SN is '门（急）诊号'
/

comment on column OPERATION_DRUG.INPATIENT_SN is '住院流水号'
/

comment on column OPERATION_DRUG.OPER_REQ_SN is '手术申请单号'
/

comment on column OPERATION_DRUG.OPERA_SN is '手术记录流水号'
/

comment on column OPERATION_DRUG.MED_TYPE is '用药类型(1-术前用药，2-术中用药)'
/

comment on column OPERATION_DRUG.MED_NAME is '用药名称'
/

comment on column OPERATION_DRUG.DRUG_USAGE is '药物用法'
/

comment on column OPERATION_DRUG.DRUG_USAGE_FRE is '药物使用频次代码'
/

comment on column OPERATION_DRUG.DRUG_DOSAGE_UNIT is '药物使用剂量单位'
/

comment on column OPERATION_DRUG.DRUG_USAGE_DOSAGE is '药物使用次剂量'
/

comment on column OPERATION_DRUG.DRUG_USAGE_TOTAL is '药物使用总剂量'
/

comment on column OPERATION_DRUG.ROUTE_ADMINISTRATION is '用药途径代码'
/

comment on column OPERATION_DRUG.OPERATION_DRUG_ID is '手术用药ID'
/

create index O_D_OUTPATIENT_SN_IDX
	on OPERATION_DRUG (OUTPATIENT_SN)
/

create index O_D_INPATIENT_SN_IDX
	on OPERATION_DRUG (INPATIENT_SN)
/

create table OPERATION_INFORMED_CONSENT
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint OPERATION_INFORMED_CONSENT_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OPER_REQ_SN VARCHAR2(18),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    INFORMED_CONSENT_NO VARCHAR2(20),
    OPEATION_POSSIBLE_VENTURE VARCHAR2(200),
    OPEA_AFTER_POS_VENTURE VARCHAR2(1000),
    REPLACE_SCHEME VARCHAR2(1000),
    ORG_OPINION VARCHAR2(2000),
    PATIENT_AGENT_OPINION VARCHAR2(2000),
    PATIENT_SIGN VARCHAR2(50),
    LEGAL_AGENT_SIGN VARCHAR2(50),
    RELATION_CODE VARCHAR2(2),
    SIGN_DATETIME DATE,
    TREATING_DOCTOR_SIGN VARCHAR2(50),
    DOCTOR_SIGN_DATETIME DATE,
    OPERATOR_SIGN VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OPERATION_INFORMED_CONSENT is 'cda子集主表-手术同意书子集主表（OPERATION_INFORMED_CONSENT）'
/

comment on column OPERATION_INFORMED_CONSENT.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column OPERATION_INFORMED_CONSENT.INPATIENT_SN is '住院流水号'
/

comment on column OPERATION_INFORMED_CONSENT.DOC_NO is '文档编号'
/

comment on column OPERATION_INFORMED_CONSENT.PATIENT_ID is '患者ID'
/

comment on column OPERATION_INFORMED_CONSENT.OPER_REQ_SN is '手术申请单号'
/

comment on column OPERATION_INFORMED_CONSENT.OUTP_NO is '门（急）诊号'
/

comment on column OPERATION_INFORMED_CONSENT.INP_NO is '住院号'
/

comment on column OPERATION_INFORMED_CONSENT.INFORMED_CONSENT_NO is '知情同意书编号'
/

comment on column OPERATION_INFORMED_CONSENT.OPEATION_POSSIBLE_VENTURE is '手术中可能出现的意外及风险'
/

comment on column OPERATION_INFORMED_CONSENT.OPEA_AFTER_POS_VENTURE is '手术后可能出现的意外及并发症'
/

comment on column OPERATION_INFORMED_CONSENT.REPLACE_SCHEME is '替代方案'
/

comment on column OPERATION_INFORMED_CONSENT.ORG_OPINION is '医疗机构意见'
/

comment on column OPERATION_INFORMED_CONSENT.PATIENT_AGENT_OPINION is '患者/法定代理人意见'
/

comment on column OPERATION_INFORMED_CONSENT.PATIENT_SIGN is '患者签名'
/

comment on column OPERATION_INFORMED_CONSENT.LEGAL_AGENT_SIGN is '法定代理人签名'
/

comment on column OPERATION_INFORMED_CONSENT.RELATION_CODE is '法定代理人与患者的关系代码'
/

comment on column OPERATION_INFORMED_CONSENT.SIGN_DATETIME is '患者/法定代理人签名日期时间'
/

comment on column OPERATION_INFORMED_CONSENT.TREATING_DOCTOR_SIGN is '经治医师签名'
/

comment on column OPERATION_INFORMED_CONSENT.DOCTOR_SIGN_DATETIME is '医师签名日期时间'
/

comment on column OPERATION_INFORMED_CONSENT.OPERATOR_SIGN is '手术者签名'
/

comment on column OPERATION_INFORMED_CONSENT.LAST_MODIFIC_TIME is '最后修改时间'
/

create index O_I_C_OUTPATIENT_SN_IDX
	on OPERATION_INFORMED_CONSENT (OUTPATIENT_SN)
/

create index O_I_C_INPATIENT_SN_IDX
	on OPERATION_INFORMED_CONSENT (INPATIENT_SN)
/

create table OPERATION_MONI
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OPER_REQ_SN VARCHAR2(18),
    OPERA_SN VARCHAR2(18),
    MONITOR_TYPE NUMBER(1),
    ROUTINE_MONITOR_PROJ_NAME VARCHAR2(100),
    ROUTINE_MONITOR_PROJ_RESULT VARCHAR2(200),
    SPECMONITORPROJECT_NAME VARCHAR2(200),
    SPECMONITORPROJECT_RESULT VARCHAR2(200),
    OPERATION_MONI_ID VARCHAR2(18) not null
        constraint OPERATION_MONI_PK
        primary key,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OPERATION_MONI is 'cda子集公共表-手术项目监测表(OPERATION_MONI)'
/

comment on column OPERATION_MONI.OUTPATIENT_SN is '门（急）诊号'
/

comment on column OPERATION_MONI.INPATIENT_SN is '住院流水号'
/

comment on column OPERATION_MONI.OPER_REQ_SN is '手术申请单号'
/

comment on column OPERATION_MONI.OPERA_SN is '手术记录流水号'
/

comment on column OPERATION_MONI.MONITOR_TYPE is '监测类型'
/

comment on column OPERATION_MONI.ROUTINE_MONITOR_PROJ_NAME is '常规监测项目名称'
/

comment on column OPERATION_MONI.ROUTINE_MONITOR_PROJ_RESULT is '常规监测项目结果'
/

comment on column OPERATION_MONI.SPECMONITORPROJECT_NAME is '特殊监测项目名称'
/

comment on column OPERATION_MONI.SPECMONITORPROJECT_RESULT is '特殊监测项目结果'
/

comment on column OPERATION_MONI.OPERATION_MONI_ID is '手术监测ID'
/

create index O_M_OUTPATIENT_SN_IDX
	on OPERATION_MONI (OUTPATIENT_SN)
/

create index O_M_INPATIENT_SN_IDX
	on OPERATION_MONI (INPATIENT_SN)
/

create table OPERATION_OPER
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OPER_REQ_SN VARCHAR2(18),
    OPERA_SN VARCHAR2(18),
    OPERATE_ROOM_NO VARCHAR2(20),
    OPERATION_BEGIN_DATETIME DATE,
    OPERATIION_END_DATETIME DATE,
    OUT_OPERATEROOM_DATETIME DATE,
    OPERATION_CODE VARCHAR2(20),
    OPERATION_NAME VARCHAR2(80),
    OPERATION_LEVEL_CODE NUMBER(1),
    OPERATION_DOCTOR_NAME VARCHAR2(50),
    FIRST_ASSISTANT_NAME VARCHAR2(50),
    SECONDE_ASSISTANT_NAME VARCHAR2(50),
    INSTRU_NURSE_NAME VARCHAR2(50),
    TOUR_NURSE_NAME VARCHAR2(50),
    OPERATION_POSITION_CODE VARCHAR2(4),
    OPERTATION_TARGET_CODE NUMBER(4),
    OPERTATION_TARGET_NAME VARCHAR2(50),
    INTER_NAME VARCHAR2(100),
    OPERATION VARCHAR2(2000),
    OPERATION_TIMES NUMBER(3),
    OPERATION_OPER_NO VARCHAR2(18) not null
        constraint OPERATION_OPER_PK
        primary key,
    LAST_MODIFIC_TIME DATE,
    ENTER_OPERATEROOM_DATETIME DATE,
    OPERATIVE_SITE_COOD VARCHAR2(10)
)
    /

comment on table OPERATION_OPER is 'cda子集公共表-手术操作表（OPERATION_OPER）'
/

comment on column OPERATION_OPER.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column OPERATION_OPER.INPATIENT_SN is '住院流水号'
/

comment on column OPERATION_OPER.OPER_REQ_SN is '手术申请单号'
/

comment on column OPERATION_OPER.OPERA_SN is '手术记录流水号'
/

comment on column OPERATION_OPER.OPERATE_ROOM_NO is '手术间编号'
/

comment on column OPERATION_OPER.OPERATION_BEGIN_DATETIME is '手术开始日期时间'
/

comment on column OPERATION_OPER.OPERATIION_END_DATETIME is '手术结束日期时间'
/

comment on column OPERATION_OPER.OUT_OPERATEROOM_DATETIME is '出手术室时间'
/

comment on column OPERATION_OPER.OPERATION_CODE is '手术及操作编码'
/

comment on column OPERATION_OPER.OPERATION_NAME is '手术及操作名称'
/

comment on column OPERATION_OPER.OPERATION_LEVEL_CODE is '手术级别代码'
/

comment on column OPERATION_OPER.OPERATION_DOCTOR_NAME is '手术医生'
/

comment on column OPERATION_OPER.FIRST_ASSISTANT_NAME is 'I助姓名'
/

comment on column OPERATION_OPER.SECONDE_ASSISTANT_NAME is 'II助姓名'
/

comment on column OPERATION_OPER.INSTRU_NURSE_NAME is '器械护士姓名'
/

comment on column OPERATION_OPER.TOUR_NURSE_NAME is '巡台护士姓名'
/

comment on column OPERATION_OPER.OPERATION_POSITION_CODE is '操作部位代码'
/

comment on column OPERATION_OPER.OPERTATION_TARGET_CODE is '操作体位代码'
/

comment on column OPERATION_OPER.OPERTATION_TARGET_NAME is '手术及操作目标部位名称'
/

comment on column OPERATION_OPER.INTER_NAME is '介入物名称'
/

comment on column OPERATION_OPER.OPERATION is '手术及操作方法'
/

comment on column OPERATION_OPER.OPERATION_TIMES is '手术及操作次数'
/

comment on column OPERATION_OPER.OPERATION_OPER_NO is '手术操作流水号'
/

comment on column OPERATION_OPER.ENTER_OPERATEROOM_DATETIME is '入手术室时间'
/

comment on column OPERATION_OPER.OPERATIVE_SITE_COOD is '实施手术的人体部位代码'
/

create index O_O_INPATIENT_SN_IDX
	on OPERATION_OPER (INPATIENT_SN)
/

create index O_O_OUTPATIENT_SN_IDX
	on OPERATION_OPER (OUTPATIENT_SN)
/

create table OPERATION_PREP
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OPER_REQ_SN VARCHAR2(18) not null
        constraint OPERATION_PREP_PK
        primary key,
    SIMULOPERATION_CODE VARCHAR2(20),
    OPERATION_NAME VARCHAR2(80),
    OPERATION_POSITION_NAME VARCHAR2(50),
    INTENT_ANESTHESIA_CODE NUMBER(2),
    OPERATE_ANESTHESIA_ADVICE VARCHAR2(1000),
    ANESTHESIA_INDICATION VARCHAR2(100),
    ATTENTION VARCHAR2(1000),
    INTENT_OPERATE_DATETIME DATE,
    OPERATION_INDICATION VARCHAR2(500),
    OPERATION_CONTRAINDICATION VARCHAR2(100),
    OPERATION_METHOD VARCHAR2(30),
    OPERATION_BEFORE_PREPARE VARCHAR2(1000),
    OPERATE_ROOM_NO VARCHAR2(20),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OPERATION_PREP is 'cda子集公共表-拟实施手术操作表（OPERATION_PREP）'
/

comment on column OPERATION_PREP.OUTPATIENT_SN is '门（急）诊号'
/

comment on column OPERATION_PREP.INPATIENT_SN is '住院流水号'
/

comment on column OPERATION_PREP.OPER_REQ_SN is '手术申请单号'
/

comment on column OPERATION_PREP.SIMULOPERATION_CODE is '拟实施手术及操作编码'
/

comment on column OPERATION_PREP.OPERATION_NAME is '拟实施手术及操作名称'
/

comment on column OPERATION_PREP.OPERATION_POSITION_NAME is '拟实施手术目标部位名称'
/

comment on column OPERATION_PREP.INTENT_ANESTHESIA_CODE is '拟实施麻醉方法代码'
/

comment on column OPERATION_PREP.OPERATE_ANESTHESIA_ADVICE is '术前麻醉医嘱'
/

comment on column OPERATION_PREP.ANESTHESIA_INDICATION is '麻醉适应证'
/

comment on column OPERATION_PREP.ATTENTION is '注意事项'
/

comment on column OPERATION_PREP.INTENT_OPERATE_DATETIME is '拟实施手术及操作日期时间'
/

comment on column OPERATION_PREP.OPERATION_INDICATION is '手术指征'
/

comment on column OPERATION_PREP.OPERATION_CONTRAINDICATION is '手术禁忌症'
/

comment on column OPERATION_PREP.OPERATION_METHOD is '手术方式'
/

comment on column OPERATION_PREP.OPERATION_BEFORE_PREPARE is '术前准备'
/

comment on column OPERATION_PREP.OPERATE_ROOM_NO is '手术间编号'
/

create index O_P_OUTPATIENT_SN_IDX
	on OPERATION_PREP (OUTPATIENT_SN)
/

create index O_P_INPATIENT_SN_IDX
	on OPERATION_PREP (INPATIENT_SN)
/

create table OPERATION_VITAL
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OPER_REQ_SN VARCHAR2(18),
    OPERA_SN VARCHAR2(18),
    RECORD_DATE DATE,
    SYSTOLIC_PRESSURE NUMBER(3),
    DIASTOLIC_PRESSURE NUMBER(3),
    TEMPERATURE NUMBER(4,1),
    CARDIOTACH NUMBER(3),
    SPHYGMUS NUMBER(3),
    BREATH_FREQUENCY NUMBER(3),
    OPERATION_VITAL_ID VARCHAR2(18) not null
        constraint OPERATION_VITAL_PK
        primary key,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OPERATION_VITAL is 'cda子集公共表-手术体征记录表(OPERATION_VITAL)'
/

comment on column OPERATION_VITAL.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column OPERATION_VITAL.INPATIENT_SN is '住院流水号'
/

comment on column OPERATION_VITAL.OPER_REQ_SN is '手术申请单号'
/

comment on column OPERATION_VITAL.OPERA_SN is '手术记录流水号'
/

comment on column OPERATION_VITAL.RECORD_DATE is '记录时间'
/

comment on column OPERATION_VITAL.SYSTOLIC_PRESSURE is '收缩压(mmHg)'
/

comment on column OPERATION_VITAL.DIASTOLIC_PRESSURE is '舒张压(mmHg)'
/

comment on column OPERATION_VITAL.TEMPERATURE is '体温（℃）'
/

comment on column OPERATION_VITAL.CARDIOTACH is '心率(次/min)'
/

comment on column OPERATION_VITAL.SPHYGMUS is '脉率(次/min)'
/

comment on column OPERATION_VITAL.BREATH_FREQUENCY is '呼吸频率（次/min)'
/

comment on column OPERATION_VITAL.OPERATION_VITAL_ID is '手术体征ID'
/

create index O_V_OUTPATIENT_SN_IDX
	on OPERATION_VITAL (OUTPATIENT_SN)
/

create index O_V_INPATIENT_SN_IDX
	on OPERATION_VITAL (INPATIENT_SN)
/

create table OTHER_INFORMED_CONSENT
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint OTHER_INFORMED_CONSENT_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    INFORMED_CONSENT_NAME VARCHAR2(200),
    INFORMED_CONSENT_NO VARCHAR2(20),
    INFORMED_CONSENT_CONENT VARCHAR2(1000),
    ORG_OPINION VARCHAR2(2000),
    PATIENT_AGENT_OPINION VARCHAR2(2000),
    PATIENT_SIGN VARCHAR2(50),
    LEGAL_AGENT_SIGN VARCHAR2(50),
    RELATION_CODE VARCHAR2(2),
    SIGN_DATETIME DATE,
    DOCTOR_SIGN VARCHAR2(50),
    DOCTOR_SIGN_DATETIME DATE,
    LAST_MODIFIC_TIME DATE,
    constraint "OTHER_INFORMED_CONSENT_check"
        check (REGEXP_LIKE(OUTPATIENT_SN, '/S') and (not REGEXP_LIKE(INPATIENT_SN, '/S'))
            or
               (REGEXP_LIKE(INPATIENT_SN, '/S') and not REGEXP_LIKE(OUTPATIENT_SN, '/S')))
)
    /

comment on table OTHER_INFORMED_CONSENT is 'cda子集主表-其他知情同意书子集主表（OTHER_INFORMED_CONSENT）'
/

comment on column OTHER_INFORMED_CONSENT.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column OTHER_INFORMED_CONSENT.INPATIENT_SN is '住院流水号'
/

comment on column OTHER_INFORMED_CONSENT.DOC_NO is '文档编号'
/

comment on column OTHER_INFORMED_CONSENT.PATIENT_ID is '患者ID'
/

comment on column OTHER_INFORMED_CONSENT.OUTP_NO is '门（急）诊号'
/

comment on column OTHER_INFORMED_CONSENT.INP_NO is '住院号'
/

comment on column OTHER_INFORMED_CONSENT.INFORMED_CONSENT_NAME is '知情同意书名称'
/

comment on column OTHER_INFORMED_CONSENT.INFORMED_CONSENT_NO is '知情同意书编号'
/

comment on column OTHER_INFORMED_CONSENT.INFORMED_CONSENT_CONENT is '知情同意内容'
/

comment on column OTHER_INFORMED_CONSENT.ORG_OPINION is '医疗机构意见'
/

comment on column OTHER_INFORMED_CONSENT.PATIENT_AGENT_OPINION is '患者/法定代理人意见'
/

comment on column OTHER_INFORMED_CONSENT.PATIENT_SIGN is '患者签名'
/

comment on column OTHER_INFORMED_CONSENT.LEGAL_AGENT_SIGN is '法定代理人签名'
/

comment on column OTHER_INFORMED_CONSENT.RELATION_CODE is '法定代理人与患者的关系代码'
/

comment on column OTHER_INFORMED_CONSENT.SIGN_DATETIME is '患者/法定代理人签名日期时间'
/

comment on column OTHER_INFORMED_CONSENT.DOCTOR_SIGN is '医师签名'
/

comment on column OTHER_INFORMED_CONSENT.DOCTOR_SIGN_DATETIME is '医师签名日期时间'
/

create index O_I_CON_OUTPATIENT_SN_IDX
	on OTHER_INFORMED_CONSENT (OUTPATIENT_SN)
/

create index O_I_CON_INPATIENT_SN_IDX
	on OTHER_INFORMED_CONSENT (INPATIENT_SN)
/

create table OUTPATIENT_EMERGENCY_RECORDS
(
    OUTPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint OUTPATIENT_EMERGENCY_PK
        primary key,
    OUTP_NO VARCHAR2(18),
    PATIENT_ID VARCHAR2(20),
    ALLERGY_HOSTORY_FLAG VARCHAR2(5),
    ALLERGY_HISTORY VARCHAR2(1000),
    NEWLY_DIAGNOSED_CODE VARCHAR2(1),
    CHIEF_COMPLAINT VARCHAR2(100),
    PRESENT_DISEASE_HISTORY VARCHAR2(2000),
    PAST_HISTORY VARCHAR2(1000),
    PHYSICAL_EXAMINATION VARCHAR2(500),
    TCM_FOUR_OBSERVATIONS VARCHAR2(1000),
    AUXILIARYEXAMI_ITEM VARCHAR2(100),
    AUXILIARYEXAMI_RESULT VARCHAR2(1000),
    DIALECTICAL_ACCROD VARCHAR2(100),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    APPLY_NO VARCHAR2(20),
    DOCTOR_SIGN VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OUTPATIENT_EMERGENCY_RECORDS is 'cda子集主表-门（急）诊病历子集主表（OUTPATIENT_EMERGENCY_RECORDS）'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.DOC_NO is '文档编号'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.OUTP_NO is '门（急）诊号'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.PATIENT_ID is '患者ID'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.ALLERGY_HOSTORY_FLAG is '过敏史标志'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.ALLERGY_HISTORY is '过敏史'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.NEWLY_DIAGNOSED_CODE is '初诊标志代码'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.CHIEF_COMPLAINT is '主诉'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.PRESENT_DISEASE_HISTORY is '现病史'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.PAST_HISTORY is '既往史'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.PHYSICAL_EXAMINATION is '体格检查'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.TCM_FOUR_OBSERVATIONS is '中医“四诊”观察结果'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.AUXILIARYEXAMI_ITEM is '辅助检查项目'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.AUXILIARYEXAMI_RESULT is '辅助检查结果'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.DIALECTICAL_ACCROD is '辨证依据'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.APPLY_NO is '电子申请单编号'
/

comment on column OUTPATIENT_EMERGENCY_RECORDS.DOCTOR_SIGN is '医师签名'
/

create index O_E_RECORDS_OUTPATIENT_SN_IDX
	on OUTPATIENT_EMERGENCY_RECORDS (OUTPATIENT_SN)
/

create table OUTPATIENT_RECORDS_ORDER
(
    OUTPATIENT_SN VARCHAR2(18) not null,
    PRESC_ID VARCHAR2(50) not null
        constraint OUTPATIENT_RECORDS_ORDER_PK
        primary key,
    ADVICE_OPENDEPT_NAME VARCHAR2(50),
    ADVICE_OPENDOCTOR_SIGN VARCHAR2(50),
    ADVICE_OPEN_DATETIME DATE,
    CHECK_PERSON_SIGN VARCHAR2(50),
    CHECK_ADVICE_DATETIME DATE,
    EXEC_DEPT_NAME VARCHAR2(50),
    EXEC_PERSON_SIGN VARCHAR2(50),
    ADVICE_EXEC_DATETIME DATE,
    ADVICE_EXEC_STATUS VARCHAR2(50),
    CANCEL_PERSON_SIGN VARCHAR2(50),
    CANCEL_ADVICE_DATETIME DATE,
    ADVICE_REMARK VARCHAR2(100),
    ORDER_ITEM_TYPE_CODE VARCHAR2(2),
    ADVICE_ITEM_CONTENT VARCHAR2(100),
    ORDER_BEGIN_TIME DATE,
    ORDER_END_TIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OUTPATIENT_RECORDS_ORDER is 'cda子集子表-门（急）诊病历子集子表-门诊医嘱表（OUTPATIENT_RECORDS_ORDER）'
/

comment on column OUTPATIENT_RECORDS_ORDER.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column OUTPATIENT_RECORDS_ORDER.PRESC_ID is '医嘱ID'
/

comment on column OUTPATIENT_RECORDS_ORDER.ADVICE_OPENDEPT_NAME is '医嘱开立科室'
/

comment on column OUTPATIENT_RECORDS_ORDER.ADVICE_OPENDOCTOR_SIGN is '医嘱开立者签名'
/

comment on column OUTPATIENT_RECORDS_ORDER.ADVICE_OPEN_DATETIME is '医嘱开立日期时间'
/

comment on column OUTPATIENT_RECORDS_ORDER.CHECK_PERSON_SIGN is '医嘱审核者签名'
/

comment on column OUTPATIENT_RECORDS_ORDER.CHECK_ADVICE_DATETIME is '医嘱审核日期时间'
/

comment on column OUTPATIENT_RECORDS_ORDER.EXEC_DEPT_NAME is '医嘱执行科室'
/

comment on column OUTPATIENT_RECORDS_ORDER.EXEC_PERSON_SIGN is '医嘱执行者签名'
/

comment on column OUTPATIENT_RECORDS_ORDER.ADVICE_EXEC_DATETIME is '医嘱执行日期时间'
/

comment on column OUTPATIENT_RECORDS_ORDER.ADVICE_EXEC_STATUS is '医嘱执行状态'
/

comment on column OUTPATIENT_RECORDS_ORDER.CANCEL_PERSON_SIGN is '取消医嘱者签名'
/

comment on column OUTPATIENT_RECORDS_ORDER.CANCEL_ADVICE_DATETIME is '医嘱取消日期时间'
/

comment on column OUTPATIENT_RECORDS_ORDER.ADVICE_REMARK is '医嘱备注信息'
/

comment on column OUTPATIENT_RECORDS_ORDER.ORDER_ITEM_TYPE_CODE is '医嘱项目类型代码'
/

comment on column OUTPATIENT_RECORDS_ORDER.ADVICE_ITEM_CONTENT is '医嘱项目内容'
/

comment on column OUTPATIENT_RECORDS_ORDER.ORDER_BEGIN_TIME is '医嘱计划开始时间'
/

comment on column OUTPATIENT_RECORDS_ORDER.ORDER_END_TIME is '医嘱计划结束时间'
/

create index O_R_O_OUTPATIENT_SN_IDX
	on OUTPATIENT_RECORDS_ORDER (OUTPATIENT_SN)
/

create table OUTP_PRESCIPTION_DETAIL
(
    USAGE_ID VARCHAR2(50) not null
        constraint OUTP_PRESCIPTION_DETAIL_PK
        primary key,
    PRESC_ID VARCHAR2(50) not null,
    RECIPE_GROUP_NO NUMBER(38),
    ADVICE_ITEM_CODE VARCHAR2(50),
    ADVICE_ITEM_CONTENT VARCHAR2(100),
    DRUG_USAGE VARCHAR2(100),
    DRUG_SPEC VARCHAR2(20),
    DRUG_DOSAGE_CODE VARCHAR2(2),
    DRUG_DOSAGE NUMBER(5,2),
    DOSAGE_UNIT VARCHAR2(6),
    DRUG_USAGE_FREQUENCY VARCHAR2(2),
    ROUTE_ADMINISTRATION NUMBER(3),
    USAGE_DOSAGE_TOTAL NUMBER(12,2),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OUTP_PRESCIPTION_DETAIL is 'cda子集公共表-门诊处方明细表(OUTP_PRESCIPTION_DETAIL)'
/

comment on column OUTP_PRESCIPTION_DETAIL.USAGE_ID is '药品ID'
/

comment on column OUTP_PRESCIPTION_DETAIL.PRESC_ID is '处方编号'
/

comment on column OUTP_PRESCIPTION_DETAIL.RECIPE_GROUP_NO is '处方药品组号'
/

comment on column OUTP_PRESCIPTION_DETAIL.ADVICE_ITEM_CODE is '医嘱项目编码/处方药物编码'
/

comment on column OUTP_PRESCIPTION_DETAIL.ADVICE_ITEM_CONTENT is '医嘱项目名称/处方药物名称'
/

comment on column OUTP_PRESCIPTION_DETAIL.DRUG_USAGE is '药物用法'
/

comment on column OUTP_PRESCIPTION_DETAIL.DRUG_SPEC is '药物规格'
/

comment on column OUTP_PRESCIPTION_DETAIL.DRUG_DOSAGE_CODE is '药物剂型代码'
/

comment on column OUTP_PRESCIPTION_DETAIL.DRUG_DOSAGE is '药物使用次剂'
/

comment on column OUTP_PRESCIPTION_DETAIL.DOSAGE_UNIT is '药物使用剂量单位'
/

comment on column OUTP_PRESCIPTION_DETAIL.DRUG_USAGE_FREQUENCY is '药物使用频次代码'
/

comment on column OUTP_PRESCIPTION_DETAIL.ROUTE_ADMINISTRATION is '用药途径代码'
/

comment on column OUTP_PRESCIPTION_DETAIL.USAGE_DOSAGE_TOTAL is '药物使用总剂量'
/

comment on column OUTP_PRESCIPTION_DETAIL.LAST_MODIFIC_TIME is '最后修改时间'
/

create index O_P_D_PRESC_ID_IDX
	on OUTP_PRESCIPTION_DETAIL (PRESC_ID)
/

create table PHASE_SUMMARY
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint PHASE_SUMMARY_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    STAGE_SUMMARY_DATATIME DATE,
    CHIEF_COMPLAINT VARCHAR2(100),
    INP_SITUATION VARCHAR2(2000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    CHIN_DECOC_DECWAY VARCHAR2(100),
    CHIN_DRINK_DECWAY VARCHAR2(100),
    ADVICE_CONTENT VARCHAR2(1000),
    DIAG_DESC VARCHAR2(2000),
    CURRENTLY_SITUATION VARCHAR2(2000),
    NEXT_TREATMENT_PLAN VARCHAR2(1000),
    DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATATIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table PHASE_SUMMARY is 'cda子集主表-阶段小结子集主表(PHASE_SUMMARY)'
/

comment on column PHASE_SUMMARY.INPATIENT_SN is '住院流水号'
/

comment on column PHASE_SUMMARY.DOC_NO is '文档编号'
/

comment on column PHASE_SUMMARY.PATIENT_ID is '患者ID'
/

comment on column PHASE_SUMMARY.INP_NO is '住院号'
/

comment on column PHASE_SUMMARY.STAGE_SUMMARY_DATATIME is '小结日期时间'
/

comment on column PHASE_SUMMARY.CHIEF_COMPLAINT is '主诉'
/

comment on column PHASE_SUMMARY.INP_SITUATION is '入院情况'
/

comment on column PHASE_SUMMARY.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column PHASE_SUMMARY.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column PHASE_SUMMARY.CHIN_DECOC_DECWAY is '中药煎煮方法'
/

comment on column PHASE_SUMMARY.CHIN_DRINK_DECWAY is '中药用药方法'
/

comment on column PHASE_SUMMARY.ADVICE_CONTENT is '医嘱内容'
/

comment on column PHASE_SUMMARY.DIAG_DESC is '诊疗过程描述'
/

comment on column PHASE_SUMMARY.CURRENTLY_SITUATION is '目前情况'
/

comment on column PHASE_SUMMARY.NEXT_TREATMENT_PLAN is '今后治疗方案'
/

comment on column PHASE_SUMMARY.DOCTOR_SIGN is '医师签名'
/

comment on column PHASE_SUMMARY.SIGN_DATATIME is '签名日期时间'
/

create index PHASE_SUMMARY_INPATIENT_SN_IDX
	on PHASE_SUMMARY (INPATIENT_SN)
/

create table POSTOPERAT_FIRST_COURSE
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint POSTOPERAT_FIRST_COURSE_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    RECORD_DATATIME DATE,
    OPER_REQ_SN VARCHAR2(18),
    OPERATION_PROCESS_DESC VARCHAR2(2000),
    DIAG_EVIDENCE VARCHAR2(1000),
    MATTERS_NEED_ATTENTION VARCHAR2(1000),
    DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATATIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table POSTOPERAT_FIRST_COURSE is 'cda子集主表-术后首次病程子集主表(POSTOPERAT_FIRST_COURSE)'
/

comment on column POSTOPERAT_FIRST_COURSE.INPATIENT_SN is '住院流水号'
/

comment on column POSTOPERAT_FIRST_COURSE.DOC_NO is '文档编号'
/

comment on column POSTOPERAT_FIRST_COURSE.PATIENT_ID is '患者ID'
/

comment on column POSTOPERAT_FIRST_COURSE.INP_NO is '住院号'
/

comment on column POSTOPERAT_FIRST_COURSE.RECORD_DATATIME is '记录日期时间'
/

comment on column POSTOPERAT_FIRST_COURSE.OPER_REQ_SN is '手术申请单号'
/

comment on column POSTOPERAT_FIRST_COURSE.OPERATION_PROCESS_DESC is '手术过程'
/

comment on column POSTOPERAT_FIRST_COURSE.DIAG_EVIDENCE is '诊断依据'
/

comment on column POSTOPERAT_FIRST_COURSE.MATTERS_NEED_ATTENTION is '注意事项'
/

comment on column POSTOPERAT_FIRST_COURSE.DOCTOR_SIGN is '医师签名'
/

comment on column POSTOPERAT_FIRST_COURSE.SIGN_DATATIME is '签名日期时间'
/

create index P_F_C_INPATIENT_SN_IDX
	on POSTOPERAT_FIRST_COURSE (INPATIENT_SN)
/

create table PRECIOUS_CONSUM_USAGE_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint HIGHVALUE_EXP_DETAIL_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    CREATE_DATETIME DATE,
    EXP_IMPLANTABLE_FLAG VARCHAR2(10),
    EXP_NAME VARCHAR2(200),
    EXP_CODE VARCHAR2(20),
    EXP_FACTORY VARCHAR2(70),
    EXP_SUPPLIER VARCHAR2(70),
    EXP_UNIT VARCHAR2(6),
    QUANTITY NUMBER(5),
    USE_WAYS VARCHAR2(30),
    NURSE_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table PRECIOUS_CONSUM_USAGE_RECORD is 'cda子集主表-高值耗材使用记录（PRECIOUS_CONSUM_USAGE_RECORD）'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.DOC_NO is '文档编号'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.PATIENT_ID is '患者ID'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.INP_NO is '住院号'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.CREATE_DATETIME is '记录日期时间'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.EXP_IMPLANTABLE_FLAG is '植入性耗材标志'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.EXP_NAME is '材料名称'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.EXP_CODE is '产品编码'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.EXP_FACTORY is '产品生产厂家'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.EXP_SUPPLIER is '产品供应商'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.EXP_UNIT is '耗材单位'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.QUANTITY is '数量'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.USE_WAYS is '使用途径'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.NURSE_SIGN is '护士签名'
/

comment on column PRECIOUS_CONSUM_USAGE_RECORD.SIGN_DATETIME is '签名日期时间'
/

create index P_C_U_R_INPATIENT_SN_IDX
	on PRECIOUS_CONSUM_USAGE_RECORD (INPATIENT_SN)
/

create table PRESCRIPTION_CHINE
(
    OUTPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint PRESCRIPTION_CHINE_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    PRESC_ID VARCHAR2(50) not null,
    RECIPE_NO NUMBER(30) not null,
    PRESCRIPTION_CATEGORY_CODE VARCHAR2(1),
    RECIPE_OPEN_DATE DATE,
    RECIPE_EFFECTIVE_DAY NUMBER(2),
    RECIPE_OPENDEPT_NAME VARCHAR2(50),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    RECIPE_OPENDOCTOR_NAME VARCHAR2(50),
    RECIPE_REMARK VARCHAR2(100),
    RECIPE_COSTS_AMOUNT NUMBER(8,2),
    LAST_MODIFIC_TIME DATE,
    TCD_DECOCTIONPIECES VARCHAR2(500),
    TCD_DECOCTIONPIECES_FORM NUMBER(2),
    TCD_DECOCTIONPIECES_DECOCTION VARCHAR2(100),
    TCD_USAGE VARCHAR2(100)
)
    /

comment on table PRESCRIPTION_CHINE is 'cda子集主表-中药处方主表(PRESCRIPTION_CHINE)'
/

comment on column PRESCRIPTION_CHINE.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column PRESCRIPTION_CHINE.DOC_NO is '文档编号'
/

comment on column PRESCRIPTION_CHINE.PATIENT_ID is '患者ID'
/

comment on column PRESCRIPTION_CHINE.OUTP_NO is '门（急）诊号'
/

comment on column PRESCRIPTION_CHINE.PRESC_ID is '处方id'
/

comment on column PRESCRIPTION_CHINE.RECIPE_NO is '处方编号'
/

comment on column PRESCRIPTION_CHINE.PRESCRIPTION_CATEGORY_CODE is '处方类别代码'
/

comment on column PRESCRIPTION_CHINE.RECIPE_OPEN_DATE is '处方开立日期'
/

comment on column PRESCRIPTION_CHINE.RECIPE_EFFECTIVE_DAY is '处方有效天数'
/

comment on column PRESCRIPTION_CHINE.RECIPE_OPENDEPT_NAME is '处方开立科室名称'
/

comment on column PRESCRIPTION_CHINE.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column PRESCRIPTION_CHINE.RECIPE_OPENDOCTOR_NAME is '处方开立医师签名'
/

comment on column PRESCRIPTION_CHINE.RECIPE_REMARK is '处方备注信息'
/

comment on column PRESCRIPTION_CHINE.RECIPE_COSTS_AMOUNT is '处方药品金额'
/

comment on column PRESCRIPTION_CHINE.TCD_DECOCTIONPIECES is '中药饮片处方'
/

comment on column PRESCRIPTION_CHINE.TCD_DECOCTIONPIECES_FORM is '中药饮片剂数（剂）'
/

comment on column PRESCRIPTION_CHINE.TCD_DECOCTIONPIECES_DECOCTION is '中药饮片煎煮法'
/

comment on column PRESCRIPTION_CHINE.TCD_USAGE is '中药用药方法'
/

create index P_C_OUTPATIENT_SN_IDX
	on PRESCRIPTION_CHINE (OUTPATIENT_SN)
/

create table PRESCRIPTION_WEST
(
    OUTPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint PRESCRIPTION_WEST_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    RECIPE_NO NUMBER(30),
    PRESC_ID VARCHAR2(50),
    RECIPE_OPEN_DATE DATE,
    RECIPE_EFFECTIVE_DAY NUMBER(2),
    RECIPE_OPENDEPT_NAME VARCHAR2(50),
    RECIPE_REMARK VARCHAR2(100),
    RECIPE_COSTS_AMOUNT NUMBER(8,2),
    RECIPE_OPENDOCTOR_NAME VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table PRESCRIPTION_WEST is 'cda子集主表-西药处方主表(PRESCRIPTION_WEST)'
/

comment on column PRESCRIPTION_WEST.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column PRESCRIPTION_WEST.DOC_NO is '文档编号'
/

comment on column PRESCRIPTION_WEST.PATIENT_ID is '患者ID'
/

comment on column PRESCRIPTION_WEST.OUTP_NO is '门（急）诊号'
/

comment on column PRESCRIPTION_WEST.RECIPE_NO is '处方编号，用于CDA显示'
/

comment on column PRESCRIPTION_WEST.PRESC_ID is '处方编号，用于关联明细表'
/

comment on column PRESCRIPTION_WEST.RECIPE_OPEN_DATE is '处方开立日期'
/

comment on column PRESCRIPTION_WEST.RECIPE_EFFECTIVE_DAY is '处方有效天数'
/

comment on column PRESCRIPTION_WEST.RECIPE_OPENDEPT_NAME is '处方开立科室名称'
/

comment on column PRESCRIPTION_WEST.RECIPE_REMARK is '处方备注信息'
/

comment on column PRESCRIPTION_WEST.RECIPE_COSTS_AMOUNT is '处方药品金额'
/

comment on column PRESCRIPTION_WEST.RECIPE_OPENDOCTOR_NAME is '处方开立医师签名'
/

create index P_W_OUTPATIENT_SN_IDX
	on PRESCRIPTION_WEST (OUTPATIENT_SN)
/

create table PRE_OPERATION_DISCUSSION
(
    INPATIENT_SN VARCHAR2(18) not null,
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint PRE_OPERATION_DISCUSSION_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    DISCUSS_DATATIME DATE,
    DISCUSS_PLACE VARCHAR2(50),
    COMPERE_NAME VARCHAR2(50),
    DISCUSS_NAMES VARCHAR2(200),
    ANAESTHESIA_DOCTOR_NAME VARCHAR2(50),
    PROFESSIONAL_CATAGORY_CODE NUMBER(1),
    OPERATION_POINTS VARCHAR2(200),
    OPERATION_PLANS VARCHAR2(1000),
    MATTERS_NEED_ATTENTION VARCHAR2(1000),
    DISCUSS_SUGGESTION VARCHAR2(2000),
    DISCUSS_CONCLUSION VARCHAR2(2000),
    OPERATIVE_SIGN VARCHAR2(50),
    OPER_REQ_SN VARCHAR2(18),
    DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATATIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table PRE_OPERATION_DISCUSSION is 'cda子集主表-术前讨论子集主表(PRE_OPERATION_DISCUSSION)'
/

comment on column PRE_OPERATION_DISCUSSION.INPATIENT_SN is '住院流水号'
/

comment on column PRE_OPERATION_DISCUSSION.INP_NO is '住院号'
/

comment on column PRE_OPERATION_DISCUSSION.DOC_NO is '文档编号'
/

comment on column PRE_OPERATION_DISCUSSION.PATIENT_ID is '患者ID'
/

comment on column PRE_OPERATION_DISCUSSION.DISCUSS_DATATIME is '讨论日期时间'
/

comment on column PRE_OPERATION_DISCUSSION.DISCUSS_PLACE is '讨论地点'
/

comment on column PRE_OPERATION_DISCUSSION.COMPERE_NAME is '主持人姓名'
/

comment on column PRE_OPERATION_DISCUSSION.DISCUSS_NAMES is '参加讨论人员名单'
/

comment on column PRE_OPERATION_DISCUSSION.ANAESTHESIA_DOCTOR_NAME is '麻醉医师签名'
/

comment on column PRE_OPERATION_DISCUSSION.PROFESSIONAL_CATAGORY_CODE is '专业技术职务类别代码'
/

comment on column PRE_OPERATION_DISCUSSION.OPERATION_POINTS is '手术要点'
/

comment on column PRE_OPERATION_DISCUSSION.OPERATION_PLANS is '手术方案'
/

comment on column PRE_OPERATION_DISCUSSION.MATTERS_NEED_ATTENTION is '注意事项'
/

comment on column PRE_OPERATION_DISCUSSION.DISCUSS_SUGGESTION is '讨论意见'
/

comment on column PRE_OPERATION_DISCUSSION.DISCUSS_CONCLUSION is '讨论结论'
/

comment on column PRE_OPERATION_DISCUSSION.OPERATIVE_SIGN is '手术者签名'
/

comment on column PRE_OPERATION_DISCUSSION.OPER_REQ_SN is '手术申请单号'
/

comment on column PRE_OPERATION_DISCUSSION.DOCTOR_SIGN is '医师签名'
/

comment on column PRE_OPERATION_DISCUSSION.SIGN_DATATIME is '签名日期时间'
/

comment on column PRE_OPERATION_DISCUSSION.LAST_MODIFIC_TIME is '最后修改时间'
/

create index P_O_D_INPATIENT_SN_IDX
	on PRE_OPERATION_DISCUSSION (INPATIENT_SN)
/

create table PRE_OPERATION_SUMMARY
(
    INPATIENT_SN VARCHAR2(18) not null,
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint PRE_OPERATION_SUMMARY_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    STAGE_SUMMARY_DATATIME DATE,
    MR_EXCERPTS VARCHAR2(200),
    OPER_REQ_SN VARCHAR2(18),
    DIAG_EVIDENCE VARCHAR2(1000),
    ALLERGY_FLAG VARCHAR2(5),
    ALLERGY_HISTORY VARCHAR2(1000),
    AUXILIARYEXAMI_RESULT VARCHAR2(1000),
    SURGICAL_INDICATION VARCHAR2(100),
    SURGERY_CONTRAINDICATION VARCHAR2(100),
    OPERATIVE_INDICATION VARCHAR2(500),
    CONSULTATION_SUGGESTION VARCHAR2(2000),
    MATTERS_NEED_ATTENTION VARCHAR2(1000),
    OPERATION_POINTS VARCHAR2(200),
    OPERATIVE_SIGN VARCHAR2(50),
    DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATATIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table PRE_OPERATION_SUMMARY is 'cda子集主表-术前小结子集主表(PRE_OPERATION_SUMMARY)'
/

comment on column PRE_OPERATION_SUMMARY.INPATIENT_SN is '住院流水号'
/

comment on column PRE_OPERATION_SUMMARY.INP_NO is '住院号'
/

comment on column PRE_OPERATION_SUMMARY.DOC_NO is '文档编号'
/

comment on column PRE_OPERATION_SUMMARY.PATIENT_ID is '患者ID'
/

comment on column PRE_OPERATION_SUMMARY.STAGE_SUMMARY_DATATIME is '小结日期时间'
/

comment on column PRE_OPERATION_SUMMARY.MR_EXCERPTS is '病历摘要'
/

comment on column PRE_OPERATION_SUMMARY.OPER_REQ_SN is '手术申请单号'
/

comment on column PRE_OPERATION_SUMMARY.DIAG_EVIDENCE is '诊断依据'
/

comment on column PRE_OPERATION_SUMMARY.ALLERGY_FLAG is '过敏史标志'
/

comment on column PRE_OPERATION_SUMMARY.ALLERGY_HISTORY is '过敏史'
/

comment on column PRE_OPERATION_SUMMARY.AUXILIARYEXAMI_RESULT is '辅助检查结果'
/

comment on column PRE_OPERATION_SUMMARY.SURGICAL_INDICATION is '手术适应证'
/

comment on column PRE_OPERATION_SUMMARY.SURGERY_CONTRAINDICATION is '手术禁忌症'
/

comment on column PRE_OPERATION_SUMMARY.OPERATIVE_INDICATION is '手术指征'
/

comment on column PRE_OPERATION_SUMMARY.CONSULTATION_SUGGESTION is '会诊意见'
/

comment on column PRE_OPERATION_SUMMARY.MATTERS_NEED_ATTENTION is '注意事项'
/

comment on column PRE_OPERATION_SUMMARY.OPERATION_POINTS is '手术要点'
/

comment on column PRE_OPERATION_SUMMARY.OPERATIVE_SIGN is '手术者签名'
/

comment on column PRE_OPERATION_SUMMARY.DOCTOR_SIGN is '医师签名'
/

comment on column PRE_OPERATION_SUMMARY.SIGN_DATATIME is '签名日期时间'
/

comment on column PRE_OPERATION_SUMMARY.LAST_MODIFIC_TIME is '最后修改时间'
/

create index P_O_S_INPATIENT_SN_IDX
	on PRE_OPERATION_SUMMARY (INPATIENT_SN)
/

create table SALVAGE_RECROD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint SALVAGE_RECROD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    ILLNESS_CHANGE_SITUATION VARCHAR2(1000),
    RESCUE_MEASURES VARCHAR2(1000),
    SALVAGE_BEGIN_DATATIME DATE,
    SALVAGE_END_DATETIME DATE,
    INSPECTION_ITEM_NAME VARCHAR2(80),
    INSPECTION_QUANTIFY_RESULT NUMBER(14,4),
    INSPECTION_RESULT_CODE NUMBER(1),
    INSPECTION_QUANTIFY_UNIT VARCHAR2(20),
    INSPECTION_RESULT VARCHAR2(1000),
    MATTERS_NEED_ATTENTION VARCHAR2(1000),
    SALVAGE_NAMES VARCHAR2(200),
    PROFESSIONAL_CATAGORY_CODE NUMBER(1),
    DOCTOR_SIGN VARCHAR2(50),
    OPER_REQ_SN VARCHAR2(18),
    SIGN_DATATIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table SALVAGE_RECROD is 'cda子集主表-抢救记录子集主表(SALVAGE_RECROD)'
/

comment on column SALVAGE_RECROD.INPATIENT_SN is '住院流水号'
/

comment on column SALVAGE_RECROD.DOC_NO is '文档编号'
/

comment on column SALVAGE_RECROD.PATIENT_ID is '患者ID'
/

comment on column SALVAGE_RECROD.INP_NO is '住院号'
/

comment on column SALVAGE_RECROD.ILLNESS_CHANGE_SITUATION is '病情变化情况'
/

comment on column SALVAGE_RECROD.RESCUE_MEASURES is '抢救措施'
/

comment on column SALVAGE_RECROD.SALVAGE_BEGIN_DATATIME is '抢救开始日期时间'
/

comment on column SALVAGE_RECROD.SALVAGE_END_DATETIME is '抢救结束日期时间'
/

comment on column SALVAGE_RECROD.INSPECTION_ITEM_NAME is '检查/检验项目名称'
/

comment on column SALVAGE_RECROD.INSPECTION_QUANTIFY_RESULT is '检查/检验定量结果'
/

comment on column SALVAGE_RECROD.INSPECTION_RESULT_CODE is '检查/检验结果代码'
/

comment on column SALVAGE_RECROD.INSPECTION_QUANTIFY_UNIT is '检查/检验定量结果单位'
/

comment on column SALVAGE_RECROD.INSPECTION_RESULT is '检查/检验结果'
/

comment on column SALVAGE_RECROD.MATTERS_NEED_ATTENTION is '注意事项'
/

comment on column SALVAGE_RECROD.SALVAGE_NAMES is '参加抢救人员名单'
/

comment on column SALVAGE_RECROD.PROFESSIONAL_CATAGORY_CODE is '专业技术职务类别代码'
/

comment on column SALVAGE_RECROD.DOCTOR_SIGN is '医师签名'
/

comment on column SALVAGE_RECROD.OPER_REQ_SN is '手术申请单号'
/

comment on column SALVAGE_RECROD.SIGN_DATATIME is '签名日期时间'
/

comment on column SALVAGE_RECROD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index S_R_INPATIENT_SN_IDX
	on SALVAGE_RECROD (INPATIENT_SN)
/

create table SAMPLE_INFO
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    INSPECTION_INSPECTION_NO VARCHAR2(20) not null
        constraint SAMPLE_INFO_PK
        primary key,
    INSPECTION_REPORT_NO VARCHAR2(20),
    APPLY_NO VARCHAR2(20),
    INSPECTION_METHOD_NAME VARCHAR2(100),
    INSPECTION_TYPE VARCHAR2(100),
    SAMPLE_TYPE VARCHAR2(20),
    SAMPLE_STATE VARCHAR2(20),
    SPECIMEN_SAMPLE_DATE DATE,
    RECEIVE_SPECIMEN_DATE DATE,
    SPECIMEN_FIXATIVE_NAME VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table SAMPLE_INFO is 'cda子集公共表-标本表(SAMPLE_INFO)'
/

comment on column SAMPLE_INFO.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column SAMPLE_INFO.INPATIENT_SN is '住院流水号'
/

comment on column SAMPLE_INFO.INSPECTION_INSPECTION_NO is '检验标本号'
/

comment on column SAMPLE_INFO.INSPECTION_REPORT_NO is '检验报告单编号'
/

comment on column SAMPLE_INFO.APPLY_NO is '电子申请单编号'
/

comment on column SAMPLE_INFO.INSPECTION_METHOD_NAME is '检验方法名称'
/

comment on column SAMPLE_INFO.INSPECTION_TYPE is '检验类别'
/

comment on column SAMPLE_INFO.SAMPLE_TYPE is '标本类别'
/

comment on column SAMPLE_INFO.SAMPLE_STATE is '标本状态'
/

comment on column SAMPLE_INFO.SPECIMEN_SAMPLE_DATE is '标本采样日期时间'
/

comment on column SAMPLE_INFO.RECEIVE_SPECIMEN_DATE is '接收标本日期时间'
/

comment on column SAMPLE_INFO.SPECIMEN_FIXATIVE_NAME is '标本固定液名称'
/

create index SAMPLE_INFO_OUTPATIENT_SN_IDX
	on SAMPLE_INFO (OUTPATIENT_SN)
/

create index SAMPLE_INFO_INPATIENT_SN_IDX
	on SAMPLE_INFO (INPATIENT_SN)
/

create table SPECIAL_TREATMENT_CONSENT
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint SPECIAL_TREATMENT_CONSENT_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    INFORMED_CONSENT_NO VARCHAR2(20),
    SPEICAL_EXAMTREAT_ITEM VARCHAR2(100),
    SPECIAL_INSPEC_SPEC_TREAT VARCHAR2(100),
    SPEXAMINATIONS_SPTREAT_COMPL VARCHAR2(1000),
    REPLACE_SCHEME VARCHAR2(1000),
    PATIENT_AGENT_SIGN VARCHAR2(50),
    RELATION_CODE VARCHAR2(2),
    SIGN_DATETIME DATE,
    DOCTOR_SIGN VARCHAR2(50),
    DOCTOR_SIGN_DATETIME DATE,
    ORG_OPINION VARCHAR2(2000),
    PATIENT_AGENT_OPINION VARCHAR2(2000),
    LAST_MODIFIC_TIME DATE,
    constraint "SPECIAL_TREATMENT_check"
        check (REGEXP_LIKE(OUTPATIENT_SN, '/S') and (not REGEXP_LIKE(INPATIENT_SN, '/S'))
            or
               (REGEXP_LIKE(INPATIENT_SN, '/S') and not REGEXP_LIKE(OUTPATIENT_SN, '/S')))
)
    /

comment on table SPECIAL_TREATMENT_CONSENT is 'cda子集主表-特殊检查及特殊治疗同意书子集主表（SPECIAL_TREATMENT_CONSENT）'
/

comment on column SPECIAL_TREATMENT_CONSENT.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column SPECIAL_TREATMENT_CONSENT.INPATIENT_SN is '住院流水号'
/

comment on column SPECIAL_TREATMENT_CONSENT.DOC_NO is '文档编号'
/

comment on column SPECIAL_TREATMENT_CONSENT.PATIENT_ID is '患者ID'
/

comment on column SPECIAL_TREATMENT_CONSENT.OUTP_NO is '门（急）诊号'
/

comment on column SPECIAL_TREATMENT_CONSENT.INP_NO is '住院号'
/

comment on column SPECIAL_TREATMENT_CONSENT.INFORMED_CONSENT_NO is '知情同意书编号'
/

comment on column SPECIAL_TREATMENT_CONSENT.SPEICAL_EXAMTREAT_ITEM is '特殊检查及特殊治疗项目名称'
/

comment on column SPECIAL_TREATMENT_CONSENT.SPECIAL_INSPEC_SPEC_TREAT is '特殊检查及特殊治疗目的'
/

comment on column SPECIAL_TREATMENT_CONSENT.SPEXAMINATIONS_SPTREAT_COMPL is '特殊检查及特殊治疗可能引起的并发症及风险'
/

comment on column SPECIAL_TREATMENT_CONSENT.REPLACE_SCHEME is '替代方案'
/

comment on column SPECIAL_TREATMENT_CONSENT.PATIENT_AGENT_SIGN is '患者/法定代理人签名'
/

comment on column SPECIAL_TREATMENT_CONSENT.RELATION_CODE is '法定代理人与患者的关系代码'
/

comment on column SPECIAL_TREATMENT_CONSENT.SIGN_DATETIME is '患者/法定代理人签名日期时间'
/

comment on column SPECIAL_TREATMENT_CONSENT.DOCTOR_SIGN is '医师签名'
/

comment on column SPECIAL_TREATMENT_CONSENT.DOCTOR_SIGN_DATETIME is '医师签名日期时间'
/

comment on column SPECIAL_TREATMENT_CONSENT.ORG_OPINION is '医疗机构意见'
/

comment on column SPECIAL_TREATMENT_CONSENT.PATIENT_AGENT_OPINION is '患者/法定代理人意见'
/

create index S_T_C_OUTPATIENT_SN_IDX
	on SPECIAL_TREATMENT_CONSENT (OUTPATIENT_SN)
/

create index S_T_C_INPATIENT_SN_IDX
	on SPECIAL_TREATMENT_CONSENT (INPATIENT_SN)
/

create table SUPERIOR_DOCTOR_WARDROUND
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint SUPERIOR_DOCTOR_WARDROUND_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    WARDROUNDS_DATATIME DATE,
    WARDROUND_RECORD VARCHAR2(2000),
    ADVICE_CONTENT VARCHAR2(1000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    DIALECTICAL_DESC VARCHAR2(1000),
    CHIN_DECOC_DECWAY VARCHAR2(100),
    CHIN_DRINK_DECWAY VARCHAR2(100),
    ASSESSMENT_PLAN VARCHAR2(2000),
    RECORD_SIGN VARCHAR2(50),
    PHYSICIAN_DOCTOR_SIGN VARCHAR2(50),
    ARCHIATER_DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATATIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table SUPERIOR_DOCTOR_WARDROUND is 'cda子集主表-上级医师查房主表(SUPERIOR_DOCTOR_WARDROUND)'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.INPATIENT_SN is '住院流水号'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.DOC_NO is '文档编号'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.PATIENT_ID is '患者ID'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.INP_NO is '住院号'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.WARDROUNDS_DATATIME is '查房日期时间'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.WARDROUND_RECORD is '查房记录'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.ADVICE_CONTENT is '医嘱内容'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.DIALECTICAL_DESC is '辨证论治详细描述'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.CHIN_DECOC_DECWAY is '中药煎煮方法'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.CHIN_DRINK_DECWAY is '中药用药方法'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.ASSESSMENT_PLAN is '诊疗计划'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.RECORD_SIGN is '记录人签名'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.PHYSICIAN_DOCTOR_SIGN is '主治医师签名'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.ARCHIATER_DOCTOR_SIGN is '主任医师签名'
/

comment on column SUPERIOR_DOCTOR_WARDROUND.SIGN_DATATIME is '签名日期时间'
/

create index S_D_W_INPATIENT_SN_IDX
	on SUPERIOR_DOCTOR_WARDROUND (INPATIENT_SN)
/

create table TRANSFERENCE_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint TRANSFERENCE_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    CHIEF_COMPLAINT VARCHAR2(100),
    INP_SITUATION VARCHAR2(2000),
    TCM_FOUR_RESULTS VARCHAR2(1000),
    THERAPEUTIC_PRINCIPLE VARCHAR2(100),
    DIAG_DESC VARCHAR2(2000),
    CURRENTLY_SITUATION VARCHAR2(2000),
    TRANSFER_PURPOSE VARCHAR2(200),
    ASSESSMENT_PLAN VARCHAR2(2000),
    ADVICE_CONTENT VARCHAR2(1000),
    CHIN_DECOC_DECWAY VARCHAR2(100),
    CHIN_DRINK_DECWAY VARCHAR2(100),
    MATTERS_NEED_ATTENTION VARCHAR2(1000),
    TRANSFER_RCD_TYPE NUMBER(1),
    TRANSFER_DATATIME DATE,
    TURNOUT_DEPT_NAME VARCHAR2(50),
    TURNOUT_DOCTOR_SIGN VARCHAR2(50),
    OVERINTO_DATATIME DATE,
    OVERINTO_DEPT_NAME VARCHAR2(50),
    OVERINTO_DEPT_SIGN VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table TRANSFERENCE_RECORD is 'cda子集主表-转科记录子集主表(TRANSFERENCE_RECORD)'
/

comment on column TRANSFERENCE_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column TRANSFERENCE_RECORD.DOC_NO is '文档编号'
/

comment on column TRANSFERENCE_RECORD.PATIENT_ID is '患者ID'
/

comment on column TRANSFERENCE_RECORD.INP_NO is '住院号'
/

comment on column TRANSFERENCE_RECORD.CHIEF_COMPLAINT is '主诉'
/

comment on column TRANSFERENCE_RECORD.INP_SITUATION is '入院情况'
/

comment on column TRANSFERENCE_RECORD.TCM_FOUR_RESULTS is '中医“四诊”观察结果'
/

comment on column TRANSFERENCE_RECORD.THERAPEUTIC_PRINCIPLE is '治则治法'
/

comment on column TRANSFERENCE_RECORD.DIAG_DESC is '诊疗过程描述'
/

comment on column TRANSFERENCE_RECORD.CURRENTLY_SITUATION is '目前情况'
/

comment on column TRANSFERENCE_RECORD.TRANSFER_PURPOSE is '转科目的'
/

comment on column TRANSFERENCE_RECORD.ASSESSMENT_PLAN is '转入诊疗计划'
/

comment on column TRANSFERENCE_RECORD.ADVICE_CONTENT is '中药处方医嘱内容'
/

comment on column TRANSFERENCE_RECORD.CHIN_DECOC_DECWAY is '中药煎煮方法'
/

comment on column TRANSFERENCE_RECORD.CHIN_DRINK_DECWAY is '中药用药方法'
/

comment on column TRANSFERENCE_RECORD.MATTERS_NEED_ATTENTION is '注意事项'
/

comment on column TRANSFERENCE_RECORD.TRANSFER_RCD_TYPE is '转科记录类型'
/

comment on column TRANSFERENCE_RECORD.TRANSFER_DATATIME is '转出日期时间'
/

comment on column TRANSFERENCE_RECORD.TURNOUT_DEPT_NAME is '转出科室'
/

comment on column TRANSFERENCE_RECORD.TURNOUT_DOCTOR_SIGN is '转出医师签名'
/

comment on column TRANSFERENCE_RECORD.OVERINTO_DATATIME is '转入日期时间'
/

comment on column TRANSFERENCE_RECORD.OVERINTO_DEPT_NAME is '转入科室'
/

comment on column TRANSFERENCE_RECORD.OVERINTO_DEPT_SIGN is '转入医师签名'
/

create index T_R_INPATIENT_SN_IDX
	on TRANSFERENCE_RECORD (INPATIENT_SN)
/

create table TRANSFUSION_INFORMED_CONSENT
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint TRANSFUSION_INFORMED_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    INFORMED_CONSENT_NO VARCHAR2(20),
    BLOOD_TRANSFUSION_HISTORY VARCHAR2(1),
    BLOOD_TRANSFUSION_INDICATION VARCHAR2(500),
    BLOOD_TRANSFUSION_VARIETY_CODE VARCHAR2(2),
    CHECK_TRANSFUS_ITEM_RESULTS VARCHAR2(200),
    BLOOD_TRANSFUSION_WAY VARCHAR2(50),
    INTENT_TRANSFUSION_DATE DATE,
    ORG_OPINION VARCHAR2(2000),
    PATIENT_AGENT_OPINION VARCHAR2(2000),
    PATIENT_AGENT_SIGN VARCHAR2(50),
    RELATION_CODE VARCHAR2(2),
    SIGN_DATETIME DATE,
    DOCTOR_SIGN VARCHAR2(50),
    DOCTOR_SIGN_DATETIME DATE,
    TRANSFUSION_RISK VARCHAR2(1000),
    LAST_MODIFIC_TIME DATE,
    constraint "TRANSFUSION_INFORMED_check"
        check (REGEXP_LIKE(OUTPATIENT_SN, '/S') and (not REGEXP_LIKE(INPATIENT_SN, '/S'))
            or
               (REGEXP_LIKE(INPATIENT_SN, '/S') and not REGEXP_LIKE(OUTPATIENT_SN, '/S')))
)
    /

comment on table TRANSFUSION_INFORMED_CONSENT is 'cda子集主表-输血治疗同意书子集（TRANSFUSION_INFORMED_CONSENT）'
/

comment on column TRANSFUSION_INFORMED_CONSENT.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column TRANSFUSION_INFORMED_CONSENT.INPATIENT_SN is '住院流水号'
/

comment on column TRANSFUSION_INFORMED_CONSENT.DOC_NO is '文档编号'
/

comment on column TRANSFUSION_INFORMED_CONSENT.PATIENT_ID is '患者ID'
/

comment on column TRANSFUSION_INFORMED_CONSENT.OUTP_NO is '门（急）诊号'
/

comment on column TRANSFUSION_INFORMED_CONSENT.INP_NO is '住院号'
/

comment on column TRANSFUSION_INFORMED_CONSENT.INFORMED_CONSENT_NO is '知情同意书编号'
/

comment on column TRANSFUSION_INFORMED_CONSENT.BLOOD_TRANSFUSION_HISTORY is '输血史标识代码'
/

comment on column TRANSFUSION_INFORMED_CONSENT.BLOOD_TRANSFUSION_INDICATION is '输血指征'
/

comment on column TRANSFUSION_INFORMED_CONSENT.BLOOD_TRANSFUSION_VARIETY_CODE is '输血品种代码'
/

comment on column TRANSFUSION_INFORMED_CONSENT.CHECK_TRANSFUS_ITEM_RESULTS is '输血前有关检查项目及结果'
/

comment on column TRANSFUSION_INFORMED_CONSENT.BLOOD_TRANSFUSION_WAY is '输血方式'
/

comment on column TRANSFUSION_INFORMED_CONSENT.INTENT_TRANSFUSION_DATE is '拟定输血日期时间'
/

comment on column TRANSFUSION_INFORMED_CONSENT.ORG_OPINION is '医疗机构意见'
/

comment on column TRANSFUSION_INFORMED_CONSENT.PATIENT_AGENT_OPINION is '患者/法定代理人意见'
/

comment on column TRANSFUSION_INFORMED_CONSENT.PATIENT_AGENT_SIGN is '患者/法定代理人签名'
/

comment on column TRANSFUSION_INFORMED_CONSENT.RELATION_CODE is '法定代理人与患者的关系代码'
/

comment on column TRANSFUSION_INFORMED_CONSENT.SIGN_DATETIME is '患者/法定代理人签名日期时间'
/

comment on column TRANSFUSION_INFORMED_CONSENT.DOCTOR_SIGN is '医师签名'
/

comment on column TRANSFUSION_INFORMED_CONSENT.DOCTOR_SIGN_DATETIME is '医师签名日期时间'
/

comment on column TRANSFUSION_INFORMED_CONSENT.TRANSFUSION_RISK is '输血风险及可能发生的不良后果'
/

create index T_I_C_OUTPATIENT_SN_IDX
	on TRANSFUSION_INFORMED_CONSENT (OUTPATIENT_SN)
/

create index T_I_C_INPATIENT_SN_IDX
	on TRANSFUSION_INFORMED_CONSENT (INPATIENT_SN)
/

create table TRANSFUSION_RECORD
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint TRANSFUSION_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    ELECTRONIC_APPLY_NO VARCHAR2(20),
    BLOOD_TRANSFUSION_HISTORY VARCHAR2(1),
    TRANSFUSION_NATURE_CODE VARCHAR2(1),
    APPLICATION_ABO_BLOOD_TYPE VARCHAR2(1),
    APPLICATION_RH_BLOOD_TYPE VARCHAR2(1),
    BLOOD_TRANSFUSION_INDICATION VARCHAR2(500),
    BLOOD_TRANSFUSION_PROCESS VARCHAR2(2000),
    BLOOD_TRANSFUSION_VARIETY_CODE VARCHAR2(2),
    BLOOD_NO VARCHAR2(10),
    BLOOD_TRANSFERED_VALUE NUMBER(4),
    BLOOD_VOLUME_UNIT VARCHAR2(10),
    BLOODTRANSFERED_REACTION_CODE VARCHAR2(5),
    BLOOD_REACTION_TYPE_CODE VARCHAR2(1),
    TIME_BLOOD NUMBER(2),
    BLOOD_TRANSFERED_DATETIME DATE,
    BLOODTRANSFERED_REASON VARCHAR2(100),
    DOCTOR_NAME_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    LAST_MODIFIC_TIME DATE,
    constraint "TRANSFUSION_RECORD_check"
        check (REGEXP_LIKE(OUTPATIENT_SN, '/S') and (not REGEXP_LIKE(INPATIENT_SN, '/S'))
            or
               (REGEXP_LIKE(INPATIENT_SN, '/S') and not REGEXP_LIKE(OUTPATIENT_SN, '/S')))
)
    /

comment on table TRANSFUSION_RECORD is 'cda子集主表-输血记录子集主表(TRANSFUSION_RECORD)'
/

comment on column TRANSFUSION_RECORD.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column TRANSFUSION_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column TRANSFUSION_RECORD.DOC_NO is '文档编号'
/

comment on column TRANSFUSION_RECORD.PATIENT_ID is '患者ID'
/

comment on column TRANSFUSION_RECORD.OUTP_NO is '门（急）诊号'
/

comment on column TRANSFUSION_RECORD.INP_NO is '住院号'
/

comment on column TRANSFUSION_RECORD.ELECTRONIC_APPLY_NO is '电子申请单编号'
/

comment on column TRANSFUSION_RECORD.BLOOD_TRANSFUSION_HISTORY is '输血史标识代码'
/

comment on column TRANSFUSION_RECORD.TRANSFUSION_NATURE_CODE is '输血性质代码'
/

comment on column TRANSFUSION_RECORD.APPLICATION_ABO_BLOOD_TYPE is '申请ABO血型代码'
/

comment on column TRANSFUSION_RECORD.APPLICATION_RH_BLOOD_TYPE is '申请Rh血型代码'
/

comment on column TRANSFUSION_RECORD.BLOOD_TRANSFUSION_INDICATION is '输血指征'
/

comment on column TRANSFUSION_RECORD.BLOOD_TRANSFUSION_PROCESS is '输血过程记录'
/

comment on column TRANSFUSION_RECORD.BLOOD_TRANSFUSION_VARIETY_CODE is '输血品种代码'
/

comment on column TRANSFUSION_RECORD.BLOOD_NO is '血袋编码'
/

comment on column TRANSFUSION_RECORD.BLOOD_TRANSFERED_VALUE is '输血量（mL)'
/

comment on column TRANSFUSION_RECORD.BLOOD_VOLUME_UNIT is '输血量计量单位'
/

comment on column TRANSFUSION_RECORD.BLOODTRANSFERED_REACTION_CODE is '输血反应标志'
/

comment on column TRANSFUSION_RECORD.BLOOD_REACTION_TYPE_CODE is '输血反应类型代码'
/

comment on column TRANSFUSION_RECORD.TIME_BLOOD is '输血次数'
/

comment on column TRANSFUSION_RECORD.BLOOD_TRANSFERED_DATETIME is '输血日期时间'
/

comment on column TRANSFUSION_RECORD.BLOODTRANSFERED_REASON is '输血原因'
/

comment on column TRANSFUSION_RECORD.DOCTOR_NAME_SIGN is '医师签名'
/

comment on column TRANSFUSION_RECORD.SIGN_DATETIME is '签名日期时间'
/

create index T_R_INPATIENT_SN
	on TRANSFUSION_RECORD (INPATIENT_SN)
/

create index T_R_OUTPATIENT_SN
	on TRANSFUSION_RECORD (OUTPATIENT_SN)
/

create table VISITS_REC_AFT_ANESTHESIA
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint VISITS_REC_AFT_ANESTHESIA_PK
        primary key,
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    PATIENT_ID VARCHAR2(20),
    OPER_REQ_SN VARCHAR2(20),
    GENERALHEALTH_CHECK_RESULT VARCHAR2(1000),
    ANAESTHESIA_RECOVERY VARCHAR2(100),
    CONSCIOUS_DATETIME DATE,
    TRACHEAL_INTUB_CODE VARCHAR2(5),
    SPECIAL_STATUS VARCHAR2(1000),
    ANESTHESIA_INDICATION VARCHAR2(100),
    ANESTHESIA_DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table VISITS_REC_AFT_ANESTHESIA is 'cda子集主表-麻醉术后访视记录子集主表(VISITS_REC_AFT_ANESTHESIA)'
/

comment on column VISITS_REC_AFT_ANESTHESIA.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column VISITS_REC_AFT_ANESTHESIA.INPATIENT_SN is '住院流水号'
/

comment on column VISITS_REC_AFT_ANESTHESIA.DOC_NO is '文档编号'
/

comment on column VISITS_REC_AFT_ANESTHESIA.OUTP_NO is '门（急）诊号'
/

comment on column VISITS_REC_AFT_ANESTHESIA.INP_NO is '住院号'
/

comment on column VISITS_REC_AFT_ANESTHESIA.PATIENT_ID is '患者ID'
/

comment on column VISITS_REC_AFT_ANESTHESIA.OPER_REQ_SN is '电子申请单编号（手术申请单编号）'
/

comment on column VISITS_REC_AFT_ANESTHESIA.GENERALHEALTH_CHECK_RESULT is '一般状况检查结果'
/

comment on column VISITS_REC_AFT_ANESTHESIA.ANAESTHESIA_RECOVERY is '麻醉恢复情况'
/

comment on column VISITS_REC_AFT_ANESTHESIA.CONSCIOUS_DATETIME is '淸醒日期时间'
/

comment on column VISITS_REC_AFT_ANESTHESIA.TRACHEAL_INTUB_CODE is '拔除气管插管标志'
/

comment on column VISITS_REC_AFT_ANESTHESIA.SPECIAL_STATUS is '特殊情况'
/

comment on column VISITS_REC_AFT_ANESTHESIA.ANESTHESIA_INDICATION is '麻醉适应证'
/

comment on column VISITS_REC_AFT_ANESTHESIA.ANESTHESIA_DOCTOR_SIGN is '麻醉医师签名'
/

comment on column VISITS_REC_AFT_ANESTHESIA.SIGN_DATETIME is '签名日期时间'
/

comment on column VISITS_REC_AFT_ANESTHESIA.LAST_MODIFIC_TIME is '最后修改时间'
/

create index V_R_A_A_OUTPATIENT_SN_IDX
	on VISITS_REC_AFT_ANESTHESIA (OUTPATIENT_SN)
/

create index V_R_A_A_INPATIENT_SN_IDX
	on VISITS_REC_AFT_ANESTHESIA (INPATIENT_SN)
/

create table INPATIENT_OPERATION
(
    INP_OPERATION_ID VARCHAR2(50) not null
        constraint INPATIENT_OPERATION_PK
        primary key,
    INHOS_COUNT NUMBER(2) not null,
    INP_NO VARCHAR2(18) not null,
    FOPTIMES NUMBER(2),
    OPERATION_CODE VARCHAR2(20),
    OPERATION_START_DATETIME DATE,
    OPERATION_LEVEL_CODE VARCHAR2(1),
    OPERATION_NAME VARCHAR2(80),
    OPERATION_DOCTOR_NAME VARCHAR2(50),
    FIRST_ASSISTANT_NAME VARCHAR2(50),
    SECONDE_ASSISTANT_NAME VARCHAR2(50),
    OPERATION_TYPE_CODE VARCHAR2(1),
    OPERAT_INCIS_HEAL_TYPE_CODE VARCHAR2(1),
    ANESTHESIA_METHOD_CODE VARCHAR2(2),
    ANESTHESIA_DOCTOR_SIGNATURE VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table INPATIENT_OPERATION is 'cda子集子表-住院病案首页手术子表(INPATIENT_OPERATION)'
/

comment on column INPATIENT_OPERATION.INP_OPERATION_ID is '手术子表ID'
/

comment on column INPATIENT_OPERATION.INHOS_COUNT is '住院次数'
/

comment on column INPATIENT_OPERATION.INP_NO is '住院号'
/

comment on column INPATIENT_OPERATION.FOPTIMES is '手术次数'
/

comment on column INPATIENT_OPERATION.OPERATION_CODE is '手术及操作编码'
/

comment on column INPATIENT_OPERATION.OPERATION_START_DATETIME is '手术及操作日期'
/

comment on column INPATIENT_OPERATION.OPERATION_LEVEL_CODE is '手术级别代码'
/

comment on column INPATIENT_OPERATION.OPERATION_NAME is '手术及操作名称'
/

comment on column INPATIENT_OPERATION.OPERATION_DOCTOR_NAME is '手术者姓名'
/

comment on column INPATIENT_OPERATION.FIRST_ASSISTANT_NAME is 'I助姓名'
/

comment on column INPATIENT_OPERATION.SECONDE_ASSISTANT_NAME is 'II助姓名'
/

comment on column INPATIENT_OPERATION.OPERATION_TYPE_CODE is '手术切口类别代码'
/

comment on column INPATIENT_OPERATION.OPERAT_INCIS_HEAL_TYPE_CODE is '手术切口愈合等级代码'
/

comment on column INPATIENT_OPERATION.ANESTHESIA_METHOD_CODE is '麻醉方式代码'
/

comment on column INPATIENT_OPERATION.ANESTHESIA_DOCTOR_SIGNATURE is '麻醉医师姓名'
/

comment on column INPATIENT_OPERATION.LAST_MODIFIC_TIME is '最后修改时间'
/

create index I_O_INHOS_COUNT_IDX
	on INPATIENT_OPERATION (INHOS_COUNT, INP_NO)
/

create table CN_INPATIENT_MEDICAL_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint CN_INPATIENT_MEDICAL_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    ORG_NAME VARCHAR2(70),
    ORG_ID VARCHAR2(10),
    PAY_WAY VARCHAR2(2),
    HEALTH_CARD_NO VARCHAR2(18),
    INHOS_COUNT NUMBER(2),
    INP_NO VARCHAR2(18),
    MR_NO VARCHAR2(18),
    PATIENT_NAME VARCHAR2(50),
    SEX_CODE VARCHAR2(1),
    BIRTHDAY DATE,
    AGE_YEAR NUMBER(3),
    PATIENT_MONTH NUMBER(2),
    NATIONNALITY_CODE VARCHAR2(3),
    NEWBORN_BIRTH_WEIGHT NUMBER(4),
    NEWBORN_INP_WEIGHT NUMBER(4),
    BIRTHPLACE_PROVINCE VARCHAR2(70),
    BIRTHPLACE_CITY VARCHAR2(70),
    BIRTHPLACE_COUNTY VARCHAR2(70),
    NATIVEPLACE_PROVINCE VARCHAR2(70),
    NATIVEPLACE_CITY VARCHAR2(70),
    NATION VARCHAR2(2),
    IDENTITY_TYPE VARCHAR2(2),
    IDENTITY_NO VARCHAR2(18),
    OCCUPATIENTION_CLASS_CODE VARCHAR2(2),
    MARITAL_STATUS_CODE VARCHAR2(2),
    CURRENT_PROVINCE VARCHAR2(70),
    CURRENT_CITY VARCHAR2(70),
    CURRENT_COUNTY VARCHAR2(70),
    CURRENT_TOWNSHIP VARCHAR2(70),
    CURRENT_VILLAGE VARCHAR2(70),
    CURRENT_DOORS VARCHAR2(70),
    CURRENT_PHONE VARCHAR2(20),
    CURRENT_ZIP_CODE VARCHAR2(6),
    ACCOUNT_PROVINCE VARCHAR2(70),
    ACCOUNT_CITY VARCHAR2(70),
    ACCOUNT_COUNTY VARCHAR2(70),
    ACCOUNT_TOWNSHIP VARCHAR2(70),
    ACCOUNT_VILLAGE VARCHAR2(70),
    ACCOUNT_DOORS VARCHAR2(70),
    ACCOUNT_ZIP_CODE VARCHAR2(6),
    WORKUNIT_NAME VARCHAR2(70),
    WORKUNIT_PROVINCE VARCHAR2(70),
    WORKUNIT_CITY VARCHAR2(70),
    WORKUNIT_COUNTY VARCHAR2(70),
    WORKUNIT_TOWNSHIP VARCHAR2(70),
    WORKUNIT_VILLAGE VARCHAR2(70),
    WORKUNIT_DOORS VARCHAR2(70),
    WORKUNIT_PHONE VARCHAR2(20),
    WORKUNIT_ZIP_CODE VARCHAR2(6),
    CONTACT_NAME VARCHAR2(50),
    RELATION VARCHAR2(1),
    CONTACT_PROVINCE VARCHAR2(70),
    CONTACT_CITY VARCHAR2(70),
    CACOUNTY VARCHAR2(70),
    CONTACT_TOWNSHIP VARCHAR2(70),
    CONTACT_VILLAGE VARCHAR2(70),
    CAHOUSE_NUMBER VARCHAR2(70),
    CONTACT_PHONE VARCHAR2(20),
    INP_APPROACH VARCHAR2(1),
    TREAT_TYPE_CODE VARCHAR2(3),
    INP_DATE DATE,
    INP_DEPT_NAME VARCHAR2(50),
    INP_ROOM VARCHAR2(10),
    TRANSITION_DEP VARCHAR2(50),
    DISHOSPITAL_DATE DATE,
    DISHOSPITAL_DEPT_NAME VARCHAR2(50),
    DISHOSPITAL_ROOM VARCHAR2(10),
    INP_DAYS NUMBER(4),
    CLINICAL_PATH_CODE NUMBER(1),
    USE_TCMPREPARATION_FLAG VARCHAR2(5),
    USE_TCMEQUIPMENT_FLAG VARCHAR2(5),
    USE_TCMTECHNOLOGY_FLAG VARCHAR2(5),
    DIALECTIC_FLAG VARCHAR2(5),
    PATHOLOGY_NO VARCHAR2(18),
    DRUG_ALLERGY_FLAG VARCHAR2(5),
    ALLERGY_DRUG VARCHAR2(1000),
    INHOS_AUTOPSY_FLAG VARCHAR2(5),
    ABO_BLOOD VARCHAR2(1),
    RH_BLOOD_CODE VARCHAR2(1),
    DEPT_DIRECTOR_SIGN VARCHAR2(50),
    DIRECTOR_SIGN VARCHAR2(50),
    PHYSICIAN_DOCTOR_SIGN VARCHAR2(50),
    INP_DOCTOR_SIGN VARCHAR2(50),
    DUTY_NURSE_SIGN VARCHAR2(50),
    REFRESHER_DOCTOR_SIGN VARCHAR2(50),
    INTERNSHIP_DOCTOR_SIGN VARCHAR2(50),
    CODER_SIGN VARCHAR2(50),
    MR_QUALITY_CODE NUMBER(1),
    QUALITYCONTROL_DOCTOR_SIGN VARCHAR2(50),
    QC_NURSE_SIGNATURE VARCHAR2(50),
    QUALITYCONTROL_DATE DATE,
    DISHOSPITAL_WAY_CODE VARCHAR2(1),
    RECEIVE_ORG_NAME VARCHAR2(70),
    OUTHOS_FLAG VARCHAR2(5),
    OUTHOS_PURPOSE VARCHAR2(100),
    HEADINJURY_INPBEFORECOMA_DAY NUMBER(5),
    HEADINJURY_INPBEFORECOMA_HOUR NUMBER(2),
    HEADINJURY_INPBEFOR_MIN NUMBER(2),
    HEADINJURY_INPAFTERCOMA_DAY NUMBER(5),
    HEADINJURY_INPAFTERCOMA_HOUR NUMBER(2),
    HEADINJURY_INPAFTERCOMA_MINUTE NUMBER(2),
    INP_TOTALCOST NUMBER(10,2),
    INP_TOTALCOST_OWNPAY NUMBER(10,2),
    MEDICAL_COMMONLYSERVICE_COST NUMBER(10,2),
    MEDICAL_TCDDIALECTIC_COST NUMBER(10,2),
    MEDICAL_TCD_DISCOST NUMBER(10,2),
    MEDICAL_COMMONLYOPERATION_COST NUMBER(10,2),
    MEDICAL_NURSING_COST NUMBER(10,2),
    MEDICAL_OTHER_COST NUMBER(10,2),
    DIAG_PATHOLOGY_COST NUMBER(10,2),
    DIAG_LABORATORY_COST NUMBER(10,2),
    IMAGING_DIAGNOSIS_EXPENSE NUMBER(10,2),
    DIAG_CLINICAL_COST NUMBER(10,2),
    TREAT_NOOPERATION_ITEMCOST NUMBER(10,2),
    TREAT_NOOPERATION_PHYSICSCOST NUMBER(10,2),
    TREAT_OPERATIONTREAT_COST NUMBER(10,2),
    TREAT_OPER_ANAESTHESIACOST NUMBER(10,2),
    TREAT_OPERATIONTREAT_OPERCOST NUMBER(10,2),
    RECOVERY_COST NUMBER(10,2),
    TCM_DIAG_COST NUMBER(10,2),
    TCM_TREAT_COST NUMBER(10,2),
    TCM_TREAT_EXTERNALCOST NUMBER(10,2),
    TCM_TREAT_BONEFRACTURECOST NUMBER(10,2),
    TCM_TREAT_ACUPUNCTURECOST NUMBER(10,2),
    TCM_TREAT_MASSAGECOST NUMBER(10,2),
    TCM_TREAT_ANORECTALCOST NUMBER(10,2),
    TCM_TREAT_SPECIALCOST NUMBER(10,2),
    TCM_TREAT_OTHERCOST NUMBER(10,2),
    TCM_TREAT_DISPATCHCOST NUMBER(10,2),
    TCM_TREAT_CATEREDCOST NUMBER(10,2),
    DRUG_COST NUMBER(10,2),
    DRUG_ANTIBIOTICS_COST NUMBER(10,2),
    PROPRIETARY_CM_EXPENSE NUMBER(10,2),
    TCD_CPM_PREPARATIONCOST NUMBER(10,2),
    TCD_CHM_COST NUMBER(10,2),
    BLOOD_COST NUMBER(10,2),
    BLOOD_ALBURMIN_COST NUMBER(10,2),
    BLOOD_GLOBULIN_COST NUMBER(10,2),
    BLOOD_COGULATIONFACTOR_COST NUMBER(10,2),
    BLOOD_CELLFACTOR_COST NUMBER(10,2),
    CHECK_DMM_EXPENSE NUMBER(10,2),
    EXP_TREAT_COST NUMBER(10,2),
    EXP_OPERTION_COST NUMBER(10,2),
    OTHER_COST NUMBER(10,2),
    DISEASE_STATUS_CODE VARCHAR2(2),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table CN_INPATIENT_MEDICAL_RECORD is 'cda子集主表-中医住院病案首页子集主表(CN_INPATIENT_MEDICAL_RECORD)'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DOC_NO is '文档编号'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.PATIENT_ID is '患者ID'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ORG_NAME is '医疗机构名称'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ORG_ID is '医疗机构组织机构代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.PAY_WAY is '医疗付费方式代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.HEALTH_CARD_NO is '居民健康卡号'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INHOS_COUNT is '住院次数'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INP_NO is '住院号'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.MR_NO is '病案号'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.PATIENT_NAME is '姓名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.SEX_CODE is '性别代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.BIRTHDAY is '出生日期'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.AGE_YEAR is '年龄（岁）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.PATIENT_MONTH is '年龄（月）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.NATIONNALITY_CODE is '国籍代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.NEWBORN_BIRTH_WEIGHT is '新生儿出生体重（g)'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.NEWBORN_INP_WEIGHT is '新生儿入院体重（g)'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.BIRTHPLACE_PROVINCE is '出生地-省（自治区、直辖市）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.BIRTHPLACE_CITY is '出生地-市（地区、州）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.BIRTHPLACE_COUNTY is '出生地-县（区）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.NATIVEPLACE_PROVINCE is '籍贯-省（自治区、直辖市）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.NATIVEPLACE_CITY is '籍贯-市（地区、州）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.NATION is '民族'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.IDENTITY_TYPE is '身份证件类别代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.IDENTITY_NO is '患者身份证件号码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.OCCUPATIENTION_CLASS_CODE is '职业类别代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.MARITAL_STATUS_CODE is '婚姻状况代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CURRENT_PROVINCE is '现住址-省（自治区、直辖市）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CURRENT_CITY is '现住址-市（地区、州）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CURRENT_COUNTY is '现住址-县（区）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CURRENT_TOWNSHIP is '现住址-乡（镇、街道办事处）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CURRENT_VILLAGE is '现住址-村（街、路、弄等）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CURRENT_DOORS is '现住址-门牌号码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CURRENT_PHONE is '电话号码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CURRENT_ZIP_CODE is '现住址-邮政编码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ACCOUNT_PROVINCE is '户口地址-省（自治区、直辖市）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ACCOUNT_CITY is '户口地址-市（地区、州）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ACCOUNT_COUNTY is '户口地址-县（区）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ACCOUNT_TOWNSHIP is '户口地址-乡（镇、街道办事处）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ACCOUNT_VILLAGE is '户口地址-村（街、路、弄等）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ACCOUNT_DOORS is '户口地址-门捭号码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ACCOUNT_ZIP_CODE is '户口地址-邮政编码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.WORKUNIT_NAME is '工作单位名称'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.WORKUNIT_PROVINCE is '工作单位地址-省（自治区、直辖市）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.WORKUNIT_CITY is '工作单位地址-市（地区、州）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.WORKUNIT_COUNTY is '工作单位地址-县（区）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.WORKUNIT_TOWNSHIP is '工作单位地址-乡（镇、街道办事处）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.WORKUNIT_VILLAGE is '工作单位地址-村（街、路、弄等）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.WORKUNIT_DOORS is '工作单位地址-门牌号码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.WORKUNIT_PHONE is '工作单位电话号码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.WORKUNIT_ZIP_CODE is '工作单位地址-邮政编码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CONTACT_NAME is '联系人姓名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.RELATION is '联系人与患者的关系代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CONTACT_PROVINCE is '联系人地址-省（自治区、直辖市）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CONTACT_CITY is '联系人地址-市（地区、州）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CACOUNTY is '联系人地址-县（区）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CONTACT_TOWNSHIP is '联系人地址-乡（镇、街道办事处）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CONTACT_VILLAGE is '联系人地址-村（街、路、弄等）'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CAHOUSE_NUMBER is '联系人地址-门牌号码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CONTACT_PHONE is '联系人电话号码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INP_APPROACH is '入院途径代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TREAT_TYPE_CODE is '治疗类别代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INP_DATE is '入院日期时间'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INP_DEPT_NAME is '入院科别'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INP_ROOM is '入院病房'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TRANSITION_DEP is '转科科别'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DISHOSPITAL_DATE is '出院日期时间'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DISHOSPITAL_DEPT_NAME is '出院科别'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DISHOSPITAL_ROOM is '出院病房'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INP_DAYS is '实际住院天数'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CLINICAL_PATH_CODE is '实施临床路径标志代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.USE_TCMPREPARATION_FLAG is '使用医疗机构中药制剂标志'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.USE_TCMEQUIPMENT_FLAG is '使用中医诊疗设备标志'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.USE_TCMTECHNOLOGY_FLAG is '使用中医诊疗技术标志'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DIALECTIC_FLAG is '辨证施护标志'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.PATHOLOGY_NO is '病理号'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DRUG_ALLERGY_FLAG is '药物过敏标志'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ALLERGY_DRUG is '过敏药物'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INHOS_AUTOPSY_FLAG is '死亡患者尸检标志'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.ABO_BLOOD is 'ABO血型代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.RH_BLOOD_CODE is 'Rh血型代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DEPT_DIRECTOR_SIGN is '科主任签名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DIRECTOR_SIGN is '主任（副主任）医师签名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.PHYSICIAN_DOCTOR_SIGN is '主治医师签名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INP_DOCTOR_SIGN is '住院医师签名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DUTY_NURSE_SIGN is '责任护士签名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.REFRESHER_DOCTOR_SIGN is '进修医师签名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INTERNSHIP_DOCTOR_SIGN is '实习医师签名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CODER_SIGN is '编码员签名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.MR_QUALITY_CODE is '病案质量代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.QUALITYCONTROL_DOCTOR_SIGN is '质控医师签名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.QC_NURSE_SIGNATURE is '质控护士签名'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.QUALITYCONTROL_DATE is '质控日期'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DISHOSPITAL_WAY_CODE is '离院方式代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.RECEIVE_ORG_NAME is '拟接收医疗机构名称'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.OUTHOS_FLAG is '出院31天内再住院标志'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.OUTHOS_PURPOSE is '出院31天内再住院目的'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.HEADINJURY_INPBEFORECOMA_DAY is '颅脑损伤患者入院前昏迷时间-d'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.HEADINJURY_INPBEFORECOMA_HOUR is '颅脑损伤患者入院前昏迷时间-h'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.HEADINJURY_INPBEFOR_MIN is '颅脑损伤患者入院前昏迷时间-min'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.HEADINJURY_INPAFTERCOMA_DAY is '颅脑损伤患者入院后昏迷时间-d'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.HEADINJURY_INPAFTERCOMA_HOUR is '颅脑损伤患者入院后昏迷时间-h'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.HEADINJURY_INPAFTERCOMA_MINUTE is '颅脑损伤患者入院后昏迷时间-min'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INP_TOTALCOST is '住院总费用'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.INP_TOTALCOST_OWNPAY is '住院总费用-自付金额'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.MEDICAL_COMMONLYSERVICE_COST is '综合医疗服务类-一般医疗服务费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.MEDICAL_TCDDIALECTIC_COST is '综合医疗服务类般医疗服务费-中医辨证论治费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.MEDICAL_TCD_DISCOST is '综合医疗服务类-一般医疗服务费-中医辨证论治会诊费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.MEDICAL_COMMONLYOPERATION_COST is '综合医疗服务类-一般治疗操作费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.MEDICAL_NURSING_COST is '综合医疗服务类-护理费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.MEDICAL_OTHER_COST is '综合医疗服务类-其他费用'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DIAG_PATHOLOGY_COST is '诊断类-病理诊断费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DIAG_LABORATORY_COST is '诊断类-实验室诊断费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.IMAGING_DIAGNOSIS_EXPENSE is '诊断类-影像学诊断费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DIAG_CLINICAL_COST is '诊断类-临床诊断项目费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TREAT_NOOPERATION_ITEMCOST is '治疗类-非手术治疗项目费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TREAT_NOOPERATION_PHYSICSCOST is '治疗类-非手术治疗项目费-临床物理治疗费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TREAT_OPERATIONTREAT_COST is '治疗类-手术治疗费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TREAT_OPER_ANAESTHESIACOST is '治疗类-手术治疗费-麻醉费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TREAT_OPERATIONTREAT_OPERCOST is '治疗类-手术治疗费-手术费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.RECOVERY_COST is '康复类-康复费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_DIAG_COST is '中医类-中医诊断费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_TREAT_COST is '中医类-中医治疗费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_TREAT_EXTERNALCOST is '中医类-中医治疗费-中医外治费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_TREAT_BONEFRACTURECOST is '中医类-中医治疗费-中医骨伤费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_TREAT_ACUPUNCTURECOST is '中医类-中医治疗费-针刺与灸法费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_TREAT_MASSAGECOST is '中医类-中医治疗费-中医推拿治疗费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_TREAT_ANORECTALCOST is '中医类-中医治疗费-中医肛肠治疗费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_TREAT_SPECIALCOST is '中医类-中医治疗费-中医特殊治疗费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_TREAT_OTHERCOST is '中医类-中医其他费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_TREAT_DISPATCHCOST is '中医类-中医其他费-中医特殊调配加工费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCM_TREAT_CATEREDCOST is '中医类-中医其他费-辨证施膳费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DRUG_COST is '西药类-西药费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DRUG_ANTIBIOTICS_COST is '西药类-西药费-抗菌药物费用'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.PROPRIETARY_CM_EXPENSE is '中药类-中成药费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCD_CPM_PREPARATIONCOST is '中药类-中成药费-医疗机构中药制剂费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.TCD_CHM_COST is '中药类-中草药费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.BLOOD_COST is '血液和血液制品类-血费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.BLOOD_ALBURMIN_COST is '血液和血液制品类-白蛋白类制品费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.BLOOD_GLOBULIN_COST is '血液和血液制品类-球蛋白类制品费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.BLOOD_COGULATIONFACTOR_COST is '血液和血液制品类-凝血因子类制品费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.BLOOD_CELLFACTOR_COST is '血液和血液制品类-细胞因子类制品费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.CHECK_DMM_EXPENSE is '耗材类-检查用一次性医用材料费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.EXP_TREAT_COST is '耗材类-治疗用一次性医用材料费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.EXP_OPERTION_COST is '耗材类-手术用一次性医用材料费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.OTHER_COST is '其他类-其他费'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.DISEASE_STATUS_CODE is '住院者疾病状态代码'
/

comment on column CN_INPATIENT_MEDICAL_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index C_I_M_R_INPATIENT_SN_IDX
	on CN_INPATIENT_MEDICAL_RECORD (INPATIENT_SN)
/

create table CN_INPATIENT_DIAGNOSIS
(
    DIAG_ID VARCHAR2(18) not null
        constraint CN_INPATIENT_DIAGNOSIS_PK
        primary key,
    INHOS_COUNT NUMBER(2) not null,
    INP_NO VARCHAR2(18) not null,
    DIAG_TYPE VARCHAR2(2),
    DIAG_DIAGNOSIS VARCHAR2(100),
    DIAG_CLASSIFICATIONS VARCHAR2(100),
    DIAG_NO VARCHAR2(10),
    DIAG_NAME VARCHAR2(50),
    DIAG_CODE VARCHAR2(50),
    DIAG_DATATIME DATE,
    OUTHOS_INHOS_CODE VARCHAR2(1),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table CN_INPATIENT_DIAGNOSIS is 'cda子集子表-中医住院病案首页诊断子表(CN_INPATIENT_DIAGNOSIS）'
/

comment on column CN_INPATIENT_DIAGNOSIS.DIAG_ID is '主键'
/

comment on column CN_INPATIENT_DIAGNOSIS.INHOS_COUNT is '住院次数'
/

comment on column CN_INPATIENT_DIAGNOSIS.INP_NO is '住院号'
/

comment on column CN_INPATIENT_DIAGNOSIS.DIAG_TYPE is '诊断类型(1-门诊诊断、2-初步诊断 3-入院诊断 4-修正诊断 5-出院诊断,6-死亡诊断 7-术前诊断 8-术中诊断 9-术后诊断, 10-确定诊断 11-补充诊断 12-目前诊断 13-直接死亡原因 14-病理诊断 15-损伤中毒)'
/

comment on column CN_INPATIENT_DIAGNOSIS.DIAG_DIAGNOSIS is '主诊断标识(1-主诊断、2-其他诊断、3-附属诊断)'
/

comment on column CN_INPATIENT_DIAGNOSIS.DIAG_CLASSIFICATIONS is '诊断类别(1-西医诊断，2-中医诊断，3-中医症候)'
/

comment on column CN_INPATIENT_DIAGNOSIS.DIAG_NO is '诊断顺位'
/

comment on column CN_INPATIENT_DIAGNOSIS.DIAG_NAME is '诊断名称'
/

comment on column CN_INPATIENT_DIAGNOSIS.DIAG_CODE is '诊断编码'
/

comment on column CN_INPATIENT_DIAGNOSIS.DIAG_DATATIME is '诊断时间'
/

comment on column CN_INPATIENT_DIAGNOSIS.OUTHOS_INHOS_CODE is '入院病情代码'
/

comment on column CN_INPATIENT_DIAGNOSIS.LAST_MODIFIC_TIME is '最后修改时间'
/

create index C_I_D_INHOS_COUNT_IDX
	on CN_INPATIENT_DIAGNOSIS (INHOS_COUNT, INP_NO)
/

create table CN_INPATIENT_OPERATION
(
    CN_INP_OPERATION_ID VARCHAR2(50) not null
        constraint CN_INPATIENT_OPERATION_PK
        primary key,
    INHOS_COUNT NUMBER(2) not null,
    INP_NO VARCHAR2(18) not null,
    FOPTIMES NUMBER(2),
    OPERATION_CODE VARCHAR2(20),
    OPERATION_START_DATETIME DATE,
    OPERATION_LEVEL_CODE VARCHAR2(1),
    OPERATION_NAME VARCHAR2(80),
    OPERATION_DOCTOR_NAME VARCHAR2(50),
    FIRST_ASSISTANT_NAME VARCHAR2(50),
    SECONDE_ASSISTANT_NAME VARCHAR2(50),
    OPERATION_TYPE_CODE VARCHAR2(1),
    OPERAT_INCIS_HEAL_TYPE_CODE VARCHAR2(1),
    ANESTHESIA_METHOD_CODE VARCHAR2(2),
    ANESTHESIA_DOCTOR_SIGNATURE VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table CN_INPATIENT_OPERATION is 'cda子集子表-中医住院病案首页子集手术信息从表(CN_INPATIENT_OPERATION)'
/

comment on column CN_INPATIENT_OPERATION.CN_INP_OPERATION_ID is '手术子表ID'
/

comment on column CN_INPATIENT_OPERATION.INHOS_COUNT is '住院次数'
/

comment on column CN_INPATIENT_OPERATION.INP_NO is '住院号'
/

comment on column CN_INPATIENT_OPERATION.FOPTIMES is '手术次数'
/

comment on column CN_INPATIENT_OPERATION.OPERATION_CODE is '手术及操作编码'
/

comment on column CN_INPATIENT_OPERATION.OPERATION_START_DATETIME is '手术及操作日期'
/

comment on column CN_INPATIENT_OPERATION.OPERATION_LEVEL_CODE is '手术级别代码'
/

comment on column CN_INPATIENT_OPERATION.OPERATION_NAME is '手术及操作名称'
/

comment on column CN_INPATIENT_OPERATION.OPERATION_DOCTOR_NAME is '手术者姓名'
/

comment on column CN_INPATIENT_OPERATION.FIRST_ASSISTANT_NAME is 'I助姓名'
/

comment on column CN_INPATIENT_OPERATION.SECONDE_ASSISTANT_NAME is 'II助姓名'
/

comment on column CN_INPATIENT_OPERATION.OPERATION_TYPE_CODE is '乎术切口类别代码'
/

comment on column CN_INPATIENT_OPERATION.OPERAT_INCIS_HEAL_TYPE_CODE is '手术切口愈合等级代码'
/

comment on column CN_INPATIENT_OPERATION.ANESTHESIA_METHOD_CODE is '麻醉方式代码'
/

comment on column CN_INPATIENT_OPERATION.ANESTHESIA_DOCTOR_SIGNATURE is '麻醉医师姓名'
/

comment on column CN_INPATIENT_OPERATION.LAST_MODIFIC_TIME is '最后修改时间'
/

create index C_I_O_INHOS_COUNT_IDX
	on CN_INPATIENT_OPERATION (INHOS_COUNT, INP_NO)
/

create table CARE_PLAN
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint CARE_PLAN_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    NURSING_GRADE_CODE NUMBER(1),
    NURSING_TYPE_CODE NUMBER(1),
    NURSING_PROBLEMS VARCHAR2(1000),
    ENDOTRACHEAL_CARE_DESC VARCHAR2(1000),
    BODY_POSITION_CARE VARCHAR2(30),
    SKIN_CARE VARCHAR2(50),
    ENDOTRACHEAL_CARE_CODE NUMBER(1),
    SAFETY_NURSING_CODE NUMBER(1),
    DIET_GUIDE_CODE VARCHAR2(2),
    NURSING_SIGN VARCHAR2(50),
    GENERAL_NURSING_ID VARCHAR2(18),
    SIGN_DATETIME DATE,
    LAST_MODIFIC_TIME DATE,
    DOCTOR_SIGN VARCHAR2(50)
)
    /

comment on table CARE_PLAN is 'cda子集主表-护理计划记录表（CARE_PLAN）'
/

comment on column CARE_PLAN.INPATIENT_SN is '住院流水号'
/

comment on column CARE_PLAN.DOC_NO is '文档编号'
/

comment on column CARE_PLAN.PATIENT_ID is '患者ID'
/

comment on column CARE_PLAN.INP_NO is '住院号'
/

comment on column CARE_PLAN.NURSING_GRADE_CODE is '护理等级代码'
/

comment on column CARE_PLAN.NURSING_TYPE_CODE is '护理类型代码'
/

comment on column CARE_PLAN.NURSING_PROBLEMS is '护理问题'
/

comment on column CARE_PLAN.ENDOTRACHEAL_CARE_DESC is '导管护理描述'
/

comment on column CARE_PLAN.BODY_POSITION_CARE is '体位护理'
/

comment on column CARE_PLAN.SKIN_CARE is '皮肤护理'
/

comment on column CARE_PLAN.ENDOTRACHEAL_CARE_CODE is '气管护理代码'
/

comment on column CARE_PLAN.SAFETY_NURSING_CODE is '安全护理代码'
/

comment on column CARE_PLAN.DIET_GUIDE_CODE is '饮食指导代码'
/

comment on column CARE_PLAN.NURSING_SIGN is '护士签名'
/

comment on column CARE_PLAN.GENERAL_NURSING_ID is '护理记录唯一标识'
/

comment on column CARE_PLAN.SIGN_DATETIME is '签名日期时间'
/

comment on column CARE_PLAN.LAST_MODIFIC_TIME is '最后修改时间'
/

comment on column CARE_PLAN.DOCTOR_SIGN is '访视医生签名'
/

create index CARE_PLAN_INPATIENT_SN_IDX
	on CARE_PLAN (INPATIENT_SN)
/

create table ADMISSION_ASSESSMENT
(
    INPATIENT_SN VARCHAR2(18) not null,
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint ADMISSION_ASSESSMENT_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INTO_ROOM_WAY VARCHAR2(20),
    SYMPTOMPTOM VARCHAR2(50),
    WEIGHT NUMBER(6,2),
    TEMPERATURE NUMBER(4,1),
    BREATH_FREQUENCY NUMBER(3),
    SPHYGMUS NUMBER(3),
    SYSTOLIC_PRESSURE NUMBER(3),
    DIASTOLIC_PRESSURE NUMBER(3),
    INP_REASON VARCHAR2(1000),
    INP_APPROACH_CODE VARCHAR2(1),
    APGAR_GRADE NUMBER(2),
    DIETARY_STATUS_CODE NUMBER(1),
    DEVELOPMENT_DEGREE_CODE NUMBER(1),
    SPIRIT_STATUS_FLAG VARCHAR2(5),
    SLEEP_STATUS VARCHAR2(1000),
    SPECIAL_STATUS VARCHAR2(1000),
    PSYCHOLOGICAL_STATUS VARCHAR2(1),
    NUTRITION_STATUS NUMBER(1),
    SELF_CARE_STATUS NUMBER(1),
    ALLERGY_HISTORY VARCHAR2(1000),
    HEALTH_STATUS VARCHAR2(5),
    DISEASE_HISTORY VARCHAR2(1000),
    INFECT_FLAG VARCHAR2(5),
    INFECT_HISTORY VARCHAR2(1000),
    PREVENT_HISTORY VARCHAR2(1000),
    OPERATION_HISTORY VARCHAR2(1000),
    BLOOD_TRANSFUSION_HISTORY VARCHAR2(1000),
    FAMILY_HISTORY VARCHAR2(1000),
    SMOKING_FLAG VARCHAR2(5),
    STOP_SMOKING_DAY NUMBER(5),
    SMOKING_STATUS NUMBER(1),
    SMOKING_PER_DAY NUMBER(3),
    DRINKING_FLAG VARCHAR2(5),
    DRINKING_FREQUENCY VARCHAR2(2),
    DAILY_DRINK NUMBER(3),
    INFORM_DOCTOR_FLG VARCHAR2(5),
    NOTIFY_PHYSICIAN_DATETIME DATE,
    ASSESSMENT_DATETIME DATE,
    NURSING_SIGN VARCHAR2(50),
    RECEPTION_NURSING_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table ADMISSION_ASSESSMENT is 'cda子集主表-入院评估记录子集主表(ADMISSION_ASSESSMENT)'
/

comment on column ADMISSION_ASSESSMENT.INPATIENT_SN is '住院流水号'
/

comment on column ADMISSION_ASSESSMENT.INP_NO is '住院号'
/

comment on column ADMISSION_ASSESSMENT.DOC_NO is '文档编号'
/

comment on column ADMISSION_ASSESSMENT.PATIENT_ID is '患者ID'
/

comment on column ADMISSION_ASSESSMENT.INTO_ROOM_WAY is '入病房方式'
/

comment on column ADMISSION_ASSESSMENT.SYMPTOMPTOM is '主要症状'
/

comment on column ADMISSION_ASSESSMENT.WEIGHT is '体重（kg）'
/

comment on column ADMISSION_ASSESSMENT.TEMPERATURE is '体温（℃）'
/

comment on column ADMISSION_ASSESSMENT.BREATH_FREQUENCY is '呼吸频率（次/min)'
/

comment on column ADMISSION_ASSESSMENT.SPHYGMUS is '脉率(次/min)'
/

comment on column ADMISSION_ASSESSMENT.SYSTOLIC_PRESSURE is '收缩压(mmHg)'
/

comment on column ADMISSION_ASSESSMENT.DIASTOLIC_PRESSURE is '舒张压(mmHg)'
/

comment on column ADMISSION_ASSESSMENT.INP_REASON is '入院原因'
/

comment on column ADMISSION_ASSESSMENT.INP_APPROACH_CODE is '入院途径代码'
/

comment on column ADMISSION_ASSESSMENT.APGAR_GRADE is 'Apgar评分值'
/

comment on column ADMISSION_ASSESSMENT.DIETARY_STATUS_CODE is '饮食情况代码'
/

comment on column ADMISSION_ASSESSMENT.DEVELOPMENT_DEGREE_CODE is '发育程度代码'
/

comment on column ADMISSION_ASSESSMENT.SPIRIT_STATUS_FLAG is '精神状态正常标志'
/

comment on column ADMISSION_ASSESSMENT.SLEEP_STATUS is '睡眠状况'
/

comment on column ADMISSION_ASSESSMENT.SPECIAL_STATUS is '特殊情况'
/

comment on column ADMISSION_ASSESSMENT.PSYCHOLOGICAL_STATUS is '心理状态代码'
/

comment on column ADMISSION_ASSESSMENT.NUTRITION_STATUS is '营养状态代码'
/

comment on column ADMISSION_ASSESSMENT.SELF_CARE_STATUS is '自理能力代码'
/

comment on column ADMISSION_ASSESSMENT.ALLERGY_HISTORY is '过敏史'
/

comment on column ADMISSION_ASSESSMENT.HEALTH_STATUS is '一般健康状况标志'
/

comment on column ADMISSION_ASSESSMENT.DISEASE_HISTORY is '疾病史（含外伤）'
/

comment on column ADMISSION_ASSESSMENT.INFECT_FLAG is '患者传染性标志'
/

comment on column ADMISSION_ASSESSMENT.INFECT_HISTORY is '传染病史'
/

comment on column ADMISSION_ASSESSMENT.PREVENT_HISTORY is '预防接种史'
/

comment on column ADMISSION_ASSESSMENT.OPERATION_HISTORY is '手术史'
/

comment on column ADMISSION_ASSESSMENT.BLOOD_TRANSFUSION_HISTORY is '输血史'
/

comment on column ADMISSION_ASSESSMENT.FAMILY_HISTORY is '家族史'
/

comment on column ADMISSION_ASSESSMENT.SMOKING_FLAG is '吸烟标志'
/

comment on column ADMISSION_ASSESSMENT.STOP_SMOKING_DAY is '停止吸烟天数'
/

comment on column ADMISSION_ASSESSMENT.SMOKING_STATUS is '吸烟状况代码'
/

comment on column ADMISSION_ASSESSMENT.SMOKING_PER_DAY is '日吸烟量（支）'
/

comment on column ADMISSION_ASSESSMENT.DRINKING_FLAG is '饮酒标志'
/

comment on column ADMISSION_ASSESSMENT.DRINKING_FREQUENCY is '饮酒频率代码'
/

comment on column ADMISSION_ASSESSMENT.DAILY_DRINK is '日饮酒量（mL)'
/

comment on column ADMISSION_ASSESSMENT.INFORM_DOCTOR_FLG is '通知医师标志'
/

comment on column ADMISSION_ASSESSMENT.NOTIFY_PHYSICIAN_DATETIME is '通知医师日期时间'
/

comment on column ADMISSION_ASSESSMENT.ASSESSMENT_DATETIME is '评估日期时间'
/

comment on column ADMISSION_ASSESSMENT.NURSING_SIGN is '责任护士签名'
/

comment on column ADMISSION_ASSESSMENT.RECEPTION_NURSING_SIGN is '接诊护士签名'
/

comment on column ADMISSION_ASSESSMENT.SIGN_DATETIME is '签名日期时间'
/

comment on column ADMISSION_ASSESSMENT.LAST_MODIFIC_TIME is '最后修改时间'
/

create index A_A_INPATIENT_SN
	on ADMISSION_ASSESSMENT (INPATIENT_SN)
/

create table ADMISSION_ASSESSMENT_ITEMS
(
    ASSESSMENT_ITEMS_ID VARCHAR2(18) not null
        constraint ADMISSION_ASSESSMENT_ITEMS_PK
        primary key,
    INPATIENT_SN VARCHAR2(18) not null,
    NURSING_OBSER_PROJECT_NAME VARCHAR2(30),
    NURSING_OBSERVATION_RESULT VARCHAR2(1000),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table ADMISSION_ASSESSMENT_ITEMS is 'cda子集子表-入院评估记录子集子表(ADMISSION_ASSESSMENT_ITEMS)'
/

comment on column ADMISSION_ASSESSMENT_ITEMS.ASSESSMENT_ITEMS_ID is '评估记录子表id'
/

comment on column ADMISSION_ASSESSMENT_ITEMS.INPATIENT_SN is '住院流水号'
/

comment on column ADMISSION_ASSESSMENT_ITEMS.NURSING_OBSER_PROJECT_NAME is '护理观察项目名称'
/

comment on column ADMISSION_ASSESSMENT_ITEMS.NURSING_OBSERVATION_RESULT is '护理观察结果'
/

comment on column ADMISSION_ASSESSMENT_ITEMS.LAST_MODIFIC_TIME is '最后修改时间'
/

create index A_A_I_INPATIENT_SN
	on ADMISSION_ASSESSMENT_ITEMS (INPATIENT_SN)
/

create table INTAKE_OUTPUT_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint INTAKE_OUTPUT_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    NURSING_GRADE_CODE VARCHAR2(1),
    NURSING_TYPE_CODE VARCHAR2(1),
    CREATE_DATETIME DATE,
    DRUG_USAGE VARCHAR2(100),
    TCD_TYPE_CODE NUMBER(1),
    FREQUENCY VARCHAR2(2),
    DOSAGE_UNIT VARCHAR2(6),
    SINGLE_DOSAGE NUMBER(5,2),
    DOSAGE_TOTAL NUMBER(12,2),
    ROUTE_ADMINISTRATION VARCHAR2(3),
    DRUG_NAME VARCHAR2(50),
    EMESIS_FLAG VARCHAR2(5),
    DYSURIA_FLAG VARCHAR2(5),
    NURSE_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    GENERAL_NURSING_ID VARCHAR2(18),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table INTAKE_OUTPUT_RECORD is 'cda子集主表-出入量记录子集主表(INTAKE_OUTPUT_RECORD)'
/

comment on column INTAKE_OUTPUT_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column INTAKE_OUTPUT_RECORD.INP_NO is '住院号'
/

comment on column INTAKE_OUTPUT_RECORD.DOC_NO is '文档编号'
/

comment on column INTAKE_OUTPUT_RECORD.PATIENT_ID is '患者ID'
/

comment on column INTAKE_OUTPUT_RECORD.NURSING_GRADE_CODE is '护理等级代码'
/

comment on column INTAKE_OUTPUT_RECORD.NURSING_TYPE_CODE is '护理类型代码'
/

comment on column INTAKE_OUTPUT_RECORD.CREATE_DATETIME is '记录日期时间'
/

comment on column INTAKE_OUTPUT_RECORD.DRUG_USAGE is '药物用法'
/

comment on column INTAKE_OUTPUT_RECORD.TCD_TYPE_CODE is '中药使用类别代码'
/

comment on column INTAKE_OUTPUT_RECORD.FREQUENCY is '药物使用频率'
/

comment on column INTAKE_OUTPUT_RECORD.DOSAGE_UNIT is '药物使用剂量单位'
/

comment on column INTAKE_OUTPUT_RECORD.SINGLE_DOSAGE is '药物使用次剂量'
/

comment on column INTAKE_OUTPUT_RECORD.DOSAGE_TOTAL is '药物使用总剂量'
/

comment on column INTAKE_OUTPUT_RECORD.ROUTE_ADMINISTRATION is '用药途径代码'
/

comment on column INTAKE_OUTPUT_RECORD.DRUG_NAME is '药物名称'
/

comment on column INTAKE_OUTPUT_RECORD.EMESIS_FLAG is '呕吐标志'
/

comment on column INTAKE_OUTPUT_RECORD.DYSURIA_FLAG is '排尿困难标志'
/

comment on column INTAKE_OUTPUT_RECORD.NURSE_SIGN is '护士签名'
/

comment on column INTAKE_OUTPUT_RECORD.SIGN_DATETIME is '签名日期时间'
/

comment on column INTAKE_OUTPUT_RECORD.GENERAL_NURSING_ID is '护理记录唯一标识'
/

comment on column INTAKE_OUTPUT_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index I_O_R_INPATIENT_SN_IDX
	on INTAKE_OUTPUT_RECORD (INPATIENT_SN)
/

create table MONITOR_VITAL_SIGNS_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint MONITOR_VITAL_SIGNS_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_DAYS NUMBER(4),
    AFTER_OPERATION_DAY NUMBER(5),
    CREATE_DATETIME DATE,
    BREATH_FREQUENCY NUMBER(3),
    RESPIRATOR_FLAG VARCHAR2(5),
    SPHYGMUS NUMBER(3),
    PACEMAKER_HEARTRATE NUMBER(3),
    TEMPERATURE NUMBER(4,1),
    SYSTOLIC_PRESSURE NUMBER(3),
    DIASTOLIC_PRESSURE NUMBER(3),
    WEIGHT NUMBER(6,2),
    ABDOMINAL_GIRTH NUMBER(5,1),
    NURSE_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    GENERAL_NURSING_ID VARCHAR2(18),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table MONITOR_VITAL_SIGNS_RECORD is 'cda子集主表-生命体征测量记录子集主表(MONITOR_VITAL_SIGNS_RECORD)'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.INP_NO is '住院号'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.DOC_NO is '文档编号'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.PATIENT_ID is '患者ID'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.INP_DAYS is '实际住院天数'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.AFTER_OPERATION_DAY is '手术或分娩后天数'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.CREATE_DATETIME is '记录日期时间'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.BREATH_FREQUENCY is '呼吸频率(次/min)'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.RESPIRATOR_FLAG is '使用呼吸机标志'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.SPHYGMUS is '脉率(次/min)'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.PACEMAKER_HEARTRATE is '起搏器心率(次/min)'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.TEMPERATURE is '体温（℃）'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.SYSTOLIC_PRESSURE is '收缩压(mmHg)'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.DIASTOLIC_PRESSURE is '舒张压(mmHg)'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.WEIGHT is '体重（kg）'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.ABDOMINAL_GIRTH is '腹围（cm）'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.NURSE_SIGN is '护士签名'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.SIGN_DATETIME is '签名日期时间'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.GENERAL_NURSING_ID is '护理记录唯一标识'
/

comment on column MONITOR_VITAL_SIGNS_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index M_V_S_R_INPATIENT_SN_IDX
	on MONITOR_VITAL_SIGNS_RECORD (INPATIENT_SN)
/

create table VBNC_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint VBNC_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    DELIVERY_TIMEGRAVIDITY_TIME NUMBER(2),
    DELIVERY_TIME NUMBER(2),
    LAST_MENSTRUAL_PERIOD DATE,
    EDC_DESC DATE,
    BIRTH_DATETIME DATE,
    INP_DIAG_CODE VARCHAR2(200),
    RUPTURE_MEMBRANES_DATETIME DATE,
    FOREWATERS_VOLUME VARCHAR2(100),
    PAMNIOTIC_FLUID_VOLUME NUMBER(5),
    FIRST_DURATION_LABOR NUMBER(4),
    PMOUTH_OPFULL_TIME DATE,
    BIRTHPROCESS_DURATION_DELIVERY NUMBER(4),
    FETAL_DISENGAGE_TIME DATE,
    THIRD_DURATION_LABOR NUMBER(4),
    FULL_BIRTHPROCESS_TIME NUMBER(4),
    FETAL_POSITION_CODE VARCHAR2(2),
    VAGINAL_DELIVERY_CODE VARCHAR2(5),
    VAGINA_DELIVERY_METHOD VARCHAR2(100),
    AMNIOTIC_FLUID_CHARACTER VARCHAR2(100),
    AMNIOTIC_FLUID_VOLUME NUMBER(5),
    PLACENTAL_EXPULSION_TIME DATE,
    PLACENTAL_EXPULSION_SITUATION VARCHAR2(100),
    INTACT_FETALMEMBRANES_CODE VARCHAR2(5),
    UMBILICALCORD_WINDING_NUMBER NUMBER(3),
    UMBILICAL_CORD_LENGTH NUMBER(5),
    UMBILICAL_CORD_ABNORMALITIES VARCHAR2(200),
    DELIVERY_DRUG VARCHAR2(50),
    PREVENTIVE VARCHAR2(200),
    MATERNALPERINEAL_INCISION_CODE VARCHAR2(5),
    INCISION_LOCATION VARCHAR2(100),
    SUTURE_NEEDLE_NUMBER NUMBER(2),
    PERINEAL_LACERATION_CODE NUMBER(1),
    PERINEAL_HEMATOMA_CODE VARCHAR2(5),
    OPERATE_MZFS_ID NUMBER(2),
    ANESTH_DRUG_NAME VARCHAR2(50),
    LACERATION_VAGINA_CODE VARCHAR2(5),
    VAGINAL_HEMATOMA_CODE VARCHAR2(5),
    VAGINAL_HEMATOMA_SIZE VARCHAR2(50),
    TREATMENT_VAGINAL_HEMATOMA VARCHAR2(200),
    CERVICAL_LACERATION_CODE VARCHAR2(5),
    CERVICAL_SUTURE VARCHAR2(100),
    ANAL_INVESTIGATION VARCHAR2(100),
    AFTER_DELIVERY_DRUG VARCHAR2(50),
    DELIVERY_SPECIAL_CONDITION VARCHAR2(200),
    CONTRACTIONS VARCHAR2(200),
    UTERINE_CONDITIONS VARCHAR2(100),
    ELU_STATUS VARCHAR2(100),
    REPAIR_PROCEDURE VARCHAR2(100),
    UMBILICAL_BLOOD_CORD VARCHAR2(5),
    AFTDELIVERY_ICD_CODE VARCHAR2(200),
    POSTPARTUM_OBSERVATION_TIME DATE,
    POSTOPERATIVE_CHECK_TIME NUMBER(3),
    BLOODPRESSUREH NUMBER(3),
    BLOODPRESSUREL NUMBER(3),
    PULSE NUMBER(3),
    POSTPARTUM_HEART_RATE NUMBER(3),
    BLOOD_LOSSED NUMBER(5),
    POSTPARTUM_UTERINE_CONTRACTION VARCHAR2(200),
    POSTPARTUM_UTERINE_HEIGHT NUMBER(4,1),
    POSTPARTUM_BLADDER_FILLING VARCHAR2(5),
    NEWBORN_SEX NUMBER(1),
    NEWBORN_BIRTH_WEIGHT NUMBER(4),
    NEWBORN_HEIGHT NUMBER(5,1),
    TUMOR_SIZE VARCHAR2(100),
    TUMOR_LOCATION VARCHAR2(100),
    APGAR_CODE NUMBER(1),
    APGAR_SCORE NUMBER(2),
    DELIVERY_OUTCOME_CODE NUMBER(1),
    NEWBORN_ABNORMAL_CODE NUMBER(1),
    MIDWIVES_SIGN VARCHAR2(50),
    OPERATION_DOCTOR_NAME VARCHAR2(50),
    PEDIATRICIAN_SIGN VARCHAR2(50),
    RECORD_SIGN VARCHAR2(50),
    SIGNATURE_OF_MIDWIFE VARCHAR2(50),
    ASSISTANT_SIGNATURE VARCHAR2(50),
    SIGNATURE_OF_BABY_SITTER VARCHAR2(50),
    INSTRUCTOR_SIGNATURE VARCHAR2(50),
    UMBILICAL_ANOMALIES VARCHAR2(5),
    LAST_MODIFIC_TIME DATE,
    CONTRACTIONS_STARTED_DATETIME DATE
)
    /

comment on table VBNC_RECORD is 'cda子集主表-阴道分娩表(VBNC_RECORD)'
/

comment on column VBNC_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column VBNC_RECORD.DOC_NO is '文档编号'
/

comment on column VBNC_RECORD.PATIENT_ID is '患者ID'
/

comment on column VBNC_RECORD.INP_NO is '住院号'
/

comment on column VBNC_RECORD.DELIVERY_TIMEGRAVIDITY_TIME is '孕次'
/

comment on column VBNC_RECORD.DELIVERY_TIME is '产次'
/

comment on column VBNC_RECORD.LAST_MENSTRUAL_PERIOD is '末次月经日期'
/

comment on column VBNC_RECORD.EDC_DESC is '预产期'
/

comment on column VBNC_RECORD.BIRTH_DATETIME is '临产日期时间'
/

comment on column VBNC_RECORD.INP_DIAG_CODE is '入院诊断'
/

comment on column VBNC_RECORD.RUPTURE_MEMBRANES_DATETIME is '胎膜破裂日期时间'
/

comment on column VBNC_RECORD.FOREWATERS_VOLUME is '前羊水性状'
/

comment on column VBNC_RECORD.PAMNIOTIC_FLUID_VOLUME is '前羊水量(mL)'
/

comment on column VBNC_RECORD.FIRST_DURATION_LABOR is '第1产程时长（min)'
/

comment on column VBNC_RECORD.PMOUTH_OPFULL_TIME is '宫口开全日期时间'
/

comment on column VBNC_RECORD.BIRTHPROCESS_DURATION_DELIVERY is '第2产程时长(min)'
/

comment on column VBNC_RECORD.FETAL_DISENGAGE_TIME is '胎儿娩出日期时间'
/

comment on column VBNC_RECORD.THIRD_DURATION_LABOR is '第3产程时长（min)'
/

comment on column VBNC_RECORD.FULL_BIRTHPROCESS_TIME is '总产程时长（min)'
/

comment on column VBNC_RECORD.FETAL_POSITION_CODE is '胎方位代码'
/

comment on column VBNC_RECORD.VAGINAL_DELIVERY_CODE is '阴道助产标志'
/

comment on column VBNC_RECORD.VAGINA_DELIVERY_METHOD is '阴道助产方式'
/

comment on column VBNC_RECORD.AMNIOTIC_FLUID_CHARACTER is '羊水性状'
/

comment on column VBNC_RECORD.AMNIOTIC_FLUID_VOLUME is '羊水量(mL)'
/

comment on column VBNC_RECORD.PLACENTAL_EXPULSION_TIME is '胎盘娩出日期时间'
/

comment on column VBNC_RECORD.PLACENTAL_EXPULSION_SITUATION is '胎盘娩出情况'
/

comment on column VBNC_RECORD.INTACT_FETALMEMBRANES_CODE is '胎膜完整情况标志'
/

comment on column VBNC_RECORD.UMBILICALCORD_WINDING_NUMBER is '绕颈身（周）'
/

comment on column VBNC_RECORD.UMBILICAL_CORD_LENGTH is '跻带长度（cm）'
/

comment on column VBNC_RECORD.UMBILICAL_CORD_ABNORMALITIES is '脐带异常情况描述'
/

comment on column VBNC_RECORD.DELIVERY_DRUG is '产时用药'
/

comment on column VBNC_RECORD.PREVENTIVE is '预防措施'
/

comment on column VBNC_RECORD.MATERNALPERINEAL_INCISION_CODE is '产妇会阴切开标志'
/

comment on column VBNC_RECORD.INCISION_LOCATION is '会阴切开位置'
/

comment on column VBNC_RECORD.SUTURE_NEEDLE_NUMBER is '产妇会阴缝合针数'
/

comment on column VBNC_RECORD.PERINEAL_LACERATION_CODE is '会阴裂伤情况代码'
/

comment on column VBNC_RECORD.PERINEAL_HEMATOMA_CODE is '会阴血肿标志'
/

comment on column VBNC_RECORD.OPERATE_MZFS_ID is '麻醉方法代码'
/

comment on column VBNC_RECORD.ANESTH_DRUG_NAME is '麻醉药物名称'
/

comment on column VBNC_RECORD.LACERATION_VAGINA_CODE is '阴道裂伤标忐'
/

comment on column VBNC_RECORD.VAGINAL_HEMATOMA_CODE is '阴道血肿标志'
/

comment on column VBNC_RECORD.VAGINAL_HEMATOMA_SIZE is '阴道血肿大小'
/

comment on column VBNC_RECORD.TREATMENT_VAGINAL_HEMATOMA is '阴道血肿处理'
/

comment on column VBNC_RECORD.CERVICAL_LACERATION_CODE is '宫颈裂伤标志'
/

comment on column VBNC_RECORD.CERVICAL_SUTURE is '宫颈缝合情况'
/

comment on column VBNC_RECORD.ANAL_INVESTIGATION is '肛查'
/

comment on column VBNC_RECORD.AFTER_DELIVERY_DRUG is '产后用药'
/

comment on column VBNC_RECORD.DELIVERY_SPECIAL_CONDITION is '分娩过程特殊情况描述'
/

comment on column VBNC_RECORD.CONTRACTIONS is '宫缩情况'
/

comment on column VBNC_RECORD.UTERINE_CONDITIONS is '子宫情况'
/

comment on column VBNC_RECORD.ELU_STATUS is '恶露状况'
/

comment on column VBNC_RECORD.REPAIR_PROCEDURE is '修补手术过程'
/

comment on column VBNC_RECORD.UMBILICAL_BLOOD_CORD is '存脐带血情况标志'
/

comment on column VBNC_RECORD.AFTDELIVERY_ICD_CODE is '产后诊断'
/

comment on column VBNC_RECORD.POSTPARTUM_OBSERVATION_TIME is '产后观察日期时间'
/

comment on column VBNC_RECORD.POSTOPERATIVE_CHECK_TIME is '产后检查时间（min)'
/

comment on column VBNC_RECORD.BLOODPRESSUREH is '产后收缩压(mmHg)'
/

comment on column VBNC_RECORD.BLOODPRESSUREL is '产后舒张压(mmHg)'
/

comment on column VBNC_RECORD.PULSE is '产后脉搏（次/min）'
/

comment on column VBNC_RECORD.POSTPARTUM_HEART_RATE is '产后心率（次/min）'
/

comment on column VBNC_RECORD.BLOOD_LOSSED is '产后出血量（mL)'
/

comment on column VBNC_RECORD.POSTPARTUM_UTERINE_CONTRACTION is '产后宫缩'
/

comment on column VBNC_RECORD.POSTPARTUM_UTERINE_HEIGHT is '产后宫底高度（cm）'
/

comment on column VBNC_RECORD.POSTPARTUM_BLADDER_FILLING is '产后膀胱充盈标志'
/

comment on column VBNC_RECORD.NEWBORN_SEX is '新生儿性别代码'
/

comment on column VBNC_RECORD.NEWBORN_BIRTH_WEIGHT is '新生儿出生体重(g)'
/

comment on column VBNC_RECORD.NEWBORN_HEIGHT is '新生儿出生身高（cm）'
/

comment on column VBNC_RECORD.TUMOR_SIZE is '产瘤大小'
/

comment on column VBNC_RECORD.TUMOR_LOCATION is '产瘤部位'
/

comment on column VBNC_RECORD.APGAR_CODE is 'Apgar评分间隔时间代码'
/

comment on column VBNC_RECORD.APGAR_SCORE is 'Apgar评分值'
/

comment on column VBNC_RECORD.DELIVERY_OUTCOME_CODE is '分娩结局代码'
/

comment on column VBNC_RECORD.NEWBORN_ABNORMAL_CODE is '新生儿异常情况代码'
/

comment on column VBNC_RECORD.MIDWIVES_SIGN is '接生人员签名'
/

comment on column VBNC_RECORD.OPERATION_DOCTOR_NAME is '手术医生签名'
/

comment on column VBNC_RECORD.PEDIATRICIAN_SIGN is '儿科医生签名'
/

comment on column VBNC_RECORD.RECORD_SIGN is '记录人员签名'
/

comment on column VBNC_RECORD.SIGNATURE_OF_MIDWIFE is '助产者签名'
/

comment on column VBNC_RECORD.ASSISTANT_SIGNATURE is '助手签名'
/

comment on column VBNC_RECORD.SIGNATURE_OF_BABY_SITTER is '护婴者签名'
/

comment on column VBNC_RECORD.INSTRUCTOR_SIGNATURE is '指导者签名'
/

comment on column VBNC_RECORD.UMBILICAL_ANOMALIES is '脐带异常情况标志'
/

comment on column VBNC_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

comment on column VBNC_RECORD.CONTRACTIONS_STARTED_DATETIME is '宫缩开始时间日期'
/

create index VBNC_RECORD_INPATIENT_SN_IDX
	on VBNC_RECORD (INPATIENT_SN)
/

create table CAESAREAN_SECTION_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint CAESAREAN_SECTION_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OPERA_SN VARCHAR2(18),
    PREDELIVERY_DATETIME DATE,
    PREOPERATION_DIAG VARCHAR2(200),
    CESAREAN_PROCESS VARCHAR2(2000),
    UTERINE_CONDITIONS VARCHAR2(100),
    FETAL_CHILDBIRTH_WAY VARCHAR2(100),
    AMNIOTIC_FLUID_CHARACTER VARCHAR2(100),
    AMNIOTIC_FLUID_VOLUME NUMBER(5),
    PLACENTAL_EXPULSION_TIME DATE,
    PLACENTAL_EXPULSION_SITUATION VARCHAR2(100),
    INTACT_FETALMEMBRANES_CODE VARCHAR2(5),
    UMBILICAL_CORD_LENGTH NUMBER(5),
    UMBILICALCORD_WINDING_NUMBER NUMBER(3),
    ABNUMBERRMAL_UMBILICAL_CORD VARCHAR2(200),
    UMBILICAL_BLOOD_CORD VARCHAR2(5),
    UTERINE_WALL_SUTURE VARCHAR2(100),
    UTEROTONICS_NAME VARCHAR2(50),
    UTEROTONICS_USE VARCHAR2(100),
    OPERATE_DRUG VARCHAR2(50),
    OPERATE_DRUG_DOSAGE VARCHAR2(50),
    ABDOMINAL_EXPLORATION_UTERUS VARCHAR2(100),
    ABDOMINAL_EXPLORATION_ANNEX VARCHAR2(100),
    INTRAUTER_EXPLORAT_ANOMALIES VARCHAR2(1000),
    INTRAUTERINE_EXPLORAT_TREAT VARCHAR2(100),
    OPERATION_MATERNITY VARCHAR2(1000),
    BLOOD_LOSSED NUMBER(5),
    TRANS_INGREDIENTS VARCHAR2(100),
    BLOOD_TRANSFERED NUMBER(4),
    OPERATION_INFUSION NUMBER(5),
    OXYGEN_SUPPLY_TIME NUMBER(4),
    OTHER_DRUG_NAME VARCHAR2(50),
    OTHER_DRUG_USE VARCHAR2(100),
    OPERATION_FULL_TIME NUMBER(4),
    OPERATE_AFTER_NAME VARCHAR2(200),
    POSTOPER_OBSERVATION_DATE DATE,
    POSTOPERATIVE_CHECK_TIME NUMBER(3),
    BLOODPRESSUREH NUMBER(3),
    BLOODPRESSUREL NUMBER(3),
    PULSE NUMBER(3),
    CARDIOTACH NUMBER(3),
    POSTOPER_BLOOD_LOSSED NUMBER(5),
    POSTPARTUM_UTERINE_CONTRACTION VARCHAR2(200),
    POSTPARTUM_UTERINE_HEIGHT NUMBER(4,1),
    NEWBORN_SEX VARCHAR2(1),
    BIRTH_WEIGHT NUMBER(4),
    NEWBORN_HEIGHT NUMBER(5,1),
    TUMOR_SIZE VARCHAR2(100),
    TUMOR_LOCATION VARCHAR2(100),
    APGAR_CODE VARCHAR2(1),
    APGAR_SCORE NUMBER(2),
    DELIVERY_OUTCOME_CODE VARCHAR2(1),
    NEWBORN_ABNORMAL_CODE VARCHAR2(1),
    PEDIATRICIAN_SIGN VARCHAR2(50),
    RECORD_SIGN VARCHAR2(50),
    OPERATION_INDICATIONS VARCHAR2(500),
    SIGNATURE_OF_BABY_SITTER VARCHAR2(50),
    UMBILICAL_CORD_TWIST VARCHAR2(10),
    EXPLORE_FIBROIDS_FLAG VARCHAR2(5),
    FETAL_POSITION_CODE VARCHAR2(2),
    YELLOW_STAINING_OF_PLACENTA VARCHAR2(200),
    YELLOW_STAINED_MEMBRANES VARCHAR2(200),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table CAESAREAN_SECTION_RECORD is 'cda子集主表-剖宫产手术记录子集主表（CAESAREAN_SECTION_RECORD）'
/

comment on column CAESAREAN_SECTION_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column CAESAREAN_SECTION_RECORD.INP_NO is '住院号'
/

comment on column CAESAREAN_SECTION_RECORD.DOC_NO is '文档编号'
/

comment on column CAESAREAN_SECTION_RECORD.PATIENT_ID is '患者ID'
/

comment on column CAESAREAN_SECTION_RECORD.OPERA_SN is '手术记录流水号'
/

comment on column CAESAREAN_SECTION_RECORD.PREDELIVERY_DATETIME is '待产日期时间'
/

comment on column CAESAREAN_SECTION_RECORD.PREOPERATION_DIAG is '术前诊断'
/

comment on column CAESAREAN_SECTION_RECORD.CESAREAN_PROCESS is '剖宫产手术过程'
/

comment on column CAESAREAN_SECTION_RECORD.UTERINE_CONDITIONS is '子宫情况'
/

comment on column CAESAREAN_SECTION_RECORD.FETAL_CHILDBIRTH_WAY is '胎儿娩出方式'
/

comment on column CAESAREAN_SECTION_RECORD.AMNIOTIC_FLUID_CHARACTER is '羊水性状'
/

comment on column CAESAREAN_SECTION_RECORD.AMNIOTIC_FLUID_VOLUME is '羊水量（mL)'
/

comment on column CAESAREAN_SECTION_RECORD.PLACENTAL_EXPULSION_TIME is '胎盘娩出日期时间'
/

comment on column CAESAREAN_SECTION_RECORD.PLACENTAL_EXPULSION_SITUATION is '胎盘娩出情况'
/

comment on column CAESAREAN_SECTION_RECORD.INTACT_FETALMEMBRANES_CODE is '胎膜完整情况标志'
/

comment on column CAESAREAN_SECTION_RECORD.UMBILICAL_CORD_LENGTH is '脐带长度（cm）'
/

comment on column CAESAREAN_SECTION_RECORD.UMBILICALCORD_WINDING_NUMBER is '绕颈身（周）'
/

comment on column CAESAREAN_SECTION_RECORD.ABNUMBERRMAL_UMBILICAL_CORD is '胳带异常情况描述'
/

comment on column CAESAREAN_SECTION_RECORD.UMBILICAL_BLOOD_CORD is '存脐带血情况标志'
/

comment on column CAESAREAN_SECTION_RECORD.UTERINE_WALL_SUTURE is '子宫壁缝合情况'
/

comment on column CAESAREAN_SECTION_RECORD.UTEROTONICS_NAME is '宫缩剂名称'
/

comment on column CAESAREAN_SECTION_RECORD.UTEROTONICS_USE is '宫缩剂使用方法'
/

comment on column CAESAREAN_SECTION_RECORD.OPERATE_DRUG is '手术用药'
/

comment on column CAESAREAN_SECTION_RECORD.OPERATE_DRUG_DOSAGE is '手术用药量'
/

comment on column CAESAREAN_SECTION_RECORD.ABDOMINAL_EXPLORATION_UTERUS is '腹腔探查子宫'
/

comment on column CAESAREAN_SECTION_RECORD.ABDOMINAL_EXPLORATION_ANNEX is '腹腔探查附件'
/

comment on column CAESAREAN_SECTION_RECORD.INTRAUTER_EXPLORAT_ANOMALIES is '宫腔探查异常情况描述'
/

comment on column CAESAREAN_SECTION_RECORD.INTRAUTERINE_EXPLORAT_TREAT is '宫腔探查处理情_况'
/

comment on column CAESAREAN_SECTION_RECORD.OPERATION_MATERNITY is '手术时产妇情况'
/

comment on column CAESAREAN_SECTION_RECORD.BLOOD_LOSSED is '出血量(mL)'
/

comment on column CAESAREAN_SECTION_RECORD.TRANS_INGREDIENTS is '输血成分'
/

comment on column CAESAREAN_SECTION_RECORD.BLOOD_TRANSFERED is '输血量（mL)'
/

comment on column CAESAREAN_SECTION_RECORD.OPERATION_INFUSION is '输液最（mL)'
/

comment on column CAESAREAN_SECTION_RECORD.OXYGEN_SUPPLY_TIME is '供氧时间（min)'
/

comment on column CAESAREAN_SECTION_RECORD.OTHER_DRUG_NAME is '其他用药'
/

comment on column CAESAREAN_SECTION_RECORD.OTHER_DRUG_USE is '其他用药情况'
/

comment on column CAESAREAN_SECTION_RECORD.OPERATION_FULL_TIME is '手术全程时间（min)'
/

comment on column CAESAREAN_SECTION_RECORD.OPERATE_AFTER_NAME is '术后诊断'
/

comment on column CAESAREAN_SECTION_RECORD.POSTOPER_OBSERVATION_DATE is '术后观察日期时间'
/

comment on column CAESAREAN_SECTION_RECORD.POSTOPERATIVE_CHECK_TIME is '术后检查时间（min)'
/

comment on column CAESAREAN_SECTION_RECORD.BLOODPRESSUREH is '术后收缩压(mmHg)'
/

comment on column CAESAREAN_SECTION_RECORD.BLOODPRESSUREL is '术后舒张压(mmHg)'
/

comment on column CAESAREAN_SECTION_RECORD.PULSE is '术后脉搏（次/min）'
/

comment on column CAESAREAN_SECTION_RECORD.CARDIOTACH is '术后心率（次/min）'
/

comment on column CAESAREAN_SECTION_RECORD.POSTOPER_BLOOD_LOSSED is '术后出血量（mL)'
/

comment on column CAESAREAN_SECTION_RECORD.POSTPARTUM_UTERINE_CONTRACTION is '术后宫缩'
/

comment on column CAESAREAN_SECTION_RECORD.POSTPARTUM_UTERINE_HEIGHT is '术后宫底高度（cm）'
/

comment on column CAESAREAN_SECTION_RECORD.NEWBORN_SEX is '新生儿性别代码'
/

comment on column CAESAREAN_SECTION_RECORD.BIRTH_WEIGHT is '新生儿出生体重(g)'
/

comment on column CAESAREAN_SECTION_RECORD.NEWBORN_HEIGHT is '新生儿出生身长（cm）'
/

comment on column CAESAREAN_SECTION_RECORD.TUMOR_SIZE is '产瘤大小'
/

comment on column CAESAREAN_SECTION_RECORD.TUMOR_LOCATION is '产瘤部位'
/

comment on column CAESAREAN_SECTION_RECORD.APGAR_CODE is 'Apgar评分间隔时间代码'
/

comment on column CAESAREAN_SECTION_RECORD.APGAR_SCORE is 'Apgar评分值'
/

comment on column CAESAREAN_SECTION_RECORD.DELIVERY_OUTCOME_CODE is '分娩结局代码'
/

comment on column CAESAREAN_SECTION_RECORD.NEWBORN_ABNORMAL_CODE is '新生儿异常情况代码'
/

comment on column CAESAREAN_SECTION_RECORD.PEDIATRICIAN_SIGN is '儿科医生签名'
/

comment on column CAESAREAN_SECTION_RECORD.RECORD_SIGN is '记录人员签名'
/

comment on column CAESAREAN_SECTION_RECORD.OPERATION_INDICATIONS is '手术指征'
/

comment on column CAESAREAN_SECTION_RECORD.SIGNATURE_OF_BABY_SITTER is '护婴者签名'
/

comment on column CAESAREAN_SECTION_RECORD.UMBILICAL_CORD_TWIST is '脐带扭转（周）'
/

comment on column CAESAREAN_SECTION_RECORD.EXPLORE_FIBROIDS_FLAG is '宫腔探查肌瘤标志'
/

comment on column CAESAREAN_SECTION_RECORD.FETAL_POSITION_CODE is '胎方位代码'
/

comment on column CAESAREAN_SECTION_RECORD.YELLOW_STAINING_OF_PLACENTA is '胎盘黄染描述'
/

comment on column CAESAREAN_SECTION_RECORD.YELLOW_STAINED_MEMBRANES is '胎膜黄染描述'
/

comment on column CAESAREAN_SECTION_RECORD.LAST_MODIFIC_TIME is '最后修改时间，抽数据用'
/

create index C_S_R_INPATIENT_SN_IDX
	on CAESAREAN_SECTION_RECORD (INPATIENT_SN)
/

create table GENERAL_CARER_ECORDS
(
    INPATIENT_SN VARCHAR2(18) not null,
    DOC_NO VARCHAR2(50) not null
        constraint GENERAL_CARER_ECORDS_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    INP_NO VARCHAR2(18),
    NURSING_GRADE_CODE NUMBER(1),
    NURSING_TYPE_CODE NUMBER(2),
    ALLERGY_HISTORY VARCHAR2(1000),
    DPAP_FLAG VARCHAR2(5),
    DIETARY_STATUS_CODE NUMBER(1),
    CATHETER_CARE_CODE VARCHAR2(1000),
    ENDOTRACHEAL_CARE_CODE NUMBER(1),
    BODY_POSITION_CARE VARCHAR2(30),
    SKIN_CARE VARCHAR2(50),
    NUTRITION_CARE VARCHAR2(100),
    DIET_GUIDE_CODE VARCHAR2(2),
    PSYCHOLOGICAL_CARE_CODE NUMBER(1),
    SAFETY_NURSING_CODE NUMBER(1),
    PATIENT_CONDITION VARCHAR2(2000),
    ISSUE_SSC_FLAG VARCHAR2(5),
    WITHDRAW_SSC_FLAG VARCHAR2(5),
    ISSUE_ORA_FLAG VARCHAR2(5),
    WITHDRAW_ORA_FLAG VARCHAR2(5),
    ISOLATION_INDICATOR VARCHAR2(5),
    ISOLATION_TYPE_CODE NUMBER(1),
    NURSE_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    TEMPERATURE NUMBER(4,1),
    BREATH_FREQUENCY NUMBER(3),
    SPHYGMUS NUMBER(3),
    SYSTOLIC_PRESSURE NUMBER(3),
    DIASTOLIC_PRESSURE NUMBER(3),
    OXYGEN_SATURATION NUMBER(4,1),
    GENERAL_NURSING_ID VARCHAR2(18),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table GENERAL_CARER_ECORDS is 'cda子集主表-一般护理记录主表（GENERAL_CARER_ECORDS）'
/

comment on column GENERAL_CARER_ECORDS.INPATIENT_SN is '住院流水号'
/

comment on column GENERAL_CARER_ECORDS.DOC_NO is '文档编号'
/

comment on column GENERAL_CARER_ECORDS.PATIENT_ID is '患者ID'
/

comment on column GENERAL_CARER_ECORDS.INP_NO is '住院号'
/

comment on column GENERAL_CARER_ECORDS.NURSING_GRADE_CODE is '护理等级代码'
/

comment on column GENERAL_CARER_ECORDS.NURSING_TYPE_CODE is '护理类型代码'
/

comment on column GENERAL_CARER_ECORDS.ALLERGY_HISTORY is '过敏史'
/

comment on column GENERAL_CARER_ECORDS.DPAP_FLAG is '足背动脉搏动标志'
/

comment on column GENERAL_CARER_ECORDS.DIETARY_STATUS_CODE is '饮食情况代码'
/

comment on column GENERAL_CARER_ECORDS.CATHETER_CARE_CODE is '导管护理描述'
/

comment on column GENERAL_CARER_ECORDS.ENDOTRACHEAL_CARE_CODE is '气管护理代码'
/

comment on column GENERAL_CARER_ECORDS.BODY_POSITION_CARE is '体位护理'
/

comment on column GENERAL_CARER_ECORDS.SKIN_CARE is '皮肤护理'
/

comment on column GENERAL_CARER_ECORDS.NUTRITION_CARE is '营养护理'
/

comment on column GENERAL_CARER_ECORDS.DIET_GUIDE_CODE is '饮食指导代码'
/

comment on column GENERAL_CARER_ECORDS.PSYCHOLOGICAL_CARE_CODE is '心理护理代码'
/

comment on column GENERAL_CARER_ECORDS.SAFETY_NURSING_CODE is '安全护理代码'
/

comment on column GENERAL_CARER_ECORDS.PATIENT_CONDITION is '简要病情'
/

comment on column GENERAL_CARER_ECORDS.ISSUE_SSC_FLAG is '发出手术安全核对表标志'
/

comment on column GENERAL_CARER_ECORDS.WITHDRAW_SSC_FLAG is '收回手术安全核对表标志'
/

comment on column GENERAL_CARER_ECORDS.ISSUE_ORA_FLAG is '发出手术风险评估表标志'
/

comment on column GENERAL_CARER_ECORDS.WITHDRAW_ORA_FLAG is '收回手术风险评估表标志'
/

comment on column GENERAL_CARER_ECORDS.ISOLATION_INDICATOR is '隔离标志'
/

comment on column GENERAL_CARER_ECORDS.ISOLATION_TYPE_CODE is '隔离种类代码'
/

comment on column GENERAL_CARER_ECORDS.NURSE_SIGN is '护士签名'
/

comment on column GENERAL_CARER_ECORDS.SIGN_DATETIME is '签名日期时间'
/

comment on column GENERAL_CARER_ECORDS.TEMPERATURE is '体温（℃）'
/

comment on column GENERAL_CARER_ECORDS.BREATH_FREQUENCY is '呼吸频率(次/min)'
/

comment on column GENERAL_CARER_ECORDS.SPHYGMUS is '脉率(次/min)'
/

comment on column GENERAL_CARER_ECORDS.SYSTOLIC_PRESSURE is '收缩压(mmHg)'
/

comment on column GENERAL_CARER_ECORDS.DIASTOLIC_PRESSURE is '舒张压(mmHg)'
/

comment on column GENERAL_CARER_ECORDS.OXYGEN_SATURATION is '血氧饱和度（％)'
/

comment on column GENERAL_CARER_ECORDS.GENERAL_NURSING_ID is '护理记录唯一标识'
/

comment on column GENERAL_CARER_ECORDS.LAST_MODIFIC_TIME is '最后修改时间'
/

create index G_C_E_INPATIENT_SN_IDX
	on GENERAL_CARER_ECORDS (INPATIENT_SN)
/

create table WORSE_PATIENT_CARE_RECORD
(
    INPATIENT_SN VARCHAR2(18) not null,
    INP_NO VARCHAR2(18),
    PATIENT_ID VARCHAR2(20),
    DOC_NO VARCHAR2(50) not null
        constraint WORSE_PATIENT_CARE_RECORD_PK
        primary key,
    NURSING_GRADE_CODE NUMBER(1),
    NURSING_TYPE_CODE NUMBER(1),
    ALLERGY_HISTORY VARCHAR2(1000),
    TEMPERATURE NUMBER(4,1),
    CARDIOTACH NUMBER(3),
    BREATH_FREQUENCY NUMBER(3),
    SYSTOLIC_PRESSURE NUMBER(3),
    DIASTOLIC_PRESSURE NUMBER(3),
    BLOOD_GLUCOSE_VALUE NUMBER(4,1),
    DIETARY_STATUS_CODE NUMBER(1),
    RESPIRATOR_MONITORING_ITEM VARCHAR2(20),
    NURSE_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    ALLERGY_HISTORY_FLAG VARCHAR2(5),
    GENERAL_NURSING_ID VARCHAR2(18),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table WORSE_PATIENT_CARE_RECORD is 'cda子集主表-病危（重）护理记录子集（WORSE_PATIENT_CARE_RECORD）'
/

comment on column WORSE_PATIENT_CARE_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column WORSE_PATIENT_CARE_RECORD.INP_NO is '住院号'
/

comment on column WORSE_PATIENT_CARE_RECORD.PATIENT_ID is '患者ID'
/

comment on column WORSE_PATIENT_CARE_RECORD.DOC_NO is '文档编号'
/

comment on column WORSE_PATIENT_CARE_RECORD.NURSING_GRADE_CODE is '护理等级代码'
/

comment on column WORSE_PATIENT_CARE_RECORD.NURSING_TYPE_CODE is '护理类型代码'
/

comment on column WORSE_PATIENT_CARE_RECORD.ALLERGY_HISTORY is '过敏史'
/

comment on column WORSE_PATIENT_CARE_RECORD.TEMPERATURE is '体温（℃）'
/

comment on column WORSE_PATIENT_CARE_RECORD.CARDIOTACH is '心率(次/min)'
/

comment on column WORSE_PATIENT_CARE_RECORD.BREATH_FREQUENCY is '呼吸频率（次/min)'
/

comment on column WORSE_PATIENT_CARE_RECORD.SYSTOLIC_PRESSURE is '收缩压(mmHg)'
/

comment on column WORSE_PATIENT_CARE_RECORD.DIASTOLIC_PRESSURE is '舒张压(mmHg)'
/

comment on column WORSE_PATIENT_CARE_RECORD.BLOOD_GLUCOSE_VALUE is '血糖检测值（mmol/L)'
/

comment on column WORSE_PATIENT_CARE_RECORD.DIETARY_STATUS_CODE is '饮食情况代码'
/

comment on column WORSE_PATIENT_CARE_RECORD.RESPIRATOR_MONITORING_ITEM is '呼吸机监护项目'
/

comment on column WORSE_PATIENT_CARE_RECORD.NURSE_SIGN is '护士签名'
/

comment on column WORSE_PATIENT_CARE_RECORD.SIGN_DATETIME is '签名日期时间'
/

comment on column WORSE_PATIENT_CARE_RECORD.ALLERGY_HISTORY_FLAG is '过敏史标志'
/

comment on column WORSE_PATIENT_CARE_RECORD.GENERAL_NURSING_ID is '护理记录唯一标识'
/

comment on column WORSE_PATIENT_CARE_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index W_P_C_R_INPATIENT_SN_IDX
	on WORSE_PATIENT_CARE_RECORD (INPATIENT_SN)
/

create table OPERATION_CARE_RECORD
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint OPERATION_CARE_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    ALLERGY_HISTORY_FLAG VARCHAR2(5),
    ALLERGY_HISTORY VARCHAR2(1000),
    SKIN_INSPECTION_DESCRIPTION VARCHAR2(1000),
    NURSING_GRADE_CODE VARCHAR2(1),
    NURSING_TYPE_CODE VARCHAR2(1),
    PREPARE_ITEM VARCHAR2(100),
    INTRAOPERAT_PATHOLOGICAL_MARK VARCHAR2(5),
    OPERATION_ITEM VARCHAR2(50),
    PREOPERATION_CHECK_FLAG VARCHAR2(5),
    CLOSEBEFORE_CHECK_FLAG VARCHAR2(5),
    CLOSEAFTER_CHECK_FLAG VARCHAR2(5),
    PATIENT_TRANSFER_CHECKITEM VARCHAR2(50),
    CIRCULATING_NURSE_SING VARCHAR2(50),
    INSTRUMENT_NURSE_SING VARCHAR2(50),
    HANDOVER_NURSE_SIGN VARCHAR2(50),
    TRANSPORTER_SIGN VARCHAR2(50),
    HANDOVER_DATETIME DATE,
    SIGN_DATETIME DATE,
    GENERAL_NURSING_ID VARCHAR2(18),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OPERATION_CARE_RECORD is 'cda子集主表-手术护理记录子集主表(OPERATION_CARE_RECORD)'
/

comment on column OPERATION_CARE_RECORD.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column OPERATION_CARE_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column OPERATION_CARE_RECORD.OUTP_NO is '门（急）诊号'
/

comment on column OPERATION_CARE_RECORD.INP_NO is '住院号'
/

comment on column OPERATION_CARE_RECORD.DOC_NO is '文档编号'
/

comment on column OPERATION_CARE_RECORD.PATIENT_ID is '患者ID'
/

comment on column OPERATION_CARE_RECORD.ALLERGY_HISTORY_FLAG is '过敏史标志'
/

comment on column OPERATION_CARE_RECORD.ALLERGY_HISTORY is '过敏史'
/

comment on column OPERATION_CARE_RECORD.SKIN_INSPECTION_DESCRIPTION is '皮肤检查描述'
/

comment on column OPERATION_CARE_RECORD.NURSING_GRADE_CODE is '护理等级代码'
/

comment on column OPERATION_CARE_RECORD.NURSING_TYPE_CODE is '护理类型代码'
/

comment on column OPERATION_CARE_RECORD.PREPARE_ITEM is '准备事项'
/

comment on column OPERATION_CARE_RECORD.INTRAOPERAT_PATHOLOGICAL_MARK is '术中病理标志'
/

comment on column OPERATION_CARE_RECORD.OPERATION_ITEM is '术中所用物品名称'
/

comment on column OPERATION_CARE_RECORD.PREOPERATION_CHECK_FLAG is '术前清点标志'
/

comment on column OPERATION_CARE_RECORD.CLOSEBEFORE_CHECK_FLAG is '关前核对标志'
/

comment on column OPERATION_CARE_RECORD.CLOSEAFTER_CHECK_FLAG is '关后核对标志'
/

comment on column OPERATION_CARE_RECORD.PATIENT_TRANSFER_CHECKITEM is '病人交接核对项目'
/

comment on column OPERATION_CARE_RECORD.CIRCULATING_NURSE_SING is '巡台护士签名'
/

comment on column OPERATION_CARE_RECORD.INSTRUMENT_NURSE_SING is '器械护士签名'
/

comment on column OPERATION_CARE_RECORD.HANDOVER_NURSE_SIGN is '交接护士签名'
/

comment on column OPERATION_CARE_RECORD.TRANSPORTER_SIGN is '转运者签名'
/

comment on column OPERATION_CARE_RECORD.HANDOVER_DATETIME is '交接日期时间'
/

comment on column OPERATION_CARE_RECORD.SIGN_DATETIME is '签名日期时间'
/

comment on column OPERATION_CARE_RECORD.GENERAL_NURSING_ID is '护理记录唯一标识'
/

comment on column OPERATION_CARE_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index O_C_R_OUTPATIENT_SN_IDX
	on OPERATION_CARE_RECORD (OUTPATIENT_SN)
/

create index O_C_R_INPATIENT_SN_IDX
	on OPERATION_CARE_RECORD (INPATIENT_SN)
/

create table OPER_NURS_OBSER
(
    OPER_NURS_OBSER_ID VARCHAR2(18) not null
        constraint OPER_NURS_OBSER_PK
        primary key,
    GENERAL_NURSING_ID VARCHAR2(18) not null,
    NURSING_OBSER_PROJECT_NAME VARCHAR2(30),
    NURSING_OBSERVATION_RESULT VARCHAR2(1000),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OPER_NURS_OBSER is 'cda子集子表-手术护理观察记录子表(OPER_NURS_OBSER)'
/

comment on column OPER_NURS_OBSER.OPER_NURS_OBSER_ID is '手术护理观察ID'
/

comment on column OPER_NURS_OBSER.GENERAL_NURSING_ID is '护理记录唯一标识'
/

comment on column OPER_NURS_OBSER.NURSING_OBSER_PROJECT_NAME is '护理观察项目名称'
/

comment on column OPER_NURS_OBSER.NURSING_OBSERVATION_RESULT is '护理观察结果'
/

comment on column OPER_NURS_OBSER.LAST_MODIFIC_TIME is '最后修改时间'
/

create index OPER_NURS_OBSER_G_N_ID_IDX
	on OPER_NURS_OBSER (GENERAL_NURSING_ID)
/

create table OPER_NURS_OPER
(
    OPER_NURS_OPER_ID VARCHAR2(18) not null
        constraint OPER_NURS_OPER_PK
        primary key,
    GENERAL_NURSING_ID VARCHAR2(18) not null,
    NURSING_OPERATION_ITEM VARCHAR2(100),
    NURSING_OPERATION_NAME VARCHAR2(100),
    NURSING_OPERATION_RESULT VARCHAR2(1000),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table OPER_NURS_OPER is 'cda子集子表-手术护理操作记录子表(OPER_NURS_OPER)'
/

comment on column OPER_NURS_OPER.OPER_NURS_OPER_ID is '手术护理操作ID'
/

comment on column OPER_NURS_OPER.GENERAL_NURSING_ID is '护理记录唯一标识'
/

comment on column OPER_NURS_OPER.NURSING_OPERATION_ITEM is '护理操作项目类目名称'
/

comment on column OPER_NURS_OPER.NURSING_OPERATION_NAME is '护理操作名称'
/

comment on column OPER_NURS_OPER.NURSING_OPERATION_RESULT is '护理操作结果'
/

comment on column OPER_NURS_OPER.LAST_MODIFIC_TIME is '最后修改时间'
/

create index OPER_NURS_OPER_G_N_ID_IDX
	on OPER_NURS_OPER (GENERAL_NURSING_ID)
/

create table VISITS_REC_BEF_ANESTHESIA
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint VISITS_REC_BEF_ANESTHESIA_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    PREOPERATIVE_COMORBIDITY VARCHAR2(100),
    BRIEF_HISTORY VARCHAR2(100),
    ALLERGY_HISTORY VARCHAR2(1000),
    ECG_RESULTS VARCHAR2(100),
    XLINE_RESULT VARCHAR2(100),
    CT_RESULT VARCHAR2(100),
    B_INSPECTION VARCHAR2(100),
    MRI_RESULT VARCHAR2(1000),
    PULMONARY_FUNCTION_RESULTS VARCHAR2(1000),
    BLOOD_ROUT_RESULT VARCHAR2(1000),
    URINE_TEST_RESULTS VARCHAR2(100),
    COAGULATION_TEST_RESULTS VARCHAR2(100),
    LIVER_FUNCTION_RESULT VARCHAR2(100),
    BLOODGAS_ANALYSIS_TEST_RESULT VARCHAR2(1000),
    GENERALHEALTH_CHECK_RESULT VARCHAR2(1000),
    MENTAL_STATE_FLAG VARCHAR2(5),
    CARDIAC_AUSCULTATION_RESULT VARCHAR2(100),
    LUNG_AUSCULTATION_RESULT VARCHAR2(100),
    LIMBS_TEST_RESULT VARCHAR2(1000),
    SPINAL_RESULT VARCHAR2(1000),
    ABDOMINAL_EXAM_RESULT VARCHAR2(1000),
    TRACHEA_TEST_RESULT VARCHAR2(100),
    DENTAL_EXAMINATION_RESULT VARCHAR2(100),
    ANESTHESIA_DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    OPER_REQ_SN VARCHAR2(20),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table VISITS_REC_BEF_ANESTHESIA is 'cda子集主表-麻醉术前访视记录子集主表(VISITS_REC_BEF_ANESTHESIA)'
/

comment on column VISITS_REC_BEF_ANESTHESIA.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column VISITS_REC_BEF_ANESTHESIA.INPATIENT_SN is '住院流水号'
/

comment on column VISITS_REC_BEF_ANESTHESIA.DOC_NO is '文档编号'
/

comment on column VISITS_REC_BEF_ANESTHESIA.PATIENT_ID is '患者ID'
/

comment on column VISITS_REC_BEF_ANESTHESIA.OUTP_NO is '门（急）诊号'
/

comment on column VISITS_REC_BEF_ANESTHESIA.INP_NO is '住院号'
/

comment on column VISITS_REC_BEF_ANESTHESIA.PREOPERATIVE_COMORBIDITY is '术前合并疾病'
/

comment on column VISITS_REC_BEF_ANESTHESIA.BRIEF_HISTORY is '简要病史'
/

comment on column VISITS_REC_BEF_ANESTHESIA.ALLERGY_HISTORY is '过敏史'
/

comment on column VISITS_REC_BEF_ANESTHESIA.ECG_RESULTS is '心电图检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.XLINE_RESULT is '胸部X线检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.CT_RESULT is 'CT检查结采'
/

comment on column VISITS_REC_BEF_ANESTHESIA.B_INSPECTION is 'B超检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.MRI_RESULT is 'MRI超检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.PULMONARY_FUNCTION_RESULTS is '肺功能检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.BLOOD_ROUT_RESULT is '血常规检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.URINE_TEST_RESULTS is '尿常规检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.COAGULATION_TEST_RESULTS is '凝血功能检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.LIVER_FUNCTION_RESULT is '肝功能检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.BLOODGAS_ANALYSIS_TEST_RESULT is '血气分析检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.GENERALHEALTH_CHECK_RESULT is '一般状况检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.MENTAL_STATE_FLAG is '精神状态正常标志'
/

comment on column VISITS_REC_BEF_ANESTHESIA.CARDIAC_AUSCULTATION_RESULT is '心脏听诊结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.LUNG_AUSCULTATION_RESULT is '肺部听诊结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.LIMBS_TEST_RESULT is '四肢检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.SPINAL_RESULT is '脊柱检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.ABDOMINAL_EXAM_RESULT is '腹部检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.TRACHEA_TEST_RESULT is '气管检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.DENTAL_EXAMINATION_RESULT is '牙齿检查结果'
/

comment on column VISITS_REC_BEF_ANESTHESIA.ANESTHESIA_DOCTOR_SIGN is '麻醉医师签名'
/

comment on column VISITS_REC_BEF_ANESTHESIA.SIGN_DATETIME is '签名日期时间'
/

comment on column VISITS_REC_BEF_ANESTHESIA.OPER_REQ_SN is '电子申请单编号（手术申请单号）'
/

comment on column VISITS_REC_BEF_ANESTHESIA.LAST_MODIFIC_TIME is '最后修改时间'
/

create index V_R_B_A_OUTPATIENT_SN_IDX
	on VISITS_REC_BEF_ANESTHESIA (OUTPATIENT_SN)
/

create index V_R_B_A_INPATIENT_SN_IDX
	on VISITS_REC_BEF_ANESTHESIA (INPATIENT_SN)
/

create table ANESTHESIA_RECORDS
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint ANESTHESIA_RECORDS_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    DIAGNOSE_DESC VARCHAR2(2000),
    BLOOD_TRANSFERED_DATETIME DATE,
    BLOOD_TRANSFUSION_VARIETY_CODE NUMBER(2),
    BLOOD_TRANSFERED_VALUE NUMBER(4),
    BLOOD_VOLUME_UNIT VARCHAR2(10),
    BLOODTRANSFERED_REACTION_CODE VARCHAR2(5),
    OPERATE_INFUSION_ITEM VARCHAR2(50),
    OPERATION_BLEEDING NUMBER(5),
    PATIENT_WHEREABOUTS_CODE VARCHAR2(1),
    ANESTHESIA_DOCTOR_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    OPER_REQ_SN VARCHAR2(20),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table ANESTHESIA_RECORDS is 'cda子集主表-麻醉记录子集主表(ANESTHESIA_RECORDS)'
/

comment on column ANESTHESIA_RECORDS.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column ANESTHESIA_RECORDS.INPATIENT_SN is '住院流水号'
/

comment on column ANESTHESIA_RECORDS.DOC_NO is '文档编号'
/

comment on column ANESTHESIA_RECORDS.PATIENT_ID is '患者ID'
/

comment on column ANESTHESIA_RECORDS.OUTP_NO is '门（急）诊号'
/

comment on column ANESTHESIA_RECORDS.INP_NO is '住院号'
/

comment on column ANESTHESIA_RECORDS.DIAGNOSE_DESC is '诊疗过程描述'
/

comment on column ANESTHESIA_RECORDS.BLOOD_TRANSFERED_DATETIME is '输血日期时间'
/

comment on column ANESTHESIA_RECORDS.BLOOD_TRANSFUSION_VARIETY_CODE is '输血品种代码'
/

comment on column ANESTHESIA_RECORDS.BLOOD_TRANSFERED_VALUE is '输血量（mL)'
/

comment on column ANESTHESIA_RECORDS.BLOOD_VOLUME_UNIT is '输血量计量单位'
/

comment on column ANESTHESIA_RECORDS.BLOODTRANSFERED_REACTION_CODE is '输血反应标志'
/

comment on column ANESTHESIA_RECORDS.OPERATE_INFUSION_ITEM is '术中输液项目'
/

comment on column ANESTHESIA_RECORDS.OPERATION_BLEEDING is '出血量（mL)'
/

comment on column ANESTHESIA_RECORDS.PATIENT_WHEREABOUTS_CODE is '患者去向代码'
/

comment on column ANESTHESIA_RECORDS.ANESTHESIA_DOCTOR_SIGN is '麻醉医师签名'
/

comment on column ANESTHESIA_RECORDS.SIGN_DATETIME is '签名日期时间'
/

comment on column ANESTHESIA_RECORDS.OPER_REQ_SN is '电子申请单编号（手术申请单编号）'
/

comment on column ANESTHESIA_RECORDS.LAST_MODIFIC_TIME is '最后修改时间'
/

create index A_R_OUTPATIENT_SN
	on ANESTHESIA_RECORDS (OUTPATIENT_SN)
/

create index A_RS_INPATIENT_SN
	on ANESTHESIA_RECORDS (INPATIENT_SN)
/

create table SURVEY_RECORD
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint SURVEY_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    APPLY_NO VARCHAR2(20),
    EXAMINATION_APPLY_ORGAN VARCHAR2(70),
    EXAMINATION_APPLY_ROOM VARCHAR2(50),
    INSPECTION_INSPECTION_NO VARCHAR2(20),
    INSPECTION_METHOD_NAME VARCHAR2(100),
    INSPECTION_TYPE VARCHAR2(100),
    INSPECTION_ITEM_CODE VARCHAR2(20),
    INSPECTION_ENGINEER VARCHAR2(50),
    INSPECTION_DOCTOR VARCHAR2(50),
    INSPECTION_DATE DATE,
    INSPECTION_REPORT_NO VARCHAR2(20),
    INSPECTION_REPORT_ORGAN VARCHAR2(70),
    INSPECTION_REPORT_ROOM VARCHAR2(50),
    INSPECTION_REPORT_RESULT VARCHAR2(200),
    INSPECTION_REPORT_REMARKS VARCHAR2(100),
    INSPECTION_REPORT_DATE DATE,
    REPORT_DOCTOR VARCHAR2(50),
    REPORTAUDIT VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table SURVEY_RECORD is 'cda子集主表-检验记录子集主表(SURVEY_RECORD)'
/

comment on column SURVEY_RECORD.OUTPATIENT_SN is '门（急）诊就诊流水号'
/

comment on column SURVEY_RECORD.INPATIENT_SN is '住院就诊流水号'
/

comment on column SURVEY_RECORD.OUTP_NO is '门（急）诊号'
/

comment on column SURVEY_RECORD.INP_NO is '住院号'
/

comment on column SURVEY_RECORD.DOC_NO is '文档编号'
/

comment on column SURVEY_RECORD.PATIENT_ID is '患者ID'
/

comment on column SURVEY_RECORD.APPLY_NO is '电子申请单编号'
/

comment on column SURVEY_RECORD.EXAMINATION_APPLY_ORGAN is '检验申请机构名称'
/

comment on column SURVEY_RECORD.EXAMINATION_APPLY_ROOM is '检验申请科室'
/

comment on column SURVEY_RECORD.INSPECTION_INSPECTION_NO is '检验标本号'
/

comment on column SURVEY_RECORD.INSPECTION_METHOD_NAME is '检验方法名称'
/

comment on column SURVEY_RECORD.INSPECTION_TYPE is '检验类别'
/

comment on column SURVEY_RECORD.INSPECTION_ITEM_CODE is '检验项目代码'
/

comment on column SURVEY_RECORD.INSPECTION_ENGINEER is '检验技师签名'
/

comment on column SURVEY_RECORD.INSPECTION_DOCTOR is '检验医师签名'
/

comment on column SURVEY_RECORD.INSPECTION_DATE is '检验日期'
/

comment on column SURVEY_RECORD.INSPECTION_REPORT_NO is '检验报告单编号'
/

comment on column SURVEY_RECORD.INSPECTION_REPORT_ORGAN is '检验报告机构名称'
/

comment on column SURVEY_RECORD.INSPECTION_REPORT_ROOM is '检验报告科室'
/

comment on column SURVEY_RECORD.INSPECTION_REPORT_RESULT is '检验报告结果'
/

comment on column SURVEY_RECORD.INSPECTION_REPORT_REMARKS is '检验报告备注'
/

comment on column SURVEY_RECORD.INSPECTION_REPORT_DATE is '检验报告日期'
/

comment on column SURVEY_RECORD.REPORT_DOCTOR is '报告医师签名'
/

comment on column SURVEY_RECORD.REPORTAUDIT is '审核医师签名'
/

comment on column SURVEY_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index S_R_OUTPATIENT_SN_IDX
	on SURVEY_RECORD (OUTPATIENT_SN)
/

create index S_R_INPATIENT_SN_ID
	on SURVEY_RECORD (INPATIENT_SN)
/

create table SURVEY_RECORD_DETAIL
(
    REP_DETAIL_ID VARCHAR2(100) not null
        constraint SURVEY_RECORD_DETAIL_PK
        primary key,
    INSPECTION_REPORT_NO VARCHAR2(20) not null,
    EXAM_ITEM_CODE VARCHAR2(20),
    INSPECTION_RESULT_CODE VARCHAR2(1),
    INSPECTION_QUANTIFY_RESULT NUMBER(14,4),
    EXAMINATION_QUANTIFY_UNIT VARCHAR2(20),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table SURVEY_RECORD_DETAIL is 'cda子集子表-检验记录子集明细表(SURVEY_RECORD_DETAIL)'
/

comment on column SURVEY_RECORD_DETAIL.REP_DETAIL_ID is '检验报告细项ID'
/

comment on column SURVEY_RECORD_DETAIL.INSPECTION_REPORT_NO is '检验报告单编号'
/

comment on column SURVEY_RECORD_DETAIL.EXAM_ITEM_CODE is '检验报告细项项目代码'
/

comment on column SURVEY_RECORD_DETAIL.INSPECTION_RESULT_CODE is '检验结果代码'
/

comment on column SURVEY_RECORD_DETAIL.INSPECTION_QUANTIFY_RESULT is '检验定量结果'
/

comment on column SURVEY_RECORD_DETAIL.EXAMINATION_QUANTIFY_UNIT is '检验定量结果计量单位'
/

comment on column SURVEY_RECORD_DETAIL.LAST_MODIFIC_TIME is '最后修改时间'
/

create index S_R_D_INSPECTION_REPORT_NO_IDX
	on SURVEY_RECORD_DETAIL (INSPECTION_REPORT_NO)
/

create table INSPECTION_RECORD
(
    DOC_NO VARCHAR2(50) not null
        constraint INSPECTION_RECORD_PK
        primary key,
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    OPER_REQ_SN VARCHAR2(18),
    PATIENT_ID VARCHAR2(20),
    APPLY_NO VARCHAR2(20),
    EXAMINATION_APPLY_ORGAN VARCHAR2(70),
    EXAMINATION_APPLY_ROOM VARCHAR2(50),
    CHIEF_COMPLAINT VARCHAR2(100),
    START_SYMPTOMS_DATE DATE,
    STOP_SYMPTOMS_DATE DATE,
    SYMPTOM_DESC VARCHAR2(1000),
    SPECIAL_EXAMINATION_FLAG VARCHAR2(5),
    INSPECTION_INSPECTION_NO VARCHAR2(20),
    DIAG_DESC VARCHAR2(2000),
    EXAMINATION_ITEM_CODE VARCHAR2(20),
    INSPECTION_METHOD_NAME VARCHAR2(100),
    EXAMINATION_TYPE VARCHAR2(100),
    EXAMINATION_RESULT_CODE VARCHAR2(1),
    INSPECTION_QUANTIFY_RESULT NUMBER(14,4),
    EXAMINATION_QUTIFY_UNIT VARCHAR2(20),
    INSPECT_ENGINEER_NAME VARCHAR2(50),
    EXAMINATION_DOCTOR VARCHAR2(50),
    EXAMINATION_DATE DATE,
    EXAMINATION_REPORT_NO VARCHAR2(20),
    EXAMINATION_REPORT_ORGAN VARCHAR2(70),
    EXAMINATION_REPORT_ROOM VARCHAR2(50),
    OBJECTIVE_EXAMINATION_RESULT VARCHAR2(200),
    SUBJECTIVE_EXAMINATION_RESULT VARCHAR2(200),
    EXAMINATION_RT_REMARKS VARCHAR2(100),
    EXAMINATION_RT_DATE DATE,
    REPORT_DOCTOR VARCHAR2(50),
    REPORTAUDIT VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table INSPECTION_RECORD is 'cda子集主表-检查记录主表（INSPECTION_RECORD）'
/

comment on column INSPECTION_RECORD.DOC_NO is '文档编号'
/

comment on column INSPECTION_RECORD.OUTPATIENT_SN is '门（急）诊就诊流水号'
/

comment on column INSPECTION_RECORD.INPATIENT_SN is '住院就诊流水号'
/

comment on column INSPECTION_RECORD.OUTP_NO is '门（急）诊号'
/

comment on column INSPECTION_RECORD.INP_NO is '住院号'
/

comment on column INSPECTION_RECORD.OPER_REQ_SN is '手术申请单号'
/

comment on column INSPECTION_RECORD.PATIENT_ID is '患者ID'
/

comment on column INSPECTION_RECORD.APPLY_NO is '电子申请单编号'
/

comment on column INSPECTION_RECORD.EXAMINATION_APPLY_ORGAN is '检查申请机构名称'
/

comment on column INSPECTION_RECORD.EXAMINATION_APPLY_ROOM is '检查申请科室'
/

comment on column INSPECTION_RECORD.CHIEF_COMPLAINT is '主诉'
/

comment on column INSPECTION_RECORD.START_SYMPTOMS_DATE is '症状开始日期时间'
/

comment on column INSPECTION_RECORD.STOP_SYMPTOMS_DATE is '症状停止日期时间'
/

comment on column INSPECTION_RECORD.SYMPTOM_DESC is '症状描述'
/

comment on column INSPECTION_RECORD.SPECIAL_EXAMINATION_FLAG is '特殊检查标志'
/

comment on column INSPECTION_RECORD.INSPECTION_INSPECTION_NO is '检查标本号'
/

comment on column INSPECTION_RECORD.DIAG_DESC is '诊疗过程描述'
/

comment on column INSPECTION_RECORD.EXAMINATION_ITEM_CODE is '检查项目代码'
/

comment on column INSPECTION_RECORD.INSPECTION_METHOD_NAME is '检查方法名称'
/

comment on column INSPECTION_RECORD.EXAMINATION_TYPE is '检查类别'
/

comment on column INSPECTION_RECORD.EXAMINATION_RESULT_CODE is '检查结果代码'
/

comment on column INSPECTION_RECORD.INSPECTION_QUANTIFY_RESULT is '检查定量结果'
/

comment on column INSPECTION_RECORD.EXAMINATION_QUTIFY_UNIT is '检查定量结果计量单位'
/

comment on column INSPECTION_RECORD.INSPECT_ENGINEER_NAME is '检查技师签名'
/

comment on column INSPECTION_RECORD.EXAMINATION_DOCTOR is '检查医师签名'
/

comment on column INSPECTION_RECORD.EXAMINATION_DATE is '检查日期'
/

comment on column INSPECTION_RECORD.EXAMINATION_REPORT_NO is '检查报告单编号'
/

comment on column INSPECTION_RECORD.EXAMINATION_REPORT_ORGAN is '检查报告机构名称'
/

comment on column INSPECTION_RECORD.EXAMINATION_REPORT_ROOM is '检查报告科室'
/

comment on column INSPECTION_RECORD.OBJECTIVE_EXAMINATION_RESULT is '检查报告结果-客观所见'
/

comment on column INSPECTION_RECORD.SUBJECTIVE_EXAMINATION_RESULT is '检查报告结果-主观提示'
/

comment on column INSPECTION_RECORD.EXAMINATION_RT_REMARKS is '检查报告备注'
/

comment on column INSPECTION_RECORD.EXAMINATION_RT_DATE is '检查报告日期'
/

comment on column INSPECTION_RECORD.REPORT_DOCTOR is '报告医师签名'
/

comment on column INSPECTION_RECORD.REPORTAUDIT is '审核医师签名'
/

comment on column INSPECTION_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index I_R_OUTPATIENT_SN_IDX
	on INSPECTION_RECORD (OUTPATIENT_SN)
/

create index I_R_INPATIENT_SN_IDX
	on INSPECTION_RECORD (INPATIENT_SN)
/

create table TREATMENT_RECORD
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint TREATMENT_RECORD_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    OUTP_NO VARCHAR2(18),
    INP_NO VARCHAR2(18),
    ELECTRONIC_APPLY_NO VARCHAR2(20),
    DISPOSE_OPINION VARCHAR2(2000),
    INCASIVE_OPERTOR_CODE VARCHAR2(5),
    ALLERGY_HISTORY_TYPE VARCHAR2(5),
    ALLERGY_HISTORY VARCHAR2(1000),
    ADVICE_REMAKR VARCHAR2(100),
    AFTER_TREAT_PLAN VARCHAR2(1000),
    VISIT_WAY_CODE VARCHAR2(1),
    FOLLOWUP_DATE DATE,
    VISIT_PERIODIC_PROPOSAL_CODE VARCHAR2(2),
    ADVICE_EXEC_SIGN VARCHAR2(50),
    SIGN_DATETIME DATE,
    DRUG_NAME VARCHAR2(50),
    DRUG_USAGE VARCHAR2(100),
    TCD_TYPE_CODE VARCHAR2(1),
    DRUG_USAGE_FRE VARCHAR2(2),
    DRUG_DOSAGE_CODE VARCHAR2(2),
    DRUG_DOSAGE_UNIT VARCHAR2(6),
    DRUG_USAGE_DOSAGE NUMBER(5,2),
    DRUG_USAGE_TOTAL NUMBER(12,2),
    ROUTE_ADMINISTRATION VARCHAR2(3),
    OPERTOR_CODE VARCHAR2(20),
    OPTERTOR_NAME VARCHAR2(80),
    OPERTOR_TARGET VARCHAR2(50),
    INTER_NAME VARCHAR2(100),
    OPERATOR_DESC VARCHAR2(2000),
    OPERATOR_NUM NUMBER(3),
    OPERATOR_DATE DATE,
    LAST_MODIFIC_TIME DATE
)
    /

comment on table TREATMENT_RECORD is 'cda子集主表-治疗记录子集主表(TREATMENT_RECORD)'
/

comment on column TREATMENT_RECORD.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column TREATMENT_RECORD.INPATIENT_SN is '住院流水号'
/

comment on column TREATMENT_RECORD.DOC_NO is '文档编号'
/

comment on column TREATMENT_RECORD.PATIENT_ID is '患者ID'
/

comment on column TREATMENT_RECORD.OUTP_NO is '门（急）诊号'
/

comment on column TREATMENT_RECORD.INP_NO is '住院号'
/

comment on column TREATMENT_RECORD.ELECTRONIC_APPLY_NO is '电子申请单编号'
/

comment on column TREATMENT_RECORD.DISPOSE_OPINION is '处理及指导意见'
/

comment on column TREATMENT_RECORD.INCASIVE_OPERTOR_CODE is '有创诊疗操作标志'
/

comment on column TREATMENT_RECORD.ALLERGY_HISTORY_TYPE is '过敏史标志'
/

comment on column TREATMENT_RECORD.ALLERGY_HISTORY is '过敏史'
/

comment on column TREATMENT_RECORD.ADVICE_REMAKR is '医嘱使用备注'
/

comment on column TREATMENT_RECORD.AFTER_TREAT_PLAN is '今后治疗方案'
/

comment on column TREATMENT_RECORD.VISIT_WAY_CODE is '随访方式代码'
/

comment on column TREATMENT_RECORD.FOLLOWUP_DATE is '随访日期'
/

comment on column TREATMENT_RECORD.VISIT_PERIODIC_PROPOSAL_CODE is '随访周期建议代码'
/

comment on column TREATMENT_RECORD.ADVICE_EXEC_SIGN is '医嘱执行者签名'
/

comment on column TREATMENT_RECORD.SIGN_DATETIME is '签名日期时间'
/

comment on column TREATMENT_RECORD.DRUG_NAME is '药物名称'
/

comment on column TREATMENT_RECORD.DRUG_USAGE is '药物用法'
/

comment on column TREATMENT_RECORD.TCD_TYPE_CODE is '中药使用类别代码'
/

comment on column TREATMENT_RECORD.DRUG_USAGE_FRE is '药物使用频次代码'
/

comment on column TREATMENT_RECORD.DRUG_DOSAGE_CODE is '药物剂型代码'
/

comment on column TREATMENT_RECORD.DRUG_DOSAGE_UNIT is '药物使用剂量单位'
/

comment on column TREATMENT_RECORD.DRUG_USAGE_DOSAGE is '药物使用次剂量'
/

comment on column TREATMENT_RECORD.DRUG_USAGE_TOTAL is '药物使用总剂量'
/

comment on column TREATMENT_RECORD.ROUTE_ADMINISTRATION is '用药途径代码'
/

comment on column TREATMENT_RECORD.OPERTOR_CODE is '操作编码'
/

comment on column TREATMENT_RECORD.OPTERTOR_NAME is '操作名称'
/

comment on column TREATMENT_RECORD.OPERTOR_TARGET is '操作目标部位名称'
/

comment on column TREATMENT_RECORD.INTER_NAME is '介入物名称'
/

comment on column TREATMENT_RECORD.OPERATOR_DESC is '操作方法描述'
/

comment on column TREATMENT_RECORD.OPERATOR_NUM is '操作次数'
/

comment on column TREATMENT_RECORD.OPERATOR_DATE is '操作日期时间'
/

comment on column TREATMENT_RECORD.LAST_MODIFIC_TIME is '最后修改时间'
/

create index T_R_INPATIENT_SN_ID
	on TREATMENT_RECORD (INPATIENT_SN)
/

create index T_R_OUTPATIENT_SN_ID
	on TREATMENT_RECORD (OUTPATIENT_SN)
/

create table DIR_EFP_ROREG_INFO
(
    OUTPATIENT_SN VARCHAR2(18),
    INPATIENT_SN VARCHAR2(18),
    INP_NO VARCHAR2(18),
    OUTP_NO VARCHAR2(18),
    DOC_NO VARCHAR2(50) not null
        constraint DIR_EFP_ROREG_INFO_PK
        primary key,
    PATIENT_ID VARCHAR2(20),
    HEALTH_CARD_NO VARCHAR2(18),
    ALLERGY_HISTORY VARCHAR2(1000),
    DISEASE_HISTORY VARCHAR2(1000),
    OPERATION_HISTORY VARCHAR2(1000),
    REFERRAL_DATE DATE,
    REFERRAL_REASON VARCHAR2(100),
    REFERRAL_DESC VARCHAR2(2000),
    REFERRAL_DOCTOR_NAME VARCHAR2(50),
    DIAGNOSIS_DATE DATE,
    ORG_NAME VARCHAR2(70),
    SYMPTOMS_DESC VARCHAR2(1000),
    MAIN_TREAT_MEASURES VARCHAR2(1000),
    AUXILIARYEXAMI_RESULT VARCHAR2(1000),
    ASSESSMENT_PLAN VARCHAR2(1000),
    DISPOSAL_PLAN VARCHAR2(2000),
    HEALTH_ASSESSMENT_DESC VARCHAR2(2000),
    MEASURES_GUIDE_DESC VARCHAR2(100),
    RECEIV_MECHANOUT_CODE VARCHAR2(4),
    INSTI_DEPART_TRANSO_NAME VARCHAR2(50),
    RECEIV_MECHAN_IN VARCHAR2(70),
    INSTI_DEPART_TRANSI_NAME VARCHAR2(50),
    LAST_MODIFIC_TIME DATE
)
    /

comment on table DIR_EFP_ROREG_INFO is 'cda子集主表-转诊(院)记录子集主表(DIR_EFP_ROREG_INFO)'
/

comment on column DIR_EFP_ROREG_INFO.OUTPATIENT_SN is '门（急）诊流水号'
/

comment on column DIR_EFP_ROREG_INFO.INPATIENT_SN is '住院流水号'
/

comment on column DIR_EFP_ROREG_INFO.INP_NO is '住院号'
/

comment on column DIR_EFP_ROREG_INFO.OUTP_NO is '门诊号'
/

comment on column DIR_EFP_ROREG_INFO.DOC_NO is '文档编号'
/

comment on column DIR_EFP_ROREG_INFO.PATIENT_ID is '患者ID'
/

comment on column DIR_EFP_ROREG_INFO.HEALTH_CARD_NO is '居民健康卡号'
/

comment on column DIR_EFP_ROREG_INFO.ALLERGY_HISTORY is '过敏史'
/

comment on column DIR_EFP_ROREG_INFO.DISEASE_HISTORY is '疾病史（含外伤）'
/

comment on column DIR_EFP_ROREG_INFO.OPERATION_HISTORY is '手术史'
/

comment on column DIR_EFP_ROREG_INFO.REFERRAL_DATE is '转诊（院）日期'
/

comment on column DIR_EFP_ROREG_INFO.REFERRAL_REASON is '转诊原因'
/

comment on column DIR_EFP_ROREG_INFO.REFERRAL_DESC is '转诊记录'
/

comment on column DIR_EFP_ROREG_INFO.REFERRAL_DOCTOR_NAME is '转诊医师姓名'
/

comment on column DIR_EFP_ROREG_INFO.DIAGNOSIS_DATE is '诊断日期'
/

comment on column DIR_EFP_ROREG_INFO.ORG_NAME is '诊断机构名称'
/

comment on column DIR_EFP_ROREG_INFO.SYMPTOMS_DESC is '相关症状'
/

comment on column DIR_EFP_ROREG_INFO.MAIN_TREAT_MEASURES is '主要治疗措施'
/

comment on column DIR_EFP_ROREG_INFO.AUXILIARYEXAMI_RESULT is '辅助检查结果'
/

comment on column DIR_EFP_ROREG_INFO.ASSESSMENT_PLAN is '治疗方案'
/

comment on column DIR_EFP_ROREG_INFO.DISPOSAL_PLAN is '处置计划'
/

comment on column DIR_EFP_ROREG_INFO.HEALTH_ASSESSMENT_DESC is '健康问题评估'
/

comment on column DIR_EFP_ROREG_INFO.MEASURES_GUIDE_DESC is '康复措施指导'
/

comment on column DIR_EFP_ROREG_INFO.RECEIV_MECHANOUT_CODE is '转出医疗机构代码'
/

comment on column DIR_EFP_ROREG_INFO.INSTI_DEPART_TRANSO_NAME is '转出医疗机构科室名称'
/

comment on column DIR_EFP_ROREG_INFO.RECEIV_MECHAN_IN is '转入医疗机构名称'
/

comment on column DIR_EFP_ROREG_INFO.INSTI_DEPART_TRANSI_NAME is '转入医疗机构科室名称'
/

comment on column DIR_EFP_ROREG_INFO.LAST_MODIFIC_TIME is '最后修改时间'
/

create index D_E_R_I_OUTPATIENT_SN_IDX
	on DIR_EFP_ROREG_INFO (OUTPATIENT_SN)
/

create index D_E_R_I_INPATIENT_SN_IDX
	on DIR_EFP_ROREG_INFO (INPATIENT_SN)
/

