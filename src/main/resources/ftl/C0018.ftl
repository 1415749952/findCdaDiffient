<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.38"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0018" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>病重（病危）护理记录</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--住院号：DE01.00.014.00 @@@参照OID分配表修改 -->
      <id extension="${worsePatientCareRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${worsePatientCareRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${worsePatientCareRecord.patientSex!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${worsePatientCareRecord.patientSex!'NA'}" datasetCloumn="PATIENT_SEX">${dict.desc}</@dict_tag>"/>
        <#if worsePatientCareRecord.ageYear??>
        <age unit="岁" value="${worsePatientCareRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${worsePatientCareRecord.patientMonth!'NA'}"/>
        </#if>
      </patient>
      <!--医疗机构信息-->
      <providerOrganization>
        <id extension="${hospitalInfo.organCode!'NA'}" root="2.16.156.10011.1.5"/>
        <name>${hospitalInfo.organName!'NA'}</name>
      </providerOrganization>
    </patientRole>
  </recordTarget>
  <!-- 文档作者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <!--签名日期时间：DE09.00.053.00-->
    <time value="${worsePatientCareRecord.signDatetime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${worsePatientCareRecord.nurseSign!'NA'}" root="2.16.156.10011.1.7"/>
      <code displayName="护士"/>
      <assignedPerson>
        <name>${worsePatientCareRecord.nurseSign!'NA'}</name>
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
  <!-- 护士签名 -->
  <authenticator>
    <time value="${worsePatientCareRecord.signDatetime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${worsePatientCareRecord.nurseSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="护士"/>
      <assignedPerson>
        <name>${worsePatientCareRecord.nurseSign!'NA'}</name>
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
  <!--文档中医疗卫生事件的就诊场景,即入院场景记录-->
  <componentOf typeCode="COMP">
    <encompassingEncounter classCode="ENC" moodCode="EVN">
      <code/>
      <effectiveTime nullFlavor="NI"/>
      <location typeCode="LOC">
        <healthCareFacility classCode="SDLOC">
          <serviceProviderOrganization classCode="ORG" determinerCode="INSTANCE">
            <asOrganizationPartOf classCode="PART">
              <!--病床号：DE01.00.026.00-->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${worsePatientCareRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${worsePatientCareRecord.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!--病房号：DE01.00.019.00-->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${worsePatientCareRecord.areaNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${worsePatientCareRecord.areaNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!--科室名称：DE08.10.026.00-->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${worsePatientCareRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${worsePatientCareRecord.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!--病区名称：DE08.10.054.00-->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${worsePatientCareRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${worsePatientCareRecord.areaName!'NA'}</name>
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
      <!-- 过敏史章节 -->
      <component>
        <section>
          <code code="48765-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Allergies, adverse reactions, alerts"/>
          <text/>
          <entry typeCode="DRIV">
            <act classCode="ACT" moodCode="EVN">
              <code/>
              <entryRelationship typeCode="SUBJ">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE02.10.023.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="过敏史标志"/>
                  <value value="${worsePatientCareRecord.allergyHistoryFlag!'NA'}" xsi:type="BL"/>
                  <participant typeCode="CSM">
                    <participantRole classCode="MANU">
                      <playingEntity classCode="MMAT">
                        <!--过敏史描述-->
                        <code code="DE02.10.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="过敏史"/>
                        <desc xsi:type="ST">${worsePatientCareRecord.allergyHistory!'NA'}</desc>
                      </playingEntity>
                    </participantRole>
                  </participant>
                </observation>
              </entryRelationship>
            </act>
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
              <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="疾病诊断编码"/>
              <value code="${worsePatientCareRecord.diagCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" xsi:type="CD" displayName="<@dict_tag value="${worsePatientCareRecord.diagCode!'NA'}" datasetCloumn="DIAG_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--生命体征章节-->
      <component>
        <section>
          <code code="8716-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="VITAL SIGNS"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.188.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="体重（kg）"/>
              <value unit="kg" value="${worsePatientCareRecord.weight!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.186.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="体温（℃）"/>
              <value unit="℃" value="${worsePatientCareRecord.temperature!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.206.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="心率（次/min）"/>
              <value unit="次/min" value="${worsePatientCareRecord.cardiotach!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.081.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="呼吸频率（次/min）"/>
              <value unit="次/min" value="${worsePatientCareRecord.breathFrequency!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <organizer classCode="BATTERY" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.10.174.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="收缩压"/>
                  <value unit="mmHg" value="${worsePatientCareRecord.systolicPressure!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.10.176.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="舒张压"/>
                  <value unit="mmHg" value="${worsePatientCareRecord.diastolicPressure!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.50.102.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="血糖检测值（mmol/L）"/>
              <value unit="mmol/L" value="${worsePatientCareRecord.bloodGlucoseValue!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--健康评估章节-->
      <component>
        <section>
          <code code="51848-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Assessment note"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE03.00.080.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="饮食情况代码"/>
              <value code="${worsePatientCareRecord.dietaryStatusCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.34" codeSystemName="饮食情况代码" displayName="<@dict_tag value="${worsePatientCareRecord.dietaryStatusCode!'NA'}" datasetCloumn="DIETARY_STATUS_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--护理记录章节-->
      <component>
        <section>
          <code displayName="护理记录"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.211.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理等级代码"/>
              <value code="${worsePatientCareRecord.nursingGradeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.259" codeSystemName="护理等级代码表" displayName="<@dict_tag value="${worsePatientCareRecord.nursingGradeCode!'NA'}" datasetCloumn="NURSING_GRADE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.212.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理类型代码"/>
              <value code="${worsePatientCareRecord.nursingTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.260" codeSystemName="护理类型代码表" displayName="<@dict_tag value="${worsePatientCareRecord.nursingTypeCode!'NA'}" datasetCloumn="NURSING_TYPE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--护理观察章节-->
      <component>
        <section>
          <code displayName="护理观察"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.031.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理观察项目名称"/>
              <value xsi:type="ST">${worsePatientCareRecord.nursingObservationName!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE02.10.028.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理观察结果"/>
                  <value xsi:type="ST">${worsePatientCareRecord.nursingObservationResult!'NA'}</value>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
      <!--护理操作章节：一个护理操作对应多个操作项目类目，一个操作项目类目又对应多个操作结果-->
      <component>
        <section>
          <code displayName="护理操作"/>
          <title>护理操作章节</title>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.342.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理操作名称"/>
              <value xsi:type="ST">${worsePatientCareRecord.nursingOperationName!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.210.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理操作项目类目名称"/>
                  <value xsi:type="ST">${worsePatientCareRecord.nursingOperationItem!'NA'}</value>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE06.00.209.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理操作结果"/>
                      <value xsi:type="ST">${worsePatientCareRecord.nursingOperationResult!'NA'}</value>
                    </observation>
                  </entryRelationship>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.207.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="呼吸机监护项目"/>
              <value xsi:type="ST">${worsePatientCareRecord.respiratorMonitoringItem!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>