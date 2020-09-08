﻿<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ../sdschemas/CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.58"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0038" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>日常病程记录</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--住院号标识-->
      <id extension="${dailyCourseRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${dailyCourseRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${dailyCourseRecord.sexCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${dailyCourseRecord.sexCode!'NA'}" datasetCloumn="SEX_CODE">${dict.desc}</@dict_tag>"/>
        <birthTime value="${emrBasicpatient.birthday!'NA'}"/>
        <!--1数据集里是年龄（年）、年龄（月）-->
        <#if dailyCourseRecord.ageYear??>
        <age unit="岁" value="${dailyCourseRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${dailyCourseRecord.patientMonth!'NA'}"/>
        </#if>
      </patient>
    </patientRole>
  </recordTarget>
  <!-- 文档创建者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <time value="${dailyCourseRecord.recordDatatime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${dailyCourseRecord.doctorSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${dailyCourseRecord.doctorSign!'NA'}</name>
      </assignedPerson>
    </assignedAuthor>
  </author>
  <!--管理机构-->
  <custodian typeCode="CST">
    <assignedCustodian classCode="ASSIGNED">
      <representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="${hospitalInfo.organCode!'NA'}" root="2.16.156.10011.1.5"/>
        <name>${hospitalInfo.organName!'NA'}</name>
      </representedCustodianOrganization>
    </assignedCustodian>
  </custodian>
  <!--医师签名-->
  <authenticator>
    <!--签名日期时间-->
    <time value="${dailyCourseRecord.signDatatime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${dailyCourseRecord.doctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="医师签名"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${dailyCourseRecord.doctorSign!'NA'}</name>
        <professionalTechnicalPosition>
          <professionaltechnicalpositionCode code="${dailyCourseRecord.professionalCatagoryCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.209" codeSystemName="专业技术职务类别代码表" displayName="<@dict_tag value="${dailyCourseRecord.professionalCatagoryCode!'NA'}" datasetCloumn="PROFESSIONAL_CATAGORY_CODE">${dict.desc}</@dict_tag>"/>
        </professionalTechnicalPosition>
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
  <!-- 病床号、病房、病区、科室和医院的关联 -->
  <componentOf>
    <encompassingEncounter>
      <code displayName="记录日期时间"/>
      <!--记录日期时间-->
      <effectiveTime xsi:type="IVL_TS" value="${dailyCourseRecord.recordDatatime!'NA'}"/>
      <location>
        <healthCareFacility>
          <serviceProviderOrganization classCode="ORG" determinerCode="INSTANCE">
            <asOrganizationPartOf classCode="PART">
              <!--HDSD00.09.003 DE01.00.026.00 病床号 -->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${dailyCourseRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${dailyCourseRecord.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!--HDSD00.09.004 DE01.00.019.00 病房号 -->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${dailyCourseRecord.roomNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${dailyCourseRecord.roomNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!--HDSD00.09.036 DE08.10.026.00 科室名称 -->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${dailyCourseRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${dailyCourseRecord.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!--病区名称-->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${dailyCourseRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${dailyCourseRecord.areaName!'NA'}</name>
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
          </serviceProviderOrganization>
        </healthCareFacility>
      </location>
    </encompassingEncounter>
  </componentOf>
  <component>
    <structuredBody>
      <!--主要健康问题章节-->
      <component>
        <section>
          <code code="11450-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PROBLEM LIST"/>
          <text/>
          <!--住院病程-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.309.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="住院病程"/>
              <#if dailyCourseRecord.inpCourse??>
              <value xsi:type="ST">${dailyCourseRecord.inpCourse? replace('<','小于')? replace('>','大于')}</value>
              <#else>
              <value xsi:type="ST">${dailyCourseRecord.inpCourse!'NA'}</value>
              </#if>
            </observation>
          </entry>
        </section>
      </component>
      <!--诊断章节-->
      <component>
        <section>
          <code code="29548-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.028.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医“四诊”观察结果"/>
              <value xsi:type="ST">${dailyCourseRecord.tcmFourResults!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--用药章节-->
      <component>
        <section>
          <code code="10160-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF MEDICATION USE"/>
          <text/>
          <!--中药煎煮法-->
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE08.50.047.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中药饮片煎煮法"/>
              <value xsi:type="ST">${dailyCourseRecord.chinDecocDecway!'NA'}</value>
            </observation>
          </entry>
          <!--中药用药方法-->
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE06.00.136.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中药用药方法的描述"/>
              <value xsi:type="ST">${dailyCourseRecord.chinDrinkDecway!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--治疗计划章节-->
      <component>
        <section>
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>
          <text/>
          <!--辨证论治-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.131.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="辩证论治"/>
              <value xsi:type="ST">${dailyCourseRecord.dialecticalDesc!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--住院医嘱章节-->
      <component>
        <section>
          <code code="46209-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Provider Orders"/>
          <title/>
          <!--医嘱内容-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.287.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医嘱内容"/>
              <value xsi:type="ST">${dailyCourseRecord.adviceContent!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>