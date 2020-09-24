﻿<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.54"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0034" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>入院记录</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <!--文档记录对象（患者） [1..*] contextControlCode="OP"表示本信息可以被重载-->
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--住院号标识-->
      <id extension="${admissionRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <!-- 现住址 -->
      <addr use="H">
        <houseNumber>${admissionRecord.addressDoors!'NA'}</houseNumber>
        <streetName>${admissionRecord.addressVillage!'NA'}</streetName>
        <township>${admissionRecord.addressTownship!'NA'}</township>
        <county>${admissionRecord.addressCounty!'NA'}</county>
        <city>${admissionRecord.addressCity!'NA'}</city>
        <state>${admissionRecord.addressProvince!'NA'}</state>
      </addr>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${admissionRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${admissionRecord.patientSex!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${admissionRecord.patientSex!'NA'}" datasetCloumn="PATIENT_SEX">${dict.desc}</@dict_tag>"/>
        <maritalStatusCode code="${admissionRecord.maritalStatusCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.5" codeSystemName="婚姻状况代码表(GB/T 2261.2)" displayName="<@dict_tag value="${admissionRecord.maritalStatusCode!'NA'}" datasetCloumn="MARITAL_STATUS_CODE">${dict.desc}</@dict_tag>"/>
        <#if admissionRecord.nation??>
        <ethnicGroupCode code="${admissionRecord.nation!'NA'}" codeSystem="2.16.156.10011.2.3.3.3" codeSystemName="民族类别代码表(GB 3304)" displayName="<@dict_tag value="${admissionRecord.nation!'NA'}" datasetCloumn="NATION">${dict.desc}</@dict_tag>"/>
        </#if>
        <!-- 年龄 -->
        <#if admissionRecord.ageYear??>
        <age unit="岁" value="${admissionRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${admissionRecord.patientMonth!'NA'}"/>
        </#if>
        <!--职业状况-->
        <occupation>
          <occupationCode code="${admissionRecord.occupatientionClassCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.13" codeSystemName="从业状况(个人身体)代码表(GB/T 2261.4)" displayName="<@dict_tag value="${admissionRecord.occupatientionClassCode!'NA'}" datasetCloumn="OCCUPATIENTION_CLASS_CODE">${dict.desc}</@dict_tag>"/>
        </occupation>
        </patient>
    </patientRole>
  </recordTarget>
    <!-- 文档创作者 -->
    <author contextControlCode="OP" typeCode="AUT">
    <time value="${admissionRecord.inpDate!'NA'}" xsi:type="TS"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${admissionRecord.physicianDoctorSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${admissionRecord.physicianDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedAuthor>
  </author>
  <!-- 病史陈述者 -->
  <informant>
    <assignedEntity>
      <id extension="${admissionRecord.medicalhisName!'NA'}" root="2.16.156.10011.1.3"/>
      <#if admissionRecord.presenterPatientRelatCode??>
      <!--陈述者与患者的关系代码-->
      <code code="${admissionRecord.presenterPatientRelatCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.8" codeSystemName="家庭关系代码表(GB/T 4761)" displayName="<@dict_tag value="${admissionRecord.presenterPatientRelatCode!'NA'}" datasetCloumn="PRESENTER_PATIENT_RELAT_CODE">${dict.desc}</@dict_tag>"/>
      </#if>
      <assignedPerson>
        <!-- 病史陈述者姓名 -->
        <name>${admissionRecord.medicalhisName!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </informant>
  <!-- 保管机构 -->
  <custodian typeCode="CST">
    <assignedCustodian classCode="ASSIGNED">
      <representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="${hospitalInfo.organCode!'NA'}" root="2.16.156.10011.1.5"/>
        <name>${hospitalInfo.organName!'NA'}</name>
      </representedCustodianOrganization>
    </assignedCustodian>
  </custodian>
  <!-- 最终审核者签名 -->
  <legalAuthenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${admissionRecord.archiaterDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="主任医师"/>
      <assignedPerson>
        <name>${admissionRecord.archiaterDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </legalAuthenticator>
  <!-- 接诊医师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${admissionRecord.receiveDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="接诊医师"/>
      <assignedPerson>
        <name>${admissionRecord.receiveDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!--住院医师签名-->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${admissionRecord.inpDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="住院医师"/>
      <assignedPerson>
        <name>${admissionRecord.inpDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!--主治医师签名-->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${admissionRecord.physicianDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="主治医师"/>
      <assignedPerson>
        <name>${admissionRecord.physicianDoctorSign!'NA'}</name>
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
      <!-- 入院日期时间 DE06.00.092.00 -->
      <effectiveTime value="${admissionRecord.inpDate!'NA'}"/>
      <location>
        <healthCareFacility>
          <serviceProviderOrganization>
            <asOrganizationPartOf classCode="PART">
              <!-- DE01.00.026.00病床号 -->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${admissionRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${admissionRecord.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!-- DE01.00.019.00病房号 -->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${admissionRecord.roomNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${admissionRecord.roomNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!-- DE08.10.026.00科室名称 -->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${admissionRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${admissionRecord.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!-- DE08.10.054.00病区名称 -->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${admissionRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${admissionRecord.areaName!'NA'}</name>
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
          <!--主诉条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.01.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="主诉"/>
              <value xsi:type="ST">${admissionRecord.chiefComplaint!'NA'}</value>
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
              <value xsi:type="ST">${admissionRecord.presentDiseaseHistory!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--既往史章节-->
      <component>
        <section>
          <code code="11348-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PAST ILLNESS"/>
          <text/>
          <!--一般健康状况标志-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.031.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="一般健康状况标志"/>
              <value value="${admissionRecord.healthStatusCode!'NA'}" xsi:type="BL"/>
              <!--疾病史（含外伤）-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE02.10.026.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="疾病史(含外伤)"/>
                  <value xsi:type="ST">${admissionRecord.diseasesHistory!'NA'}</value>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--患者传染性标志-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="患者传染性标志"/>
              <value value="${admissionRecord.communicableDiseasesFlag!'NA'}" xsi:type="BL"/>
              <!--传染病史-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE02.10.008.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="传染病史"/>
                  <value xsi:type="ST">${admissionRecord.communicableDiseasesHistory!'NA'}</value>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--婚育史条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.098.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="婚育史"/>
              <value xsi:type="ST">${admissionRecord.maritalHistory!'NA'}</value>
            </observation>
          </entry>
          <!--过敏史条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="过敏史"/>
              <value xsi:type="ST">${admissionRecord.allergyHistory!'NA'}</value>
            </observation>
          </entry>
          <!--手术史条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.061.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术史"/>
              <value xsi:type="ST">${admissionRecord.operationHistory!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--预防免疫史章节-->
      <component>
        <section>
          <code code="11369-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF IMMUNIZATIONS"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.101.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="预防接种史"/>
              <value xsi:type="ST">${admissionRecord.preventiveInoculationHistory!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--输血章节-->
      <component>
        <section>
          <code code="56836-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="History of blood transfusion"/>
          <text/>
          <!--输血史条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.100.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血史"/>
              <value xsi:type="ST">${admissionRecord.bloodTransfusionHistory!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--个人史章节-->
      <component>
        <section>
          <code code="29762-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Social history"/>
          <text/>
          <!--个人史条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.097.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="个人史"/>
              <value xsi:type="ST">${admissionRecord.personHistory!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--月经史章节-->
      <component>
        <section>
          <code code="49033-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Menstrual History"/>
          <text/>
          <!--月经史条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.102.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="月经史"/>
              <value xsi:type="ST">${admissionRecord.menstruationHistory!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--家族史章节-->
      <component>
        <section>
          <code code="10157-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF FAMILY MEMBER DISEASES"/>
          <text/>
          <!--家族史条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.103.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="家族史"/>
              <value xsi:type="ST">${admissionRecord.familyHistory!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--生命体征章节-->
      <component>
        <section>
          <code code="8716-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="VITAL SIGNS"/>
          <text/>
          <!--体格检查-体温（℃）-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.186.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="体温（℃）"/>
              <value unit="℃" value="${admissionRecord.physicalexamTemperature!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <!--体格检查-脉率（次/min）-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.118.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="脉率（次/min）"/>
              <value unit="次/min" value="${admissionRecord.physicalexamSphygmus!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <!--体格检查-呼吸频率（次/min）-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.082.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="呼吸频率（次/min）"/>
              <value unit="次/min" value="${admissionRecord.physicalexamBreathFrequency!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <!--体格检查-血压（mmHg）-->
          <entry>
            <organizer classCode="BATTERY" moodCode="EVN">
              <code displayName="血压"/>
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.10.174.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="收缩压"/>
                  <value unit="mmHg" value="${admissionRecord.physicalexamSystolicPressure!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.10.176.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="舒张压"/>
                  <value unit="mmHg" value="${admissionRecord.examDiastolicPressure!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--体格检查-身高（cm）-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.167.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="身高(cm)"/>
              <value unit="cm" value="${admissionRecord.height!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <!--体格检查-体重（kg）-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.188.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="体重(kg)"/>
              <value unit="kg" value="${admissionRecord.physicalexamWeight!'NA'}" xsi:type="PQ"/>
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
              <code code="DE04.10.219.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="一般状况检查结果"/>
              <value xsi:type="ST">${admissionRecord.generalhealthCheckResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-皮肤和黏膜检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.126.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="皮肤和黏膜检查结果"/>
              <value xsi:type="ST">${admissionRecord.physicalexamSkinmucosaResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-全身浅表淋巴结检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.114.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="全身浅表淋巴结检查结果"/>
              <value xsi:type="ST">${admissionRecord.lymphNodeCheckResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-头部及其器官检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.261.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="头部及其器官检查结果"/>
              <value xsi:type="ST">${admissionRecord.physicalexamHeadorganResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-颈部检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.255.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颈部检查结果"/>
              <value xsi:type="ST">${admissionRecord.neckCheckResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-胸部检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.263.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胸部检查结果"/>
              <value xsi:type="ST">${admissionRecord.chestCheckResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-腹部检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.046.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="腹部检查结果"/>
              <value xsi:type="ST">${admissionRecord.abdominalCheckResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-肛门指诊检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.065.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="肛门指诊检查结果描述"/>
              <value xsi:type="ST">${admissionRecord.physicalexamAnusResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-外生殖器检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.195.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="外生殖器检查结果"/>
              <value xsi:type="ST">${admissionRecord.physicalexamGenitalsResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-脊柱检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.093.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="脊柱检查结果"/>
              <value xsi:type="ST">${admissionRecord.spineCheckResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-四肢检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.179.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="四肢检查结果"/>
              <value xsi:type="ST">${admissionRecord.limbsCheckResult!'NA'}</value>
            </observation>
          </entry>
          <!--体格检查-神经系统检查结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.149.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="神经系统检查结果"/>
              <value xsi:type="ST">${admissionRecord.examNervoussystemResult!'NA'}</value>
            </observation>
          </entry>
          <!--专科情况-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE08.10.061.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="专科情况"/>
              <value xsi:type="ST">${admissionRecord.specialistStatus!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--辅助检查章节-->
      <component>
        <section>
          <code displayName="辅助检查"/>
          <text/>
          <!--辅助检查结果条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.009.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="辅助检查结果"/>
              <value xsi:type="ST">${admissionRecord.auxiliaryexamiResult!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--主要健康问题章节-->
      <component>
        <section>
          <code code="11450-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PROBLEM LIST"/>
          <text/>
          <!--陈述内容可靠标志-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.143.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="陈述内容可靠标志"/>
              <value value="${admissionRecord.isCredible!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <!--初步诊断-西医条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="初步诊断-西医诊断名称"/>
              <!--初步诊断日期-->
              <effectiveTime value="${admissionRecord.preDiagnosisTodayDesc!'NA'}"/>
              <value xsi:type="ST">${admissionRecord.inpWmDiagname!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--初步诊断-西医诊断编码-代码-->
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="初步诊断-西医诊断编码"/>
                  <value code="${admissionRecord.pdWestDiagCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${admissionRecord.pdWestDiagCode!'NA'}" datasetCloumn="PD_WEST_DIAG_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <!--入院诊断顺位-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.080.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院诊断顺位"/>
                  <value value="${admissionRecord.inpAdmissionDiagnosisPicks!'NA'}" xsi:type="INT"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <#if admissionRecord.tcmFourResults??>
          <!--中医“四诊”观察结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.028.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医“四诊”观察结果"/>
              <value xsi:type="ST">${admissionRecord.tcmFourResults!'NA'}</value>
            </observation>
          </entry>
          </#if>
          <#if admissionRecord.diseasesCode??>
          <!--初步诊断-中医条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="初步诊断-中医病名名称"/>
              <!--初步诊断日期-->
              <effectiveTime value="${admissionRecord.preDiagnosisTodayDesc!'NA'}"/>
              <value xsi:type="ST">${admissionRecord.inpTcmDiagname!'NA'}</value>
              <#if admissionRecord.diseasesCode??>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--初步诊断-中医诊断编码-代码-->
                  <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="初步诊断-中医病名代码"/>
                  <value code="${admissionRecord.diseasesCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" displayName="<@dict_tag value="${admissionRecord.diseasesCode!'NA'}" datasetCloumn="DISEASES_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              </#if>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--初步诊断-中医证候编码-名称-->
                  <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="初步诊断-中医证候名称"/>
                  <value xsi:type="ST">${admissionRecord.inpTcmSymptomname!'NA'}</value>
                </observation>
              </entryRelationship>
              <#if admissionRecord.diagnoseSyndromesCode??>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--初步诊断-中医证候编码-代码-->
                  <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="初步诊断-中医证候代码"/>
                  <value code="${admissionRecord.diagnoseSyndromesCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" displayName="<@dict_tag value="${admissionRecord.diagnoseSyndromesCode!'NA'}" datasetCloumn="DIAGNOSE_SYNDROMES_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              </#if>
              <!--入院诊断顺位-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.080.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院诊断顺位"/>
                  <value value="${admissionRecord.inpAdmissionDiagnosisPicks!'NA'}" xsi:type="INT"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          </#if>
          <!--修正诊断-西医条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="修正诊断-西医诊断名称"/>
              <!--修正诊断日期-->
              <effectiveTime value="${admissionRecord.correctDiagnosisDate!'NA'}"/>
              <value xsi:type="ST">${admissionRecord.correctDiagnosisWmName!'NA'}</value>
              <#if admissionRecord.correctDiagnosisWmCode??>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--修正诊断-西医诊断编码-代码-->
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="修正诊断-西医诊断编码"/>
                  <value code="${admissionRecord.correctDiagnosisWmCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${admissionRecord.correctDiagnosisWmCode!'NA'}" datasetCloumn="CORRECT_DIAGNOSIS_WM_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              </#if>
              <!--入院诊断顺位-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.080.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院诊断顺位"/>
                  <value value="${admissionRecord.inpAdmissionDiagnosisPicks!'NA'}" xsi:type="INT"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--修正诊断-中医条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="修正诊断-中医病名名称"/>
              <!--修正诊断日期-->
              <effectiveTime value="${admissionRecord.correctDiagnosisDate!'NA'}"/>
              <value xsi:type="ST">${admissionRecord.inpTcmDiagname!'NA'}</value>
              <#if admissionRecord.diseaseNameCode??>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--修正诊断-中医诊断编码-代码-->
                  <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="修正诊断-中医病名代码"/>
                  <value code="${admissionRecord.diseaseNameCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" displayName="<@dict_tag value="${admissionRecord.diseaseNameCode!'NA'}" datasetCloumn="DISEASE_NAME_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              </#if>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--修正诊断-中医证候编码-名称-->
                  <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="修正诊断-中医证候名称"/>
                  <value xsi:type="ST">${admissionRecord.inpTcmSymptomname!'NA'}</value>
                </observation>
              </entryRelationship>
              <#if admissionRecord.symptomCode??>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--修正诊断-中医证候编码-代码-->
                  <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="修正诊断-中医证候代码"/>
                  <value code="${admissionRecord.symptomCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" displayName="<@dict_tag value="${admissionRecord.symptomCode!'NA'}" datasetCloumn="SYMPTOM_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              </#if>
              <!--入院诊断顺位-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.080.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院诊断顺位"/>
                  <value value="${admissionRecord.inpAdmissionDiagnosisPicks!'NA'}" xsi:type="INT"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--确定诊断-西医条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="确定诊断-西医诊断名称"/>
              <!--确定诊断日期-->
              <effectiveTime value="${admissionRecord.diagnosisTodayDesc!'NA'}"/>
              <value xsi:type="ST">${admissionRecord.diagWmDiagnosisName!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--确定诊断-西医诊断编码-代码-->
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="确定诊断-西医诊断编码"/>
                  <value code="${admissionRecord.diagWmDiagnosisCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${admissionRecord.diagWmDiagnosisCode!'NA'}" datasetCloumn="DIAG_WM_DIAGNOSIS_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <!--入院诊断顺位-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.080.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院诊断顺位"/>
                  <value value="${admissionRecord.inpAdmissionDiagnosisPicks!'NA'}" xsi:type="INT"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--确定诊断-中医条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="确定诊断-中医病名名称"/>
              <!--确定诊断日期-->
              <effectiveTime value="${admissionRecord.diagnosisTodayDesc!'NA'}"/>
              <value xsi:type="ST">${admissionRecord.diagCmDisseaseName!'NA'}</value>
              <#if admissionRecord.diagnosisTcmDiseasesCode??>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--确定诊断-中医诊断编码-代码-->
                  <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="确定诊断-中医病名代码"/>
                  <value code="${admissionRecord.diagnosisTcmDiseasesCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" displayName="<@dict_tag value="${admissionRecord.diagnosisTcmDiseasesCode!'NA'}" datasetCloumn="DIAGNOSIS_TCM_DISEASES_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              </#if>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="确定诊断-中医证候名称"/>
                  <value xsi:type="ST">${admissionRecord.diagCmSyndromesName!'NA'}</value>
                </observation>
              </entryRelationship>
              <#if admissionRecord.diagnosisTcmSyndromesCode??>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--确定诊断-中医证候编码-名称-->
                  <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="确定诊断-中医证候代码"/>
                  <value code="${admissionRecord.diagnosisTcmSyndromesCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" displayName="<@dict_tag value="${admissionRecord.diagnosisTcmSyndromesCode!'NA'}" datasetCloumn="DIAGNOSIS_TCM_SYNDROMES_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              </#if>
              <!--入院诊断顺位-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.080.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院诊断顺位"/>
                  <value value="${admissionRecord.inpAdmissionDiagnosisPicks!'NA'}" xsi:type="INT"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--补充诊断-西医条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="补充诊断-西医诊断名称"/>
              <!--补充诊断日期-->
              <effectiveTime value="${admissionRecord.supplementaryDiagnosticDate!'NA'}"/>
              <value xsi:type="ST">${admissionRecord.supplementaryDiagnosisName!'NA'}</value>
              <#if admissionRecord.supplementaryDiagnosisCode??>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <!--补充诊断-西医诊断编码-代码-->
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="补充诊断-西医诊断编码"/>
                  <value code="${admissionRecord.supplementaryDiagnosisCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11.3" codeSystemName="诊断代码表(ICD-10)" displayName="<@dict_tag value="${admissionRecord.supplementaryDiagnosisCode!'NA'}" datasetCloumn="SUPPLEMENTARY_DIAGNOSIS_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              </#if>
              <!--入院诊断顺位-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.080.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院诊断顺位"/>
                  <value value="${admissionRecord.inpAdmissionDiagnosisPicks!'NA'}" xsi:type="INT"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
      <!--治疗计划章节-->
      <component>
        <section>
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>
          <text/>
          <!--治则治法条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.300.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="治则治法"/>
              <value xsi:type="ST">${admissionRecord.therapeuticPrinciple!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>