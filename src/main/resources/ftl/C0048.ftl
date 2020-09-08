﻿<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.68"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0048" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>术后首次病程记录</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--住院号 -->
      <id extension="${postoperatFirstCourse.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${postoperatFirstCourse.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${postoperatFirstCourse.sexCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${postoperatFirstCourse.sexCode!'NA'}" datasetCloumn="SEX_CODE">${dict.desc}</@dict_tag>"/>
        <#if postoperatFirstCourse.ageYear??>
        <age unit="岁" value="${postoperatFirstCourse.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${postoperatFirstCourse.patientMonth!'NA'}"/>
        </#if>
      </patient>
    </patientRole>
  </recordTarget>
  <!-- 文档作者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <time value="${postoperatFirstCourse.recordDatatime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${postoperatFirstCourse.doctorSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${postoperatFirstCourse.doctorSign!'NA'}</name>
      </assignedPerson>
    </assignedAuthor>
  </author>
  <!-- 文档生成机构 -->
  <custodian typeCode="CST">
    <assignedCustodian classCode="ASSIGNED">
      <representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="${hospitalInfo.organCode!'NA'}" root="2.16.156.10011.1.5"/>
        <name>${hospitalInfo.organName!'NA'}</name>
      </representedCustodianOrganization>
    </assignedCustodian>
  </custodian>
  <!-- 医师 -->
  <authenticator>
    <time value="${postoperatFirstCourse.signDatatime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${postoperatFirstCourse.doctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code code="医师"/>
      <assignedPerson>
        <name>${postoperatFirstCourse.doctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <participant typeCode="NOT">
    <!--联系人@classCode：CON，固定值，表示角色是联系人 -->
    <associatedEntity classCode="ECON">
      <!--联系人电话-->
      <telecom value="${emrBasicpatient.contactPhone!'NA'}"/>
      <!--联系人-->
      <associatedPerson>
        <!--联系人姓名-->
        <name>${emrBasicpatient.contactName!'NA'}</name>
      </associatedPerson>
    </associatedEntity>
  </participant>
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
              <!--HDSD00.09.003 DE01.00.026.00 病床号 -->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${postoperatFirstCourse.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${postoperatFirstCourse.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!--HDSD00.09.004 DE01.00.019.00 病房号 -->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${postoperatFirstCourse.roomNo!'NA'}" root="2.16.156.10011.1.27"/>
                    <name>${postoperatFirstCourse.roomNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!--HDSD00.09.036 DE08.10.026.00 科室名称 -->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${postoperatFirstCourse.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${postoperatFirstCourse.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!--HDSD00.09.005 DE08.10.054.00 病区名称-->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${postoperatFirstCourse.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${postoperatFirstCourse.areaName!'NA'}</name>
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
      <!--手术操作章节-->
      <component>
        <section>
          <code code="47519-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PROCEDURES"/>
          <text/>
          <!-- 手术及操作编码 DE06.00.093.00 -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <code code="${postoperatFirstCourse.operationCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)" displayName="<@dict_tag value="${postoperatFirstCourse.operationCode!'NA'}" datasetCloumn="OPERATION_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </procedure>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术名称"/>
              <value xsi:type="ST">${postoperatFirstCourse.operationName!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.187.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术目标部位名称"/>
              <value xsi:type="ST">${postoperatFirstCourse.operationPositionName!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.221.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术日期时间"/>
              <value value="${postoperatFirstCourse.operationImplementation!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方法代码"/>
              <value code="${postoperatFirstCourse.anesthesiaMethodCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表" xsi:type="CD" displayName="<@dict_tag value="${postoperatFirstCourse.anesthesiaMethodCode!'NA'}" datasetCloumn="ANESTHESIA_METHOD_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.063.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术过程"/>
              <value xsi:type="ST">${postoperatFirstCourse.operationProcessDesc!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--术后诊断章节-->
      <component>
        <section>
          <code code="10218-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Surgical operation note postoperative Dx"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术后诊断名称"/>
              <value xsi:type="ST">${postoperatFirstCourse.postoperativeDiagnosisName!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术后诊断编码"/>
                  <value xsi:type="CD" code="${postoperatFirstCourse.afteroperationDiagIcd!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${postoperatFirstCourse.afteroperationDiagIcd!'NA'}" datasetCloumn="AFTEROPERATION_DIAG_ICD">${dict.desc}</@dict_tag>"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.070.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊断依据"/>
              <value xsi:type="ST">${postoperatFirstCourse.diagEvidence!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--注意事项章节-->
      <component>
        <section>
          <code code="DE09.00.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="注意事项章节"/>
          <text>${postoperatFirstCourse.mattersNeedAttention!'NA'}</text>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>