/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @version 1.0
 * @author: TheFei
 * @Date: 2020-06-22
 * @Time: 14:35
 */

/*

public enum CdaTempEnum
{

    */
/*
     * ﻿病历概要
     *//*

    C0001(63, "C0001", "﻿病历概要", "EMR_BASICPATIENT,EMR_BASICHEALTH,EMR_HEALTHEVENTS,EMR_MEDICALBILL", "OUTP_NO", "INP_NO"),
    */
/*
     * 门(急)诊病历
     *//*

    C0002(64, "C0002", "门(急)诊病历", "OUTPATIENT_EMERGENCY_RECORDS", "OUTP_NO", StringUtils.EMPTY),
    */
/*
     * 急诊留观病历
     *//*

    C0003(65, "C0003", "急诊留观病历", "EMERGENCY_MEDICAL_RECORDS", "OUTP_NO", StringUtils.EMPTY),
    */
/*
     * 西药处方
     *//*

    C0004(66, "C0004", "西药处方", "PRESCRIPTION_WEST", "OUTP_NO", StringUtils.EMPTY),
    */
/*
     * 中药处方
     *//*

    C0005(67, "C0005", "中药处方", "PRESCRIPTION_CHINE", "OUTP_NO", StringUtils.EMPTY),
    */
/*
     * 检查记录
     *//*

    C0006(68, "C0006", "检查记录", "INSPECTION_RECORD", "OUTP_NO", "INP_NO"),
    */
/*
     * 检验记录
     *//*

    C0007(69, "C0007", "检验记录", "SURVEY_RECORD", "OUTP_NO", "INP_NO"),
    */
/*
     * 治疗记录
     *//*

    C0008(70, "C0008", "治疗记录", "TREATMENT_RECORD", "OUTP_NO", "INP_NO"),
    */
/*
     * 一般手术记录
     *//*

    C0009(71, "C0009", "一般手术记录", "GENERAL_OPERATION_RECORDS", "OUTP_NO", "INP_NO"),
    */
/*
     * 麻醉术前访视记录
     *//*

    C0010(72, "C0010", "麻醉术前访视记录", "VISITS_REC_BEF_ANESTHESIA", "OUTP_NO", "INP_NO"),
    */
/*
     * 麻醉记录
     *//*

    C0011(73, "C0011", "麻醉记录", "ANESTHESIA_RECORDS", "OUTP_NO", "INP_NO"),
    */
/*
     * 麻醉术后访视记录
     *//*

    C0012(74, "C0012", "麻醉术后访视记录", "VISITS_REC_AFT_ANESTHESIA", "OUTP_NO", "INP_NO"),
    */
/*
     * 输血记录
     *//*

    C0013(75, "C0013", "输血记录", "TRANSFUSION_RECORD", "OUTP_NO", "INP_NO"),
    */
/*
     * 待产记录
     *//*

    C0014(76, "C0014", "待产记录", "EXPECTANT_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 阴道分娩记录
     *//*

    C0015(77, "C0015", "阴道分娩记录", "VBNC_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 言剖产记录
     *//*

    C0016(78, "C0016", "言剖产记录", "CAESAREAN_SECTION_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 一般护理记录
     *//*

    C0017(79, "C0017", "一般护理记录", "GENERAL_CARER_ECORDS", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 病重(病危)护理记录
     *//*

    C0018(80, "C0018", "病重(病危)护理记录", "WORSE_PATIENT_CARE_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 手术护理记录
     *//*

    C0019(81, "C0019", "手术护理记录", "OPERATION_CARE_RECORD", "OUTP_NO", "INP_NO"),
    */
/*
     * 生命体征测量记录
     *//*

    C0020(82, "C0020", "生命体征测量记录", "MONITOR_VITAL_SIGNS_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 出入量记录
     *//*

    C0021(83, "C0021", "出入量记录", "INTAKE_OUTPUT_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 高值耗材使用记录
     *//*

    C0022(84, "C0022", "高值耗材使用记录", "PRECIOUS_CONSUM_USAGE_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 入院评估
     *//*

    C0023(85, "C0023", "入院评估", "ADMISSION_ASSESSMENT", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 护理计划
     *//*

    C0024(86, "C0024", "护理计划", "CARE_PLAN", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 出院评估与指导
     *//*

    C0025(87, "C0025", "出院评估与指导", "DISCHARGE_ASSESSMENT", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 手术知情告知书
     *//*

    C0026(88, "C0026", "手术知情告知书", "OPERATION_INFORMED_CONSENT", "OUTP_NO", "INP_NO"),
    */
