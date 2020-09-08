﻿<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.44"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0024" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>护理计划</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <!--文档记录对象 用于表达此文档的患者信息 -->
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!-- DE01.00.021.00健康卡号-->
      <id extension="${emrBasicpatient.healthCardNo!'NA'}" root="2.16.156.10011.1.19"/>
      <!-- HDSD00.09.085 DE01.00.014.00 住院号-->
      <id extension="${carePlan.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <!-- HDSD00.09.029 DE02.01.039.00 患者姓名 -->
        <name><@privacy_tag value="${carePlan.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <!-- HDSD00.09.071 DE02.01.040.00 性别代码 -->
        <administrativeGenderCode code="${carePlan.sexCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${carePlan.sexCode!'NA'}" datasetCloumn="SEX_CODE">${dict.desc}</@dict_tag>"/>
        <#if carePlan.ageYear??>
        <age unit="岁" value="${carePlan.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${carePlan.patientMonth!'NA'}"/>
        </#if>
      </patient>
      <providerOrganization>
        <asOrganizationPartOf classCode="PART">
          <!--HDSD00.09.003 DE01.00.026.00 病床号 -->
          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
            <id extension="${carePlan.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
            <name>${carePlan.bedNo!'NA'}</name>
            <asOrganizationPartOf classCode="PART">
              <!--HDSD00.09.004 DE01.00.019.00 病房号 -->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${carePlan.wardNo!'NA'}" root="2.16.156.10011.1.21"/>
                <name>${carePlan.wardNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!--HDSD00.09.036 DE08.10.026.00 科室名称 -->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${carePlan.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                    <name>${carePlan.deptName!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!--HDSD00.09.005 DE08.10.054.00 病区名称 -->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${carePlan.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                        <name>${carePlan.areaName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!--医疗机构名称 -->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${hospitalInfo.organCode!'NA'}" root="2.16.156.10011.1.5"/>
                            <name>${hospitalInfo.organName!'NA'}</name>
                          </wholeOrganization>
                        </asOrganizationPartOf>
                      </wholeOrganization>
                    </asOrganizationPartOf>
                  </wholeOrganization>
                </asOrganizationPartOf>
              </wholeOrganization>
            </asOrganizationPartOf>
          </wholeOrganization>
        </asOrganizationPartOf>
      </providerOrganization>
    </patientRole>
  </recordTarget>
  <!-- 创作者 -->
  <author>
  <!-- 填表日期 -->
    <time value="${carePlan.signDatetime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${carePlan.nursingSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <!-- 访视医生姓名 -->
        <name>${carePlan.nursingSign!'NA'}</name>
      </assignedPerson>
    </assignedAuthor>
  </author>
  <!--文档管理者 -->
  <custodian typeCode="CST">
    <assignedCustodian classCode="ASSIGNED">
      <representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="${hospitalInfo.organCode!'NA'}" root="2.16.156.10011.1.5"/>
        <name>${hospitalInfo.organName!'NA'}</name>
      </representedCustodianOrganization>
    </assignedCustodian>
  </custodian>
  <!--文档审核者 该部分信息表达文档经过了一定的审核，但还没达到一定的法律效应 -->
  <authenticator typeCode="AUTHEN">
    <!--HDSD00.09.047 DE09.00.053.00 签名日期时间 -->
    <time value="${carePlan.signDatetime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${carePlan.nursingSign!'NA'}" root="2.16.156.10011.1.4"/>
      <assignedPerson>
        <!--HDSD00.09.025 DE02.01.039.00 护士签名 -->
        <name>${carePlan.nursingSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <relatedDocument typeCode="RPLC">
    <parentDocument>
      <id/>
      <setId/>
      <versionNumber/>
    </parentDocument>
  </relatedDocument>
  <component>
    <structuredBody>
      <!--主要健康问题章节-->
      <component>
        <section>
          <code code="11450-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PROBLEM LIST"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="疾病诊断编码"/>
              <value code="${carePlan.diagCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${carePlan.diagCode!'NA'}" datasetCloumn="DIAG_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 护理记录章节 -->
      <component>
        <section>
          <code displayName="护理记录"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.211.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理等级代码"/>
              <!--HDSD00.09.020 DE06.00.211.00 护理等级代码 -->
              <value code="${carePlan.nursingGradeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.259" codeSystemName="护理等级代码表" displayName="<@dict_tag value="${carePlan.nursingGradeCode!'NA'}" datasetCloumn="NURSING_GRADE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.212.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理类型代码"/>
              <!--HDSD00.09.023 DE06.00.212.00 护理类型代码 -->
              <value code="${carePlan.nursingTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.260" codeSystemName="护理类型代码表" displayName="<@dict_tag value="${carePlan.nursingTypeCode!'NA'}" datasetCloumn="NURSING_TYPE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.136.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理问题"/>
              <!--HDSD00.09.024 DE05.10.136.00 护理问题 -->
              <value xsi:type="ST">${carePlan.nursingProblems!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.342.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理操作名称"/>
              <value xsi:type="ST">${carePlan.nursingOperationName!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.210.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理操作项目类目名称"/>
                  <value xsi:type="ST">${carePlan.nursingOperationItemName!'NA'}</value>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE06.00.209.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理操作结果"/>
                      <value xsi:type="ST">${carePlan.nursingOperationResult!'NA'}</value>
                    </observation>
                  </entryRelationship>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.209.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="导管护理"/>
              <!--HDSD00.09.010 DE06.00.209.00 导管护理描述 -->
              <value xsi:type="ST">${carePlan.endotrachealCareDesc!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.259.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="体位护理"/>
              <!--HDSD00.09.062 DE04.10.259.00 体位护理 -->
              <value xsi:type="ST">${carePlan.bodyPositionCare!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.50.068.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="皮肤护理"/>
              <!--HDSD00.09.044 DE04.50.068.00 皮肤护理 -->
              <value xsi:type="ST">${carePlan.skinCare!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.229.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="气管护理代码"/>
              <!-- HDSD00.09.046 DE06.00.229.00 气管护理代码 -->
              <value code="${carePlan.endotrachealCareCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.50" codeSystemName="气管护理代码表" displayName="<@dict_tag value="${carePlan.endotrachealCareCode!'NA'}" datasetCloumn="ENDOTRACHEAL_CARE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.178.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="安全护理代码"/>
              <!--HDSD00.09.002 DE06.00.178.00 安全护理代码 -->
              <value code="${carePlan.safetyNursingCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.52" codeSystemName="安全护理代码表" displayName="<@dict_tag value="${carePlan.safetyNursingCode!'NA'}" datasetCloumn="SAFETY_NURSING_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--健康指导章节-->
      <component>
        <section>
          <code code="69730-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Instructions"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.291.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="饮食指导代码"/>
              <!--HDSD00.09.078 DE06.00.291.00 饮食指导代码 -->
              <value code="${carePlan.dietGuideCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.263" codeSystemName="饮食指导代码表" displayName="<@dict_tag value="${carePlan.dietGuideCode!'NA'}" datasetCloumn="DIET_GUIDE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>