﻿<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.53"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0033" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>中医住院病案首页</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <!--文档记录对象（患者） [1..*] contextControlCode="OP"表示本信息可以被重载-->
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--健康卡号-->
      <id extension="${emrBasicpatient.healthCardNo!'NA'}" root="2.16.156.10011.1.19"/>
      <!--住院号标识-->
      <id extension="${cnInpatientMedicalRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <!--病案号标识-->
      <id extension="${cnInpatientMedicalRecord.mrNo!'NA'}" root="2.16.156.10011.1.13"/>
      <!-- 病理号 -->
      <id extension="${cnInpatientMedicalRecord.pathologyNo!'NA'}" root="2.16.156.10011.1.8"/>
      <!-- 现住址 -->
      <addr use="H">
        <!--现住址-门牌号码-->
        <houseNumber>${cnInpatientMedicalRecord.currentDoors!'NA'}</houseNumber>
        <!--现住址-村（街、路、弄等）-->
        <streetName>${cnInpatientMedicalRecord.currentVillage!'NA'}</streetName>
        <!--现住址-乡（镇、街道办事处）-->
        <township>${cnInpatientMedicalRecord.currentTownship!'NA'}</township>
        <!--现住址-县（区）-->
        <county>${cnInpatientMedicalRecord.currentCounty!'NA'}</county>
        <!-- 现住址-市（地区、州）-->
        <city>${cnInpatientMedicalRecord.currentCity!'NA'}</city>
        <!-- 现住址-省（自治区、直辖市）-->
        <state>${cnInpatientMedicalRecord.currentProvince!'NA'}</state>
        <#if cnInpatientMedicalRecord.currentZipCode??>
        <!--现住址-邮政编码-->
        <postalCode>${cnInpatientMedicalRecord.currentZipCode!'NA'}</postalCode>
        </#if>
      </addr>
      <!--电话号码-->
      <telecom value="<@privacy_tag value="${cnInpatientMedicalRecord.currentPhone!'NA'}" privacyId="5">${privacy}</@privacy_tag>"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号-->
        <id extension="<@privacy_tag value="${cnInpatientMedicalRecord.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <!--患者姓名-->
        <name><@privacy_tag value="${cnInpatientMedicalRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <!--患者性别-->
        <administrativeGenderCode code="${cnInpatientMedicalRecord.sexCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${cnInpatientMedicalRecord.sexCode!'NA'}" datasetCloumn="SEX_CODE">${dict.desc}</@dict_tag>"/>
        <!--患者出生日期-->
        <birthTime value="${cnInpatientMedicalRecord.birthday!'NA'}"/>
        <!--患者婚姻状况-->
        <maritalStatusCode code="${cnInpatientMedicalRecord.maritalStatusCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.5" codeSystemName="婚姻状况代码表(GB/T 2261.2)" displayName="<@dict_tag value="${cnInpatientMedicalRecord.maritalStatusCode!'NA'}" datasetCloumn="MARITAL_STATUS_CODE">${dict.desc}</@dict_tag>"/>
        <!--患者民族类别-->
        <ethnicGroupCode code="${cnInpatientMedicalRecord.nation!'NA'}" codeSystem="2.16.156.10011.2.3.3.3" codeSystemName="民族类别代码表(GB 3304)" displayName="<@dict_tag value="${cnInpatientMedicalRecord.nation!'NA'}" datasetCloumn="NATION">${dict.desc}</@dict_tag>"/>
        <!--出生地-->
        <birthplace>
          <place classCode="PLC" determinerCode="INSTANCE">
            <addr>
              <!--出生地-县（区）-->
              <county>${cnInpatientMedicalRecord.birthplaceCounty!'NA'}</county>
              <!-- 出生地-市（地区、州）-->
              <city>${cnInpatientMedicalRecord.birthplaceCity!'NA'}</city>
              <!-- 出生地-省（自治区、直辖市）-->
              <state>${cnInpatientMedicalRecord.birthplaceProvince!'NA'}</state>
              <#if cnInpatientMedicalRecord.accountZipCode??>
              <!--户口地址-邮政编码-->
              <postalCode>${cnInpatientMedicalRecord.accountZipCode!'NA'}</postalCode>
              </#if>
            </addr>
          </place>
        </birthplace>
        <!-- 国籍 -->
        <nationality code="${cnInpatientMedicalRecord.nationnalityCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.1" codeSystemName="世界各国和地区名称代码(GB/T2659)" displayName="<@dict_tag value="${cnInpatientMedicalRecord.nationnalityCode!'NA'}" datasetCloumn="NATIONNALITY_CODE">${dict.desc}</@dict_tag>"/>
        <!-- 年龄 -->
        <#if cnInpatientMedicalRecord.ageYear??>
        <age unit="岁" value="${cnInpatientMedicalRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${cnInpatientMedicalRecord.patientMonth!'NA'}"/>
        </#if>
        <!-- 工作单位 -->
        <employerOrganization>
          <!-- 工作单位名称 -->
          <name>${cnInpatientMedicalRecord.workunitName!'NA'}</name>
          <!-- 工作单位电话-->
          <telecom value="${cnInpatientMedicalRecord.workunitPhone!'NA'}"/>
          <!-- 工作地址 -->
          <addr use="WP">
            <!--  工作单位地址-门牌号码-->
            <houseNumber>${cnInpatientMedicalRecord.workunitDoors!'NA'}</houseNumber>
            <!--工作单位地址-村（街、路、弄等）-->
            <streetName>${cnInpatientMedicalRecord.workunitVillage!'NA'}</streetName>
            <!--工作单位地址-乡（镇、街道办事处）-->
            <township>${cnInpatientMedicalRecord.workunitTownship!'NA'}</township>
            <!--工作单位地址-县（区）-->
            <county>${cnInpatientMedicalRecord.workunitCounty!'NA'}</county>
            <!--工作单位地址-市（地区、州）-->
            <city>${cnInpatientMedicalRecord.workunitCity!'NA'}</city>
            <!--工作单位地址-省（自治区、直辖市）-->
            <state>${cnInpatientMedicalRecord.workunitProvince!'NA'}</state>
            <#if cnInpatientMedicalRecord.currentZipCode??>
            <!--工作单位地址-邮政编码-->
            <postalCode>${cnInpatientMedicalRecord.currentZipCode!'NA'}</postalCode>
            </#if>
          </addr>
        </employerOrganization>
        <!-- 户口信息 -->
        <household>
          <place classCode="PLC" determinerCode="INSTANCE">
            <!-- 户口地址 -->
            <addr>
              <!--户口地址-门牌号码-->
              <houseNumber>${cnInpatientMedicalRecord.accountDoors!'NA'}</houseNumber>
              <!--户口地址-村（街、路、弄等）-->
              <streetName>${cnInpatientMedicalRecord.accountVillage!'NA'}</streetName>
              <!--户口地址-乡（镇、街道办事处）-->
              <township>${cnInpatientMedicalRecord.accountTownship!'NA'}</township>
              <!-- 户口地址-县（区）-->
              <county>${cnInpatientMedicalRecord.accountCounty!'NA'}</county>
              <!--户口地址-市（地区、州）-->
              <city>${cnInpatientMedicalRecord.accountCity!'NA'}</city>
              <!--户口地址-省（自治区、直辖市）-->
              <state>${cnInpatientMedicalRecord.accountProvince!'NA'}</state>
              <#if cnInpatientMedicalRecord.accountZipCode??>
              <!--户口地址-邮政编码-->
              <postalCode>${cnInpatientMedicalRecord.accountZipCode!'NA'}</postalCode>
              </#if>
            </addr>
          </place>
        </household>
        <!-- 籍贯信息 -->
        <nativePlace>
          <place classCode="PLC" determinerCode="INSTANCE">
            <addr>
              <!--籍贯-市（地区、州）-->
              <city>${cnInpatientMedicalRecord.nativeplaceCity!'NA'}</city>
              <!--籍贯-省（自治区、直辖市）-->
              <state>${cnInpatientMedicalRecord.nativeplaceProvince!'NA'}</state>
            </addr>
          </place>
        </nativePlace>
        <!--职业状况-->
        <occupation>
          <occupationCode code="${cnInpatientMedicalRecord.occupatientionClassCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.13" codeSystemName="从业状况(个人身体)代码表(GB/T 2261.4)" displayName="<@dict_tag value="${cnInpatientMedicalRecord.occupatientionClassCode!'NA'}" datasetCloumn="OCCUPATIENTION_CLASS_CODE">${dict.desc}</@dict_tag>"/>
        </occupation>
      </patient>
      <!--提供患者服务机构-->
      <providerOrganization classCode="ORG" determinerCode="INSTANCE">
        <!--机构标识号-->
        <id extension="${cnInpatientMedicalRecord.orgId!'NA'}" root="2.16.156.10011.1.5"/>
        <!--住院机构名称-->
        <name>${cnInpatientMedicalRecord.orgName!'NA'}</name>
      </providerOrganization>
    </patientRole>
  </recordTarget>
  <!-- 文档创作者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <time value="${cnInpatientMedicalRecord.inpDate!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${cnInpatientMedicalRecord.physicianDoctorSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${cnInpatientMedicalRecord.physicianDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedAuthor>
  </author>
  <!-- 保管机构 -->
  <custodian typeCode="CST">
    <assignedCustodian classCode="ASSIGNED">
      <representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="${cnInpatientMedicalRecord.orgId!'NA'}" root="2.16.156.10011.1.5"/>
        <name>${cnInpatientMedicalRecord.orgName!'NA'}</name>
      </representedCustodianOrganization>
    </assignedCustodian>
  </custodian>
  <!-- 科主任签名 -->
  <legalAuthenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${cnInpatientMedicalRecord.deptDirectorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="科主任"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${cnInpatientMedicalRecord.deptDirectorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </legalAuthenticator>
  <!-- 主任(副主任)医师 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${cnInpatientMedicalRecord.directorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="主任(副主任)医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${cnInpatientMedicalRecord.directorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 主治医师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${cnInpatientMedicalRecord.physicianDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="主治医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${cnInpatientMedicalRecord.physicianDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 住院医师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${cnInpatientMedicalRecord.inpDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="住院医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${cnInpatientMedicalRecord.inpDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 责任护士签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${cnInpatientMedicalRecord.dutyNurseSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="责任护士"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${cnInpatientMedicalRecord.dutyNurseSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 进修医师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${cnInpatientMedicalRecord.refresherDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="进修医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${cnInpatientMedicalRecord.refresherDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 实习医师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${cnInpatientMedicalRecord.internshipDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="实习医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${cnInpatientMedicalRecord.internshipDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 编码员签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${cnInpatientMedicalRecord.coderSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="编码员"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${cnInpatientMedicalRecord.coderSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!--其他参与者（联系人）@typeCode: NOT(ugent notification contact)，固定值，表示不同的参与者-->
  <participant typeCode="NOT">
    <associatedEntity classCode="ECON">
      <!--联系人类别，表示与患者之间的关系-->
      <code code="${cnInpatientMedicalRecord.relation!'NA'}" codeSystem="2.16.156.10011.2.3.3.8" codeSystemName="家庭关系代码表(GB/T 4761)" displayName="<@dict_tag value="${cnInpatientMedicalRecord.relation!'NA'}" datasetCloumn="RELATION">${dict.desc}</@dict_tag>"/>
      <!--联系人地址-->
      <addr use="H">
        <!--联系人地址-门牌号码-->
        <houseNumber>${cnInpatientMedicalRecord.cahouseNumber!'NA'}</houseNumber>
        <!--联系人地址-村（街、路、弄等）-->
        <streetName>${cnInpatientMedicalRecord.contactVillage!'NA'}</streetName>
        <!--联系人地址-乡（镇、街道办事处）-->
        <township>${cnInpatientMedicalRecord.contactTownship!'NA'}</township>
        <!-- 联系人地址-县（区）-->
        <county>${cnInpatientMedicalRecord.cacounty!'NA'}</county>
        <!--联系人地址-市（地区、州）-->
        <city>${cnInpatientMedicalRecord.contactCity!'NA'}</city>
        <!--联系人地址-省（自治区、直辖市）-->
        <state>${cnInpatientMedicalRecord.contactProvince!'NA'}</state>
        <#if cnInpatientMedicalRecord.workunitZipCode??>
        <!--工作单位地址-邮政编码-->
        <postalCode>${cnInpatientMedicalRecord.workunitZipCode!'NA'}</postalCode>
        </#if>
      </addr>
      <!--联系人电话号码-->
      <telecom use="H" value="${cnInpatientMedicalRecord.contactPhone!'NA'}"/>
      <associatedPerson classCode="PSN" determinerCode="INSTANCE">
        <!--联系人姓名-->
        <name>${cnInpatientMedicalRecord.contactName!'NA'}</name>
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
  <!--文档中医疗卫生事件的就诊场景,即入院场景记录-->
  <componentOf typeCode="COMP">
    <encompassingEncounter classCode="ENC" moodCode="EVN">
      <!--入院途径 -->
      <code code="${cnInpatientMedicalRecord.inpApproach!'NA'}" codeSystem="2.16.156.10011.2.3.1.270" codeSystemName="入院途径代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.inpApproach!'NA'}" datasetCloumn="INP_APPROACH">${dict.desc}</@dict_tag>"/>
      <!--就诊时间-->
      <effectiveTime>
        <!--入院日期-->
        <low value="${cnInpatientMedicalRecord.inpDate!'NA'}"/>
        <!--出院日期-->
        <high value="${cnInpatientMedicalRecord.dishospitalDate!'NA'}"/>
      </effectiveTime>
      <location typeCode="LOC">
        <healthCareFacility classCode="SDLOC">
          <serviceProviderOrganization classCode="ORG" determinerCode="INSTANCE">
            <asOrganizationPartOf classCode="PART">
              <!--入院病房-->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${cnInpatientMedicalRecord.inpRoom!'NA'}" root="2.16.156.10011.1.21"/>
                <name>${cnInpatientMedicalRecord.inpRoom!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!--入院科室-->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${cnInpatientMedicalRecord.inpDeptName!'NA'}" root="2.16.156.10011.1.26"/>
                    <name>${cnInpatientMedicalRecord.inpDeptName!'NA'}</name>
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
      <!--生命体征章节-->
      <component>
        <section>
          <code code="8716-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="VITAL SIGNS"/>
          <text/>
          <!--新生儿入院体重（g）-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="新生儿入院体重（g）"/>
              <value unit="g" value="${cnInpatientMedicalRecord.newbornInpWeight!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <!--新生儿出生体重（g）-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="新生儿出生体重（g）"/>
              <value unit="g" value="${cnInpatientMedicalRecord.newbornBirthWeight!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--诊断记录章节-->
      <component>
        <section>
          <code code="29548-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
          <text/>
          <!--门（急）诊诊断-中医诊断条目-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（中医诊断）名称">
                    <qualifier>
                      <name displayName="中医诊断名称"/>
                    </qualifier>
                  </code>
                  <value xsi:type="ST">${cnInpatientMedicalRecord.outpTcmDiagname!'NA'}</value>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（中医诊断）病名编码">
                    <qualifier>
                      <name displayName="中医诊断代码"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.outpTcmDiagcode!'NA'}" displayName="<@dict_tag value="${cnInpatientMedicalRecord.outpTcmDiagcode!'NA'}" datasetCloumn="OUTP_TCM_DIAGCODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--门（急）诊诊断-中医诊断症候条目-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（中医证候）名称">
                    <qualifier>
                      <name displayName="中医证候名称"/>
                    </qualifier>
                  </code>
                  <value xsi:type="ST">${cnInpatientMedicalRecord.outpDiagnosisTcmName!'NA'}</value>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（中医证候）证候编码">
                    <qualifier>
                      <name displayName="中医证候代码"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.outpTcmSymptomcode!'NA'}" displayName="<@dict_tag value="${cnInpatientMedicalRecord.outpTcmSymptomcode!'NA'}" datasetCloumn="OUTP_TCM_SYMPTOMCODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--门（急）诊诊断-西医诊断条目-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（西医诊断）名称">
                    <qualifier>
                      <name displayName="西医诊断名称"/>
                    </qualifier>
                  </code>
                  <value xsi:type="ST">${cnInpatientMedicalRecord.outpWmDiagname!'NA'}</value>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（西医诊断）疾病编码">
                    <qualifier>
                      <name displayName="西医诊断代码"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.outpWmDiagcode!'NA'}" displayName="<@dict_tag value="${cnInpatientMedicalRecord.outpWmDiagcode!'NA'}" datasetCloumn="OUTP_WM_DIAGCODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--病理诊断-疾病名称-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <id root="2.16.156.10011.1.8" extension="${cnInpatientMedicalRecord.pathologyDiagnosticCode!'NA'}"/>
                  <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病理诊断名称">
                    <qualifier>
                      <name displayName="病理诊断名称"/>
                    </qualifier>
                  </code>
                  <value xsi:type="ST">${cnInpatientMedicalRecord.diagResult!'NA'}</value>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病理诊断编码">
                    <qualifier>
                      <name displayName="病理诊断代码"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.pathologyDiagnosticCode!'NA'}" displayName="<@dict_tag value="${cnInpatientMedicalRecord.pathologyDiagnosticCode!'NA'}" datasetCloumn="PATHOLOGY_DIAGNOSTIC_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <!-- 主要健康问题章节-->
      <component>
        <section>
          <code code="11450-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PROBLEM LIST"/>
          <text/>
          <!--治疗类别-->
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE06.00.304.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
              <value code="${cnInpatientMedicalRecord.treatTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.264" codeSystemName="治疗类别代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.treatTypeCode!'NA'}" datasetCloumn="TREAT_TYPE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <!--实施临床路径 -->
          <entry>
            <observation classCode="OBS " moodCode="EVN">
              <code code="HDSD00.12.099" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="实施临床路径"/>
              <value code="${cnInpatientMedicalRecord.clinicalPathCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.57" codeSystemName="实施临床路径标志代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.clinicalPathCode!'NA'}" datasetCloumn="CLINICAL_PATH_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <!--住院者疾病状态代码-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="住院者疾病状态代码"/>
              <value code="${cnInpatientMedicalRecord.diseaseStatusCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.100" codeSystemName="住院者疾病状态代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.diseaseStatusCode!'NA'}" datasetCloumn="DISEASE_STATUS_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <!--住院患者损伤和中毒外部原因-->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.152.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="损伤中毒的外部原因"/>
              <value xsi:type="ST">${cnInpatientMedicalRecord.injuryPosionReason!'NA'}</value>
              <entryRelationship negationInd="false" typeCode="REFR">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.078.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="损伤中毒的外部原因-疾病编码"/>
                  <value code="${cnInpatientMedicalRecord.injuryDiseaseCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" xsi:type="CD" displayName="<@dict_tag value="${cnInpatientMedicalRecord.injuryDiseaseCode!'NA'}" datasetCloumn="INJURY_DISEASE_CODE">${dict.desc}</@dict_tag>"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--颅脑损伤患者入院前昏迷时间-->
          <entry typeCode="COMP">
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode nullFlavor="UNK"/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.01" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院前昏迷时间-d"/>
                  <value unit="d" value="${cnInpatientMedicalRecord.headinjuryInpbeforecomaDay!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.02" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院前昏迷时间-h"/>
                  <value unit="h" value="${cnInpatientMedicalRecord.headinjuryInpbeforecomaHour!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.03" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院前昏迷时间-min"/>
                  <value unit="min" value="${cnInpatientMedicalRecord.headinjuryInpbeforMin!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--颅脑损伤患者入院后昏迷时间-->
          <entry typeCode="COMP">
            <organizer classCode="CLUSTER" moodCode="EVN">
              <code displayName="颅脑损伤患者入院后昏迷时间"/>
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.01" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院后昏迷时间-d"/>
                  <value unit="d" value="${cnInpatientMedicalRecord.headinjuryInpaftercomaDay!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.02" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院后昏迷时间-h"/>
                  <value unit="h" value="${cnInpatientMedicalRecord.headinjuryInpaftercomaHour!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.03" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院后昏迷时间-min"/>
                  <value unit="min" value="${cnInpatientMedicalRecord.headinjuryInpaftercomaMinute!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <!--转科记录章节 -->
      <component>
        <section>
          <code code="42349-1" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="REASON FOR REFERRAL"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code/>
              <value xsi:type="ST"/>
              <!--转科原因（数据元）-->
              <author>
                <time/>
                <assignedAuthor>
                  <id/>
                  <representedOrganization>
                    <!--转入科室名称-->
                    <name>${cnInpatientMedicalRecord.transitionDep!'NA'}</name>
                  </representedOrganization>
                </assignedAuthor>
              </author>
            </observation>
          </entry>
        </section>
      </component>
      <!--出院诊断章节-->
      <component>
        <section>
          <code code="11535-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Discharge Diagnosis"/>
          <text/>
          <!--出院中医诊断-主病 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院中医诊断-主病名称">
                    <qualifier>
                      <name displayName="主病名称"/>
                    </qualifier>
                  </code>
                  <value xsi:type="ST">${cnInpatientMedicalRecord.outpDiagnosisCnName!'NA'}</value>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <!--住院患者疾病中医诊断主病编码-->
                  <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院中医诊断-主病编码">
                    <qualifier>
                      <name displayName="主病代码"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.diagnosisDiseasesCode!'NA'}" displayName="<@dict_tag value="${cnInpatientMedicalRecord.diagnosisDiseasesCode!'NA'}" datasetCloumn="DIAGNOSIS_DISEASES_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE09.00.104.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院中医诊断-主病-入院病情代码">
                    <qualifier>
                      <name displayName="中医主病入院病情"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.outhosMainDiseaseInhosCode!'NA'}" displayName="<@dict_tag value="${cnInpatientMedicalRecord.outhosMainDiseaseInhosCode!'NA'}" datasetCloumn="OUTHOS_MAIN_DISEASE_INHOS_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.1.253" codeSystemName="入院病情代码表"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--出院中医主证诊断条目-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院中医诊断-主证名称">
                    <qualifier>
                      <name displayName="主证名称"/>
                    </qualifier>
                  </code>
                  <value xsi:type="ST">${cnInpatientMedicalRecord.outpDiagnosisTcmSymptom!'NA'}</value>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <!--住院患者疾病中医诊断主证编码-->
                  <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院中医诊断-主证代码">
                    <qualifier>
                      <name displayName="主证代码"/>
                    </qualifier>
                  </code>
                  <!--中医诊断代码/疾病诊断名称-->
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.outpTcmDiagnosisSyndromesCode!'NA'}"  displayName="<@dict_tag value="${cnInpatientMedicalRecord.outpTcmDiagnosisSyndromesCode!'NA'}" datasetCloumn="OUTP_TCM_DIAGNOSIS_SYNDROMES_CODE">${dict.desc}</@dict_tag>"  codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表（ GB/T 15657）"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE09.00.104.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院中医诊断-主证-入院病情代码">
                    <qualifier>
                      <name displayName="中医主证入院病情"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.outhosMainSymptomInhosCode!'NA'}" displayName="<@dict_tag value="${cnInpatientMedicalRecord.outhosMainSymptomInhosCode!'NA'}" datasetCloumn="OUTHOS_MAIN_SYMPTOM_INHOS_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.1.253" codeSystemName="入院病情代码表"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--出院西医主要诊断条目-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院西医诊断-主要诊断-疾病名称">
                    <qualifier>
                      <name displayName="主要诊断-疾病名称"/>
                    </qualifier>
                  </code>
                  <value xsi:type="ST">${cnInpatientMedicalRecord.seriousDiagnosis!'NA'}</value>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <!--住院患者疾病西医主要诊断类型代码-->
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="西医出院诊断-主要诊断-疾病编码">
                    <qualifier>
                      <name displayName="主要诊断疾病编码"/>
                    </qualifier>
                  </code>
                  <!--西医疾病诊断代码/疾病诊断名称-->
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.outpWmGivenCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${cnInpatientMedicalRecord.outpWmGivenCode!'NA'}" datasetCloumn="OUTP_WM_GIVEN_CODE">${dict.desc}</@dict_tag>"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE09.00.104.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院西医诊断-主要诊断-入院病情代码">
                    <qualifier>
                      <name displayName="主要诊断-入院病情代码"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.outhosWmMainInhosCode!'NA'}" displayName="<@dict_tag value="${cnInpatientMedicalRecord.outhosWmMainInhosCode!'NA'}" datasetCloumn="OUTHOS_WM_MAIN_INHOS_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.1.253" codeSystemName="入院病情代码表"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--西医出院诊断-其他诊断-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <!--西医出院诊断-其他诊断疾病编码-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="西医出院诊断-其他诊断疾病编码">
                    <qualifier>
                      <name displayName="其他诊断疾病编码"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.outpWmDiagnosisCode!'NA'}" displayName="<@dict_tag value="${cnInpatientMedicalRecord.outpWmDiagnosisCode!'NA'}" datasetCloumn="OUTP_WM_DIAGNOSIS_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
                </observation>
              </component>
              <!--出院西医诊断-其他诊断-入院病情代码-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE09.00.104.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院西医诊断-其他诊断-入院病情代码">
                    <qualifier>
                      <name displayName="其他诊断-入院病情代码"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${cnInpatientMedicalRecord.outhosWmOtherInhosCode!'NA'}" displayName="<@dict_tag value="${cnInpatientMedicalRecord.outhosWmOtherInhosCode!'NA'}" datasetCloumn="OUTHOS_WM_OTHER_INHOS_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.1.253" codeSystemName="入院病情代码表"/>
                </observation>
              </component>
              <!--出院西医诊断-其他诊断名称-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院西医诊断-其他诊断名称">
                    <qualifier>
                      <name displayName="其他诊断名称"/>
                    </qualifier>
                  </code>
                  <value xsi:type="ST">${cnInpatientMedicalRecord.outpWmDiagnosis!'NA'}</value>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--离院方式-->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.223.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="离院方式"/>
              <value xsi:type="CD" code="${cnInpatientMedicalRecord.dishospitalWayCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.265" codeSystemName="离院方式代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.dishospitalWayCode!'NA'}" datasetCloumn="DISHOSPITAL_WAY_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <!--拟接受医疗机构名称-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE08.10.013.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="拟接受医疗机构名称"/>
              <value xsi:type="ST">${hospitalInfo.receiveOrgName!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--过敏史章节-->
      <component>
        <section>
          <code code="48765-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Allergies, adverse reactions, alerts"/>
          <text/>
          <entry typeCode="DRIV">
            <act classCode="ACT" moodCode="EVN">
              <code nullFlavor="NA"/>
              <entryRelationship typeCode="SUBJ">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE02.10.023.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
                  <!--药物过敏标志-->
                  <value value="${cnInpatientMedicalRecord.drugAllergyFlag!'NA'}" xsi:type="BL"/>
                  <participant typeCode="CSM">
                    <participantRole classCode="MANU">
                      <playingEntity classCode="MMAT">
                        <code code="DE02.10.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="过敏药物"/>
                        <!--住院患者过敏药物-->
                        <desc xsi:type="ST">${cnInpatientMedicalRecord.allergyDrug!'NA'}</desc>
                      </playingEntity>
                    </participantRole>
                  </participant>
                </observation>
              </entryRelationship>
            </act>
          </entry>
        </section>
      </component>
      <!--实验室检验章节-->
      <component>
        <section>
          <code code="30954-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="STUDIES SUMMARY"/>
          <text/>
          <!-- 血型-->
          <entry typeCode="COMP">
            <organizer classCode="BATTERY" moodCode="EVN">
              <statusCode nullFlavor="UNK"/>
              <component contextConductionInd="true" typeCode="COMP">
                <!-- ABO血型 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
                  <value code="${cnInpatientMedicalRecord.aboBlood!'NA'}" codeSystem="2.16.156.10011.2.3.1.85" codeSystemName="ABO血型代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.aboBlood!'NA'}" datasetCloumn="ABO_BLOOD">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </component>
              <component contextConductionInd="true" typeCode="COMP">
                <!-- Rh血型 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.010.00" codeSystem="2.16.156.10011.2.2.2" codeSystemName="卫生信息数据元目录"/>
                  <value code="${cnInpatientMedicalRecord.rhBloodCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.250" codeSystemName="Rh(D)血型代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.rhBloodCode!'NA'}" datasetCloumn="RH_BLOOD_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <!--手术操作章节-->
      <component>
        <section>
          <code code="47519-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PROCEDURES"/>
          <text/>
          <entry>
            <!-- 1..1 手术记录 -->
            <procedure classCode="PROC" moodCode="EVN">
              <code code="${cnInpatientMedicalRecord.operationCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)" displayName="<@dict_tag value="${cnInpatientMedicalRecord.operationCode!'NA'}" datasetCloumn="OPERATION_CODE">${dict.desc}</@dict_tag>"/>
              <statusCode/>
              <!--操作日期/时间-->
              <effectiveTime value="${cnInpatientMedicalRecord.operationStartDatetime!'NA'}"/>
              <!--手术者-->
              <performer>
                <assignedEntity>
                  <id extension="${cnInpatientMedicalRecord.operationDoctorName!'NA'}" root="2.16.156.10011.1.4"/>
                  <assignedPerson>
                    <!--手术者签名-->
                    <name>${cnInpatientMedicalRecord.operationDoctorName!'NA'}</name>
                  </assignedPerson>
                </assignedEntity>
              </performer>
              <!--第一助手-->
              <participant typeCode="ATND">
                <participantRole classCode="ASSIGNED">
                  <id extension="${cnInpatientMedicalRecord.firstAssistantName!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="第一助手"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <!--第一助手签名-->
                    <name>${cnInpatientMedicalRecord.firstAssistantName!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
              <!--第二助手-->
              <participant typeCode="ATND">
                <participantRole classCode="ASSIGNED">
                  <id extension="${cnInpatientMedicalRecord.secondeAssistantName!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="第二助手"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <!--第二助手签名-->
                    <name>${cnInpatientMedicalRecord.secondeAssistantName!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
              <!--手术(操作)名称-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术(操作)名称"/>
                  <value xsi:type="ST">${cnInpatientMedicalRecord.operationName!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--手术级别代码表-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.255.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术级别"/>
                  <value code="${cnInpatientMedicalRecord.operationLevelCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.258" codeSystemName="手术级别代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.operationLevelCode!'NA'}" datasetCloumn="OPERATION_LEVEL_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <!--手术切口类别代码-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.257.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术切口类别代码"/>
                  <value code="${cnInpatientMedicalRecord.operationTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.256" codeSystemName="手术切口类别代码表" xsi:type="CD" displayName="<@dict_tag value="${cnInpatientMedicalRecord.operationTypeCode!'NA'}" datasetCloumn="OPERATION_TYPE_CODE">${dict.desc}</@dict_tag>"/>
                </observation>
              </entryRelationship>
              <!--手术切口愈合等级-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.147.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术切口愈合等级"/>
                  <value code="${cnInpatientMedicalRecord.operatIncisHealTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.257" codeSystemName="手术切口愈合等级代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.operatIncisHealTypeCode!'NA'}" datasetCloumn="OPERAT_INCIS_HEAL_TYPE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <!--麻醉方式代码表-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方法代码"/>
                  <value code="${cnInpatientMedicalRecord.anesthesiaMethodCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方式代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.anesthesiaMethodCode!'NA'}" datasetCloumn="ANESTHESIA_METHOD_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                  <performer>
                    <assignedEntity>
                      <id extension="${cnInpatientMedicalRecord.anesthesiaDoctorSignature!'NA'}" root="2.16.156.10011.1.4"/>
                      <assignedPerson>
                        <name>${cnInpatientMedicalRecord.anesthesiaDoctorSignature!'NA'}</name>
                      </assignedPerson>
                    </assignedEntity>
                  </performer>
                </observation>
              </entryRelationship>
            </procedure>
          </entry>
        </section>
      </component>
      <!--住院史章节-->
      <component>
        <section>
          <code code="11336-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF HOSPITALIZATIONS"/>
          <text/>
          <!--住院次数	　-->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.090.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="住院次数"/>
              <value unit="次" value="${cnInpatientMedicalRecord.inhosCount!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--行政管理章节-->
      <component>
        <section>
          <code displayName="行政管理"/>
          <text/>
          <!--死亡患者尸检标志-->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE09.00.108.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡患者尸检标志"/>
              <value value="${cnInpatientMedicalRecord.inhosAutopsyFlag!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <!--病案质量-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE09.00.103.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病案质量"/>
              <!-- 质控日期 -->
              <effectiveTime value="${cnInpatientMedicalRecord.qualitycontrolDate!'NA'}" xsi:type="IVL_TS"/>
              <value code="${cnInpatientMedicalRecord.mrQualityCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.29" codeSystemName="病案质量等级表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.mrQualityCode!'NA'}" datasetCloumn="MR_QUALITY_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
              <author>
                <time/>
                <assignedAuthor>
                  <id extension="${cnInpatientMedicalRecord.qualitycontrolDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="质控医生"/>
                  <assignedPerson>
                    <!--质控医生签名-->
                    <name>${cnInpatientMedicalRecord.qualitycontrolDoctorSign!'NA'}</name>
                  </assignedPerson>
                </assignedAuthor>
              </author>
              <author>
                <time/>
                <assignedAuthor>
                  <id extension="${cnInpatientMedicalRecord.qcNurseSignature!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="质控护士"/>
                  <assignedPerson>
                    <!--质控护士签名-->
                    <name>${cnInpatientMedicalRecord.qcNurseSignature!'NA'}</name>
                  </assignedPerson>
                </assignedAuthor>
              </author>
            </observation>
          </entry>
        </section>
      </component>
      <!--住院过程章节-->
      <component>
        <section>
          <code code="8648-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Hospital Course"/>
          <text/>
          <!--实际住院天数　-->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.310.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="实际住院天数"/>
              <value unit="天" value="${cnInpatientMedicalRecord.inpDays!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <!--出院科室及病房 -->
          <entry>
            <act classCode="ACT" moodCode="EVN">
              <code/>
              <author>
                <time/>
                <assignedAuthor>
                  <id/>
                  <representedOrganization>
                    <!--出院病房名称 -->
                    <id extension="${cnInpatientMedicalRecord.dishospitalRoom!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${cnInpatientMedicalRecord.dishospitalRoom!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <!--出院科室名称 -->
                        <id extension="${cnInpatientMedicalRecord.dishospitalDeptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${cnInpatientMedicalRecord.dishospitalDeptName!'NA'}</name>
                      </wholeOrganization>
                    </asOrganizationPartOf>
                  </representedOrganization>
                </assignedAuthor>
              </author>
            </act>
          </entry>
        </section>
      </component>
      <!--治疗计划章节-->
      <component>
        <section>
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>
          <text/>
          <!-- 有否出院31天内再住院计划 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.194.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院31天内再住院标志"/>
              <entryRelationship negationInd="${cnInpatientMedicalRecord.outhosFlag!'NA'}" typeCode="GEVL">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.195.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院31天内再住院目的"/>
                  <value xsi:type="ST">${cnInpatientMedicalRecord.outhosPurpose!'NA'}</value>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
      <!--费用章节-->
      <component>
        <section>
          <code code="48768-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PAYMENT SOURCES"/>
          <text/>
          <!--医疗付款方式 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE07.00.007.00" codeSystem="2.16.156.10011.2.2.2" codeSystemName="卫生信息数据元目录" displayName="医疗付款方式代码"/>
              <value code="${cnInpatientMedicalRecord.payWay!'NA'}" codeSystem="2.16.156.10011.2.3.1.269" codeSystemName="医疗付费方式代码表" displayName="<@dict_tag value="${cnInpatientMedicalRecord.payWay!'NA'}" datasetCloumn="PAY_WAY">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <!--住院总费用 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.12.169" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="住院总费用"/>
              <value currency="元" value="${cnInpatientMedicalRecord.inpTotalcost!'NA'}" xsi:type="MO"/>
              <entryRelationship negationInd="false" typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.170" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="住院总费用-自付金额(元)"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.inpTotalcostOwnpay!'NA'}" xsi:type="MO"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--综合医疗服务费 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.174" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-一般医疗服务费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.medicalCommonlyserviceCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.175" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-一般医疗服务费-中医辨证论治费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.medicalTcddialecticCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.176" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-一般医疗服务费-中医辨证论治会诊费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.medicalTcdDiscost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.177" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-一般治疗操作费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.medicalCommonlyoperationCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.172" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-护理费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.medicalNursingCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.173" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-其他费用"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.medicalOtherCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--诊断类服务费 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.136" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-病理诊断费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.diagPathologyCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.138" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-实验室诊断费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.diagLaboratoryCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.1139" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-影像学诊断费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.imagingDiagnosisExpense!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.137" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-临床诊断项目费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.diagClinicalCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--治疗类服务费 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.145" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-非手术治疗项目费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.treatNooperationItemcost!'NA'}" xsi:type="MO"/>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.146" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-非手术治疗项目费-临床物理治疗费"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.treatNooperationPhysicscost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.147" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治疗费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.treatOperationtreatCost!'NA'}" xsi:type="MO"/>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.148" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治疗费-麻醉费"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.treatOperAnaesthesiacost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.149" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治疗费-手术费"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.treatOperationtreatOpercost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--康复费类服务费 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.12.062" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="康复费"/>
              <value currency="元" value="${cnInpatientMedicalRecord.recoveryCost!'NA'}" xsi:type="MO"/>
            </observation>
          </entry>
          <!--以下三条目标识类true or false-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.12.101" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="使用医疗机构中药制剂"/>
              <value value="${cnInpatientMedicalRecord.useTcmpreparationFlag!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.12.102" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="使用中医诊疗技术标志"/>
              <value value="${cnInpatientMedicalRecord.useTcmtechnologyFlag!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.12.006" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="辩证施护标志"/>
              <value value="${cnInpatientMedicalRecord.dialecticFlag!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <!--以上三条为标志类条目-->
          <!--中医类费 -->
          <entry>
            <organizer classCode="CLUSTER " moodCode="EVN ">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.156" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医治疗费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.tcmDiagCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.157" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医治疗费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.tcmTreatCost!'NA'}" xsi:type="MO"/>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.163" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医治疗费-中医外治"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.tcmTreatExternalcost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.160" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医治疗费-中医骨伤"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.tcmTreatBonefracturecost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.158" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医治疗费-针刺与灸法"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.tcmTreatAcupuncturecost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.162" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医治疗费-中医推拿治疗"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.tcmTreatMassagecost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.159" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医治疗费-中医肛肠治疗"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.tcmTreatAnorectalcost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.161" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医治疗费-中医特殊治疗"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.tcmTreatSpecialcost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.153" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医其他治疗费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.tcmTreatOthercost!'NA'}" xsi:type="MO"/>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.155" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医其他费-中药特殊调配加工"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.tcmTreatDispatchcost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.12.154" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医治疗费-辩证施膳"/>
                      <value currency="元" value="${cnInpatientMedicalRecord.tcmTreatCateredcost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--西药费 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.12.113" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="西药费"/>
              <value currency="元" value="${cnInpatientMedicalRecord.drugCost!'NA'}" xsi:type="MO"/>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.114" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="西药费-抗菌药物费用"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.drugAntibioticsCost!'NA'}" xsi:type="MO"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--中药费 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.151" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中药费-中成药费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.proprietaryCmExpense!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.152" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中药类-中成药费-医疗机构中药制剂费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.tcdCpmPreparationcost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.150" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中药费-中草药费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.tcdChmCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!-- 血液和血液制品类服务费 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.130" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="血费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.bloodCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.126" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="白蛋白类制品费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.bloodAlburminCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.128" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="球蛋白类制品费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.bloodGlobulinCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!-- 凝血因子类制品费 -->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.127" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="凝血因子类制品费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.bloodCogulationfactorCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--细胞因子类制品费 -->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.129" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="细胞因子类制品费"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.bloodCellfactorCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!-- 使用中医诊疗设备标志 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.12.103" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="使用中医诊疗设备标志"/>
              <value value="${cnInpatientMedicalRecord.useTcmequipmentFlag!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <!--耗材类费用-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.045" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用材料费-检查用"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.checkDmmExpense!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.047" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用材料费-治疗用"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.expTreatCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.12.046" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用材料费-手术用"/>
                  <value currency="元" value="${cnInpatientMedicalRecord.expOpertionCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--其他费 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.12.092" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="其他费"/>
              <value currency="元" value="${cnInpatientMedicalRecord.otherCost!'NA'}" xsi:type="MO"/>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>