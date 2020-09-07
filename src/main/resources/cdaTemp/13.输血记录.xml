<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.33"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0013" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>输血记录</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <!--文档记录对象（患者） [1..*] contextControlCode="OP"表示本信息可以被重载-->
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--门诊号标识-->
      <id extension="${transfusionRecord.outpNo!'NA'}" root="2.16.156.10011.1.11"/>
      <!--住院号标识-->
      <id extension="${transfusionRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <!--电子申请单编号-->
      <id extension="${transfusionRecord.electronicApplyNo!'NA'}" root="2.16.156.10011.1.24"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${transfusionRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${transfusionRecord.patientSex!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${transfusionRecord.patientSex!'NA'}" datasetCloumn="PATIENT_SEX">${dict.desc}</@dict_tag>"/>
        <!-- 年龄 -->
        <#if transfusionRecord.ageYear??>
        <age unit="岁" value="${transfusionRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${transfusionRecord.patientMonth!'NA'}"/>
        </#if>
      </patient>
    </patientRole>
  </recordTarget>
  <!-- 文档创作者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <time value="${transfusionRecord.signDatetime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${transfusionRecord.doctorNameSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${transfusionRecord.doctorNameSign!'NA'}</name>
      </assignedPerson>
    </assignedAuthor>
  </author>
  <!-- 保管机构 -->
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
    <time value="${transfusionRecord.signDatetime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${transfusionRecord.doctorNameSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="医师"/>
      <assignedPerson>
        <name>${transfusionRecord.doctorNameSign!'NA'}</name>
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
                <id extension="${transfusionRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${transfusionRecord.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!-- DE01.00.019.00病房号 -->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${transfusionRecord.areaNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${transfusionRecord.areaNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!-- DE08.10.026.00科室名称 -->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${transfusionRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${transfusionRecord.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!-- DE08.10.054.00病区名称 -->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${transfusionRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${transfusionRecord.areaName!'NA'}</name>
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
      <!--实验室检查章节 -->
      <component>
        <section>
          <code code="30954-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="STUDIES SUMMARY"/>
          <text/>
          <entry typeCode="COMP">
            <!-- 血型-->
            <organizer classCode="BATTERY" moodCode="EVN">
              <statusCode/>
              <component contextConductionInd="true" typeCode="COMP">
                <!-- ABO血型 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="ABO血型代码"/>
                  <value code="${transfusionRecord.aboBlood!'NA'}" codeSystem="2.16.156.10011.2.3.1.85" codeSystemName="ABO血型代码表" displayName="<@dict_tag value="${transfusionRecord.aboBlood!'NA'}" datasetCloumn="ABO_BLOOD">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </component>
              <component contextConductionInd="true" typeCode="COMP">
                <!-- Rh血型 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.010.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="Rh（D）血型代码"/>
                  <value code="${transfusionRecord.rhBloodCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.250" codeSystemName="Rh(D)血型代码表" displayName="<@dict_tag value="${transfusionRecord.rhBloodCode!'NA'}" datasetCloumn="RH_BLOOD_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <!-- 主要健康问题章节  -->
      <component>
        <section>
          <code code="11450-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PROBLEM LIST"/>
          <text/>
          <!--疾病诊断-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <!--疾病诊断编码-->
              <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="疾病诊断编码"/>
              <value code="${transfusionRecord.diagCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${transfusionRecord.diagCode!'NA'}" datasetCloumn="DIAG_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--输血章节-->
      <component>
        <section>
          <code code="56836-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="History of blood transfusion"/>
          <text/>
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <!--输血日期时间 -->
              <effectiveTime>
                <high value="${transfusionRecord.bloodTransferedDatetime!'NA'}"/>
              </effectiveTime>
              <entryRelationship typeCode="COMP">
                <!-- 输血史标识代码 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.106.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血史标识代码"/>
                  <value code="${transfusionRecord.bloodTransfusionHistory!'NA'}" codeSystem="2.16.156.10011.2.3.2.42" codeSystemName="输血史标识代码表" displayName="<@dict_tag value="${transfusionRecord.bloodTransfusionHistory!'NA'}" datasetCloumn="BLOOD_TRANSFUSION_HISTORY">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <!-- 输血性质代码 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.147.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血性质代码"/>
                  <value code="${transfusionRecord.transfusionNatureCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.43" codeSystemName="输血性质代码表" displayName="<@dict_tag value="${transfusionRecord.transfusionNatureCode!'NA'}" datasetCloumn="TRANSFUSION_NATURE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <!-- 申请ABO血型代码 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="申请ABO血型代码"/>
                  <value code="${transfusionRecord.applicationAboBloodType!'NA'}" codeSystem="2.16.156.10011.2.3.1.85" codeSystemName="ABO血型代码表" displayName="<@dict_tag value="${transfusionRecord.applicationAboBloodType!'NA'}" datasetCloumn="APPLICATION_ABO_BLOOD_TYPE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <!-- 申请Rh血型代码 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.010.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="申请Rh（D）血型代码"/>
                  <value code="${transfusionRecord.applicationRhBloodType!'NA'}" codeSystem="2.16.156.10011.2.3.1.250" codeSystemName="Rh(D)血型代码表" displayName="<@dict_tag value="${transfusionRecord.applicationRhBloodType!'NA'}" datasetCloumn="APPLICATION_RH_BLOOD_TYPE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <!-- 输血指征 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.340.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血指征"/>
                  <value xsi:type="ST">${transfusionRecord.bloodTransfusionIndication!'NA'}</value>
                </observation>
              </entryRelationship>
              <!-- 输血过程记录 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.181.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血过程记录"/>
                  <value xsi:type="ST">${transfusionRecord.bloodTransfusionProcess!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--输血品种代码 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE08.50.040.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血品种代码"/>
                  <value code="${transfusionRecord.bloodTransfusionVarietyCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.251" codeSystemName="输血品种代码表" displayName="<@dict_tag value="${transfusionRecord.bloodTransfusionVarietyCode!'NA'}" datasetCloumn="BLOOD_TRANSFUSION_VARIETY_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <!-- 血袋编码 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE01.00.023.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="血袋编码"/>
                  <value value="${transfusionRecord.bloodNo!'NA'}" xsi:type="INT"/>
                </observation>
              </entryRelationship>
              <!--输血量（mL） -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.267.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血量（mL）"/>
                  <value unit="mL" value="${transfusionRecord.bloodTransferedValue!'NA'}" xsi:type="PQ"/>
                </observation>
              </entryRelationship>
              <!--输血量计量单位 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE08.50.036.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血量计量单位"/>
                  <value xsi:type="ST">${transfusionRecord.bloodVolumeUnit!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--输血反应标志 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.264.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血反应标志"/>
                  <value value="${transfusionRecord.bloodtransferedReactionCode!'NA'}" xsi:type="BL"/>
                </observation>
              </entryRelationship>
              <!--输血反应类型 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.265.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血反应类型"/>
                  <value code="${transfusionRecord.bloodReactionTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.252" codeSystemName="输血反应类型代码表" displayName="<@dict_tag value="${transfusionRecord.bloodReactionTypeCode!'NA'}" datasetCloumn="BLOOD_REACTION_TYPE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <!-- 输血次数 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.263.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血次数"/>
                  <value value="${transfusionRecord.timeBlood!'NA'}" xsi:type="INT"/>
                </observation>
              </entryRelationship>
              <!-- 输血原因 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.107.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血原因"/>
                  <value xsi:type="ST">${transfusionRecord.bloodtransferedReason!'NA'}</value>
                </observation>
              </entryRelationship>
            </procedure>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>