/*
     * 麻醉知情同意书
     *//*

    C0027(89, "C0027", "麻醉知情同意书", "CSE_INFORMED_CONSENT", "OUTP_NO", "INP_NO"),
    */
/*
     * 输血治疗同意书
     *//*

    C0028(90, "C0028", "输血治疗同意书", "TRANSFUSION_INFORMED_CONSENT", "OUTP_NO", "INP_NO"),
    */
/*
     * 特殊检查及特殊治疗同意书
     *//*

    C0029(91, "C0029", "特殊检查及特殊治疗同意书", "SPECIAL_TREATMENT_CONSENT", "OUTP_NO", "INP_NO"),
    */
/*
     * 病危(重)通知书
     *//*

    C0030(92, "C0030", "病危(重)通知书", "CRITICALLY_ILL_NOTICE", "OUTP_NO", "INP_NO"),
    */
/*
     * 其他知情同意书
     *//*

    C0031(93, "C0031", "其他知情同意书", "OTHER_INFORMED_CONSENT", "OUTP_NO", "INP_NO"),
    */
/*
     * 住院病案首页
     *//*

    C0032(94, "C0032", "住院病案首页", "INPATIENT_MEDICAL_RECORD", StringUtils.EMPTY, "VISITING_PATIENTS"),
    */
/*
     * 中医住院病案首页
     *//*

    C0033(95, "C0033", "中医住院病案首页", "CN_INPATIENT_MEDICAL_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 入院记录
     *//*

    C0034(96, "C0034", "入院记录", "ADMISSION_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 24h内入出院记录
     *//*

    C0035(97, "C0035", "24h内入出院记录", "H24_ADMISSION_DISCHARGE_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 24h内入院死亡记录
     *//*

    C0036(98, "C0036", "24h内入院死亡记录", "HOURS24_ADMISSION_DEATH_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 首次病程记录
     *//*

    C0037(99, "C0037", "首次病程记录", "FIRST_COURSE_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 日常病程记录
     *//*

    C0038(100, "C0038", "日常病程记录", "DAILY_COURSE_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 上级医师查房记录
     *//*

    C0039(101, "C0039", "上级医师查房记录", "SUPERIOR_DOCTOR_WARDROUND", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 疑难病例讨论记录
     *//*

    C0040(102, "C0040", "疑难病例讨论记录", "INTRACTABLE_DISCUSS_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 交接班记录
     *//*

    C0041(103, "C0041", "交接班记录", "HANDOVER_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 转科记录
     *//*

    C0042(104, "C0042", "转科记录", "TRANSFERENCE_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 阶段小结
     *//*

    C0043(105, "C0043", "阶段小结", "PHASE_SUMMARY", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 抢救记录
     *//*

    C0044(106, "C0044", "抢救记录", "SALVAGE_RECROD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 会诊记录
     *//*

    C0045(107, "C0045", "会诊记录", "CONSULTATION_RECORD", StringUtils.EMPTY, "INP_OBJECT_NO"),
    */
/*
     * 术前小结
     *//*

    C0046(108, "C0046", "术前小结", "PRE_OPERATION_SUMMARY", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 术前讨论
     *//*

    C0047(109, "C0047", "术前讨论", "PRE_OPERATION_DISCUSSION", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 术后首次病程记录
     *//*

    C0048(110, "C0048", "术后首次病程记录", "POSTOPERAT_FIRST_COURSE", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 出院记录
     *//*

    C0049(111, "C0049", "出院记录", "DISCHARGE_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 死亡记录
     *//*

    C0050(112, "C0050", "死亡记录", "DEATH_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 死亡病例讨论记录
     *//*

    C0051(113, "C0051", "死亡病例讨论记录", "DEATH_CASE_DISCUSSION_RECORD", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 住院医嘱
     *//*

    C0052(114, "C0052", "住院医嘱", "HOSPITALIZATION_ORDER", StringUtils.EMPTY, "INP_NO"),
    */
/*
     * 出院小结
     *//*

    C0053(115, "C0053", "出院小结", "DISCHARGE_ABSTRACT", StringUtils.EMPTY, "INP_NO");


    private int index;
    private String code;
    private String name;
    private String tableName;
    private String name1;
    private String tableName1;

    // 构造方法
    private CdaTempEnum(int index, String code, String name, String tableName, String name1, String tableName1)
    {
        this.index = index;
        this.code = code;
        this.name = name;
        this.tableName = tableName;
        this.name1 = name1;
        this.tableName1 = tableName1;
    }

}
*/
