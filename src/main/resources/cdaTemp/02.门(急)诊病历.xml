<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.22"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0002" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>门(急)诊病历</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--门（急）诊号标识 -->
      <id extension="${outpatientEmergencyRecords.outpNo!'NA'}" root="2.16.156.10011.1.11"/>
      <!--电子申请单编号-->
      <id extension="${outpatientEmergencyRecords.applyNo!'NA'}" root="2.16.156.10011.1.24"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${outpatientEmergencyRecords.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${outpatientEmergencyRecords.patientSex!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${outpatientEmergencyRecords.patientSex!'NA'}" datasetCloumn="PATIENT_SEX">${dict.desc}</@dict_tag>"/>
        <birthTime value="${outpatientEmergencyRecords.patientBirthday!'NA'}"/>
        <#if outpatientEmergencyRecords.ageYear??>
        <age unit="岁" value="${outpatientEmergencyRecords.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${outpatientEmergencyRecords.patientMonth!'NA'}"/>
        </#if>
      </patient>
      <providerOrganization>
        <id root="2.16.156.10011.1.26"/>
        <name>${outpatientEmergencyRecords.deptName!'NA'}</name>
        <asOrganizationPartOf>
          <wholeOrganization>
            <!-- 机构代码 -->
            <id extension="${outpatientEmergencyRecords.organCode!'NA'}" root="2.16.156.10011.1.5"/>
            <name>${hospitalInfo.organName!'NA'}</name>
          </wholeOrganization>
        </asOrganizationPartOf>
      </providerOrganization>
    </patientRole>
  </recordTarget>
  <!--创建者-->
  <author contextControlCode="OP" typeCode="AUT">
    <!-- 就诊日期时间 -->
    <time value="${outpatientEmergencyRecords.visitDatetime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${outpatientEmergencyRecords.doctorSign!'NA'}" root="2.16.156.10011.1.7"/>
      <!-- 就诊医师 -->
      <assignedPerson>
        <name>${outpatientEmergencyRecords.doctorSign!'NA'}</name>
      </assignedPerson>
    </assignedAuthor>
  </author>
  <!-- 保管机构 -->
  <custodian typeCode="CST">
    <assignedCustodian classCode="ASSIGNED">
      <representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="${outpatientEmergencyRecords.organCode!'NA'}" root="2.16.156.10011.1.5"/>
        <name>${hospitalInfo.organName!'NA'}</name>
      </representedCustodianOrganization>
    </assignedCustodian>
  </custodian>
  <!-- 医师签名 -->
  <legalAuthenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${outpatientEmergencyRecords.doctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="责任医生"/>
      <assignedPerson>
        <name>${outpatientEmergencyRecords.doctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </legalAuthenticator>
  <relatedDocument typeCode="RPLC">
    <parentDocument>
      <id/>
      <setId/>
      <versionNumber/>
    </parentDocument>
  </relatedDocument>
  <component>
    <structuredBody>
      <!-- 过敏史章节 -->
      <component>
        <section>
          <code code="48765-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Allergies, adverse reactions, alerts"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.023.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="过敏史标志"/>
              <value value="${outpatientEmergencyRecords.allergyHostoryFlag!'NA'}" xsi:type="BL"/>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="过敏史"/>
                  <value xsi:type="ST">${outpatientEmergencyRecords.allergyHistory!'NA'}</value>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
      <!--主诉章节-->
      <component>
        <section>
          <code code="10154-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="CHIEF COMPLAINT"/>
          <text/>
          <!--主诉条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.01.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="主诉"/>
              <value xsi:type="ST">${outpatientEmergencyRecords.chiefComplaint!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--现病史章节-->
      <component>
        <section>
          <code code="10164-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PRESENT ILLNESS"/>
          <text/>
          <!--现病史条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.071.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="现病史"/>
              <value xsi:type="ST">${outpatientEmergencyRecords.presentDiseaseHistory!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 既往史章节 -->
      <component>
        <section>
          <code code="11348-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PAST ILLNESS"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.099.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="既往史"/>
              <value xsi:type="ST">${outpatientEmergencyRecords.pastHistory!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--体格检查章节-->
      <component>
        <section>
          <code code="29545-1" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PHYSICAL EXAMINATION"/>
          <text/>
          <!--体格检查-一般状况检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.258.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="体格检查"/>
              <value xsi:type="ST">${outpatientEmergencyRecords.physicalExamination!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 实验室检验章节 -->
      <component>
        <section>
          <code code="30954-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="STUDIES SUMMARY"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.010.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="辅助检查项目"/>
              <value xsi:type="ST">${outpatientEmergencyRecords.auxiliaryexamiItem!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.009.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="辅助检查结果"/>
              <value xsi:type="ST">${outpatientEmergencyRecords.auxiliaryexamiResult!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 诊断记录章节 -->
      <component>
        <section>
          <code code="29548-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
          <text/>
          <!--初诊标志代码-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.196.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="初诊标志代码"/>
              <value code="${outpatientEmergencyRecords.newlyDiagnosedCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.39" codeSystemName="初诊标志代码表" displayName="<@dict_tag value="${outpatientEmergencyRecords.newlyDiagnosedCode!'NA'}" datasetCloumn="NEWLY_DIAGNOSED_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <!--中医“四诊”观察结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.028.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医“四诊”观察结果"/>
              <value xsi:type="ST">${outpatientEmergencyRecords.tcmFourObservations!'NA'}</value>
            </observation>
          </entry>
          <!--条目：诊断-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.024.00" displayName="诊断代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
              <value xsi:type="CD" code="${outpatientEmergencyRecords.emergencyPdWmDisCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11.1" codeSystemName="诊断代码表(ICD-10)" displayName="<@dict_tag value="${outpatientEmergencyRecords.emergencyPdWmDisCode!'NA'}" datasetCloumn="EMERGENCY_PD_WM_DIS_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊断名称"/>
              <value xsi:type="ST">${outpatientEmergencyRecords.inhosDiagWmDiagName!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医病名代码">
                <qualifier>
                  <name displayName="中医病名代码"/>
                </qualifier>
              </code>
              <value code="${outpatientEmergencyRecords.diseasesCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" xsi:type="CD" displayName="<@dict_tag value="${outpatientEmergencyRecords.diseasesCode!'NA'}" datasetCloumn="DISEASES_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医病名名称">
                <qualifier>
                  <name displayName="中医病名名称"/>
                </qualifier>
              </code>
              <value xsi:type="ST">${outpatientEmergencyRecords.inhosDiagCmDisName!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医证候代码">
                <qualifier>
                  <name displayName="中医证候代码"/>
                </qualifier>
              </code>
              <value code="${outpatientEmergencyRecords.syndromesCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" xsi:type="CD" displayName="<@dict_tag value="${outpatientEmergencyRecords.syndromesCode!'NA'}" datasetCloumn="SYNDROMES_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医证候名称">
                <qualifier>
                  <name displayName="中医证候名称"/>
                </qualifier>
              </code>
              <value xsi:type="ST">${outpatientEmergencyRecords.inhosDiagCmSyndromeName!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 治疗计划章节 -->
      <component>
        <section>
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>
          <text/>
          <!--辨证依据描述-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.132.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="辨证依据"/>
              <value xsi:type="ST">${outpatientEmergencyRecords.dialecticalAccrod!'NA'}</value>
            </observation>
          </entry>
          <!--治则治法-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.300.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="治则治法"/>
              <value xsi:type="ST">${outpatientEmergencyRecords.therapeuticPrinciple!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--医嘱章节-->
      <component>
        <section>
          <code code="46209-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Provider Orders"/>
          <text/>
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.289.00" displayName="医嘱项目类型" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
                  <value xsi:type="CD" code="${outpatientEmergencyRecords.orderItemTypeCode!'NA'}" displayName="<@dict_tag value="${outpatientEmergencyRecords.orderItemTypeCode!'NA'}" datasetCloumn="ORDER_ITEM_TYPE_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.1.268" codeSystemName="医嘱项目类型代码表"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.288.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医嘱项目内容"/>
                  <effectiveTime>
                    <!--医嘱计划开始日期时间-->
                    <low value="${outpatientEmergencyRecords.adviceOpenDatetime!'NA'}"/>
                    <!--医嘱计划结束日期时间-->
                    <high value="${outpatientEmergencyRecords.adviceExecDatetime!'NA'}"/>
                  </effectiveTime>
                  <!--医嘱计划信息-->
                  <value xsi:type="ST">${outpatientEmergencyRecords.adviceItemContent!'NA'}</value>
                  <!--执行者-->
                  <performer>
                    <!--医嘱执行日期时间：DE06.00.222.00-->
                    <time value="${outpatientEmergencyRecords.adviceExecDatetime!'NA'}"/>
                    <assignedEntity>
                      <id root="2.16.156.10011.1.4"/>
                      <!--角色-->
                      <code displayName="医嘱执行者"/>
                      <!--医嘱执行者签名：DE02.01.039.00-->
                      <assignedPerson>
                        <name>${outpatientEmergencyRecords.execPersonSign!'NA'}</name>
                      </assignedPerson>
                      <!--医嘱执行科室：DE08.10.026.00-->
                      <representedOrganization>
                        <name>${outpatientEmergencyRecords.execDeptName!'NA'}</name>
                      </representedOrganization>
                    </assignedEntity>
                  </performer>
                  <!--作者：医嘱开立者-->
                  <author>
                    <!--医嘱开立日期时间：DE06.00.220.00-->
                    <time value="${outpatientEmergencyRecords.adviceOpenDatetime!'NA'}"/>
                    <assignedAuthor>
                      <id root="2.16.156.10011.1.4"/>
                      <!--角色-->
                      <code displayName="医嘱开立者"/>
                      <!--医嘱开立者签名：DE02.01.039.00-->
                      <assignedPerson>
                        <name>${outpatientEmergencyRecords.adviceOpendoctorSign!'NA'}</name>
                      </assignedPerson>
                      <!--医嘱开立科室：DE08.10.026.00-->
                      <representedOrganization>
                        <name>${outpatientEmergencyRecords.adviceOpendeptName!'NA'}</name>
                      </representedOrganization>
                    </assignedAuthor>
                  </author>
                  <!--医嘱审核-->
                  <participant typeCode="ATND">
                    <!--医嘱审核日期时间：DE09.00.088.00-->
                    <time value="${outpatientEmergencyRecords.checkAdviceDatetime!'NA'}"/>
                    <participantRole classCode="ASSIGNED">
                      <id root="2.16.156.10011.1.4"/>
                      <!--角色-->
                      <code displayName="医嘱审核人"/>
                      <!--医嘱审核人签名：DE02.01.039.00-->
                      <playingEntity classCode="PSN" determinerCode="INSTANCE">
                        <name>${outpatientEmergencyRecords.checkPersonSign!'NA'}</name>
                      </playingEntity>
                    </participantRole>
                  </participant>
                  <#if outpatientEmergencyRecords.cancelAdviceDatetime??>
                  <!--医嘱取消-->
                  <participant typeCode="ATND">
                    <!--医嘱取消日期时间：DE06.00.234.00-->
                    <time value="${outpatientEmergencyRecords.cancelAdviceDatetime!'NA'}"/>
                    <participantRole classCode="ASSIGNED">
                      <id root="2.16.156.10011.1.4"/>
                      <!--角色-->
                      <code displayName="医嘱取消人"/>
                      <!--取消医嘱者签名：DE02.01.039.00-->
                      <playingEntity classCode="PSN" determinerCode="INSTANCE">
                        <name>${outpatientEmergencyRecords.cancelPersonSign!'NA'}</name>
                      </playingEntity>
                    </participantRole>
                  </participant>
                  </#if>
                  <!--医嘱备注信息-->
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE06.00.179.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医嘱备注信息"/>
                      <value xsi:type="ST">${outpatientEmergencyRecords.adviceRemark!'NA'}</value>
                    </observation>
                  </entryRelationship>
                  <!--医嘱执行状态-->
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE06.00.290.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医嘱执行状态"/>
                      <value xsi:type="ST">${outpatientEmergencyRecords.adviceExecStatus!'NA'}</value>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>