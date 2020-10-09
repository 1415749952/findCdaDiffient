<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ../sdschemas/CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.57"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0037" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>首次病程记录</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--住院号标识-->
      <id extension="${firstCourseRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${firstCourseRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${firstCourseRecord.sexCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${firstCourseRecord.sexCode!'NA'}" datasetCloumn="SEX_CODE">${dict.desc}</@dict_tag>"/>
        <birthTime value="${emrBasicpatient.birthday!'NA'}"/>
        <!--1数据集里是年龄（年）、年龄（月）-->
        <#if firstCourseRecord.ageYear??>
        <age unit="岁" value="${firstCourseRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${firstCourseRecord.patientMonth!'NA'}"/>
        </#if>
      </patient>
    </patientRole>
  </recordTarget>
  <!-- 文档创建者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <!-- DE09.00.053.00记录日期时间 完成此项业务活动时的公元纪年日期和时间的完整描述 -->
    <time value="${firstCourseRecord.recordDatatime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${firstCourseRecord.inpDoctorSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${firstCourseRecord.inpDoctorSign!'NA'}</name>
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
  <!--上级医师签名-->
  <legalAuthenticator>
    <time value="${firstCourseRecord.recordDatatime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${firstCourseRecord.superDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="上级医师签名"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${firstCourseRecord.superDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </legalAuthenticator>
  <!--住院医师签名-->
  <authenticator>
    <time value="${firstCourseRecord.recordDatatime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${firstCourseRecord.inpDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="住院医师签名"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${firstCourseRecord.inpDoctorSign!'NA'}</name>
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
      <effectiveTime/>
      <location>
        <healthCareFacility>
          <serviceProviderOrganization>
            <asOrganizationPartOf classCode="PART">
              <!-- DE01.00.026.00病床号 -->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${firstCourseRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${firstCourseRecord.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!-- DE01.00.019.00病房号 -->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${firstCourseRecord.roomNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${firstCourseRecord.roomNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!-- DE08.10.026.00科室名称 -->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${firstCourseRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${firstCourseRecord.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!-- DE08.10.054.00病区名称 -->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${firstCourseRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${firstCourseRecord.areaName!'NA'}</name>
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
      <!--主诉章节-->
      <component>
        <section>
          <code code="10154-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="CHIEF COMPLAINT"/>
          <text/>
          <!-- 主诉-->
          <entry contextConductionInd="true" typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.01.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="主诉"/>
              <value xsi:type="ST">${firstCourseRecord.chiefComplaint!'NA'}</value>
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
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE05.10.133.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病例特点"/>
              <#if firstCourseRecord.recordFeature??>
              <value xsi:type="ST">${firstCourseRecord.recordFeature? replace('<','小于')? replace('>','大于')}</value>
              <#else>
              <value xsi:type="ST">${firstCourseRecord.recordFeature!'NA'}</value>
              </#if>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.028.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医“四诊”观察结果"/>
              <value xsi:type="ST">${firstCourseRecord.tcmFourResults!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.070.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊断依据"/>
              <value xsi:type="ST">${firstCourseRecord.diagEvidence!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="初步诊断-西医诊断编码"/>
              <value code="${firstCourseRecord.pdWestDiagCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${firstCourseRecord.pdWestDiagCode!'NA'}" datasetCloumn="PD_WEST_DIAG_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <#if firstCourseRecord.diseasesCode??>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="初步诊断-中医病名代码">
                <qualifier>
                  <name displayName="中医病名代码"/>
                </qualifier>
              </code>
              <value code="${firstCourseRecord.diseasesCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" displayName="<@dict_tag value="${firstCourseRecord.diseasesCode!'NA'}" datasetCloumn="DISEASES_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          </#if>
          <#if firstCourseRecord.diagnoseSyndromesCode??>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="初步诊断-中医症候代码">
                <qualifier>
                  <name displayName="中医症候代码"/>
                </qualifier>
              </code>
              <value code="${firstCourseRecord.diagnoseSyndromesCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" displayName="<@dict_tag value="${firstCourseRecord.diagnoseSyndromesCode!'NA'}" datasetCloumn="DIAGNOSE_SYNDROMES_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          </#if>
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="鉴别诊断-西医诊断名称"/>
              <value xsi:type="ST">${firstCourseRecord.identifyWmDiagname!'NA'}</value>
            </observation>
          </entry>
          <#if firstCourseRecord.identifyTcmDiagname??>
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="鉴别诊断-中医病名名称">
                <qualifier>
                  <name displayName="中医病名名称"/>
                </qualifier>
              </code>
              <value xsi:type="ST">${firstCourseRecord.identifyTcmDiagname!'NA'}</value>
            </observation>
          </entry>
          </#if>
          <#if firstCourseRecord.identifyTcmSymptomname??>
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="鉴别诊断-中医症候名称">
                <qualifier>
                  <name displayName="中医症候名称"/>
                </qualifier>
              </code>
              <value xsi:type="ST">${firstCourseRecord.identifyTcmSymptomname!'NA'}</value>
            </observation>
          </entry>
          </#if>
        </section>
      </component>
      <!--治疗计划章节-->
      <component>
        <section>
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="GOL ">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊疗计划"/>
              <value xsi:type="ST">${firstCourseRecord.assessmentPlan!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.300.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="治则治法"/>
              <value xsi:type="ST">${firstCourseRecord.therapeuticPrinciple!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>