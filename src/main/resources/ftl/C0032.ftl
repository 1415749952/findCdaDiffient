﻿<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.52"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0032" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>住院病案首页</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <!--文档记录对象（患者）-->
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!-- 健康卡号 -->
      <id extension="${inpatientMedicalRecord.healthFileNo!'NA'}" root="2.16.156.10011.1.19"/>
      <!-- 住院号标识 -->
      <id extension="${inpatientMedicalRecord.visitingPatients!'NA'}" root="2.16.156.10011.1.12"/>
      <!-- 病理号 -->
      <id extension="${inpatientMedicalRecord.pathologyNo!'NA'}" root="2.16.156.10011.1.8"/>
      <!-- 病案号 -->
      <id extension="${inpatientMedicalRecord.mrNo!'NA'}" root="2.16.156.10011.1.13"/>
      <!-- 现住址 -->
      <addr use="H">
        <!--现住址-门牌号码-->
        <houseNumber>${inpatientMedicalRecord.currentDoors!'NA'}</houseNumber>
        <!--现住址-村（街、路、弄等）-->
        <streetName>${inpatientMedicalRecord.currentVillage!'NA'}</streetName>
        <!--现住址-乡（镇、街道办事处）-->
        <township>${inpatientMedicalRecord.currentTownship!'NA'}</township>
        <!--现住址-县（区）-->
        <county>${inpatientMedicalRecord.currentCounty!'NA'}</county>
        <!-- 现住址-市（地区、州）-->
        <city>${inpatientMedicalRecord.currentCity!'NA'}</city>
        <!-- 现住址-省（自治区、直辖市）-->
        <state>${inpatientMedicalRecord.currentProvince!'NA'}</state>
        <!--现住址-邮政编码-->
        <#if inpatientMedicalRecord.currentZipCode??>
        <postalCode>${inpatientMedicalRecord.currentZipCode!'NA'}</postalCode>
        </#if>
      </addr>
      <!--电话号码-->
      <telecom value="<@privacy_tag value="${inpatientMedicalRecord.currentPhone!'NA'}" privacyId="5">${privacy}</@privacy_tag>"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号-->
        <id extension="<@privacy_tag value="${inpatientMedicalRecord.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <!--患者姓名-->
        <name><@privacy_tag value="${inpatientMedicalRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <!--患者性别-->
        <administrativeGenderCode code="${inpatientMedicalRecord.patientSex!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${inpatientMedicalRecord.patientSex!'NA'}" datasetCloumn="PATIENT_SEX">${dict.desc}</@dict_tag>"/>
        <!--患者出生日期-->
        <birthTime value="${inpatientMedicalRecord.birthday!'NA'}"/>
        <!--患者婚姻状况-->
        <maritalStatusCode code="${inpatientMedicalRecord.maritalStatusCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.5" codeSystemName="婚姻状况代码表(GB/T 2261.2)" displayName="<@dict_tag value="${inpatientMedicalRecord.maritalStatusCode!'NA'}" datasetCloumn="MARITAL_STATUS_CODE">${dict.desc}</@dict_tag>"/>
        <!--患者民族类别-->
        <ethnicGroupCode code="${inpatientMedicalRecord.nation!'NA'}" codeSystem="2.16.156.10011.2.3.3.3" codeSystemName="民族类别代码表(GB 3304)" displayName="<@dict_tag value="${inpatientMedicalRecord.nation!'NA'}" datasetCloumn="NATION">${dict.desc}</@dict_tag>"/>
        <!--出生地-->
        <birthplace>
          <place classCode="PLC" determinerCode="INSTANCE">
            <addr>
              <!--出生地-县（区）-->
              <county>${inpatientMedicalRecord.birthplaceCounty!'NA'}</county>
              <!-- 出生地-市（地区、州）-->
              <city>${inpatientMedicalRecord.birthplaceCity!'NA'}</city>
              <!-- 出生地-省（自治区、直辖市）-->
              <state>${inpatientMedicalRecord.birthplaceProvince!'NA'}</state>
              <#if inpatientMedicalRecord.accountZipCode??>
              <!--户口地址-邮政编码-->
              <postalCode>${inpatientMedicalRecord.accountZipCode!'NA'}</postalCode>
              </#if>
            </addr>
          </place>
        </birthplace>
        <!-- 国籍 -->
        <nationality code="${inpatientMedicalRecord.nationnality!'NA'}" codeSystem="2.16.156.10011.2.3.3.1" codeSystemName="世界各国和地区名称代码(GB/T 2659)" displayName="<@dict_tag value="${inpatientMedicalRecord.nationnality!'NA'}" datasetCloumn="NATIONNALITY">${dict.desc}</@dict_tag>"/>
        <!-- 年龄 -->
        <#if inpatientMedicalRecord.ageYear??>
        <age unit="岁" value="${inpatientMedicalRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${inpatientMedicalRecord.patientMonth!'NA'}"/>
        </#if>
        <!-- 工作单位 -->
        <employerOrganization>
          <!-- 工作单位名称 -->
          <name>${inpatientMedicalRecord.workunitName!'NA'}</name>
          <!-- 工作单位电话-->
          <telecom value="${inpatientMedicalRecord.workunitPhone!'NA'}"/>
          <!-- 工作地址 -->
          <addr use="WP">
            <!--  工作单位地址-门牌号码-->
            <houseNumber>${inpatientMedicalRecord.workunitDoors!'NA'}</houseNumber>
            <!--工作单位地址-村（街、路、弄等）-->
            <streetName>${inpatientMedicalRecord.workunitVillage!'NA'}</streetName>
            <!--工作单位地址-乡（镇、街道办事处）-->
            <township>${inpatientMedicalRecord.workunitTownship!'NA'}</township>
            <!--工作单位地址-县（区）-->
            <county>${inpatientMedicalRecord.workunitCounty!'NA'}</county>
            <!--工作单位地址-市（地区、州）-->
            <city>${inpatientMedicalRecord.workunitCity!'NA'}</city>
            <!--工作单位地址-省（自治区、直辖市）-->
            <state>${inpatientMedicalRecord.workunitProvince!'NA'}</state>
            <#if inpatientMedicalRecord.workunitZipCode??>
            <!--工作单位地址-邮政编码-->
            <postalCode>${inpatientMedicalRecord.workunitZipCode!'NA'}</postalCode>
            </#if>
          </addr>
        </employerOrganization>
        <!-- 户口信息 -->
        <household>
          <place classCode="PLC" determinerCode="INSTANCE">
            <!-- 户口地址 -->
            <addr>
              <!--户口地址-门牌号码-->
              <houseNumber>${inpatientMedicalRecord.accountDoors!'NA'}</houseNumber>
              <!--户口地址-村（街、路、弄等）-->
              <streetName>${inpatientMedicalRecord.accountVillage!'NA'}</streetName>
              <!--户口地址-乡（镇、街道办事处）-->
              <township>${inpatientMedicalRecord.accountTownship!'NA'}</township>
              <!-- 户口地址-县（区）-->
              <county>${inpatientMedicalRecord.accountCounty!'NA'}</county>
              <!--户口地址-市（地区、州）-->
              <city>${inpatientMedicalRecord.accountCity!'NA'}</city>
              <!--户口地址-省（自治区、直辖市）-->
              <state>${inpatientMedicalRecord.accountProvince!'NA'}</state>
              <#if inpatientMedicalRecord.accountZipCode??>
              <!--户口地址-邮政编码-->
              <postalCode>${inpatientMedicalRecord.accountZipCode!'NA'}</postalCode>
              </#if>
            </addr>
          </place>
        </household>
        <!-- 籍贯信息 -->
        <nativePlace>
          <place classCode="PLC" determinerCode="INSTANCE">
            <addr>
              <!--籍贯-市（地区、州）-->
              <city>${inpatientMedicalRecord.nativeplaceCity!'NA'}</city>
              <!--籍贯-省（自治区、直辖市）-->
              <state>${inpatientMedicalRecord.nativeplaceProvince!'NA'}</state>
            </addr>
          </place>
        </nativePlace>
        <!--职业状况-->
        <occupation>
          <occupationCode code="${inpatientMedicalRecord.occupationTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.13" codeSystemName="从业状况(个人身体)代码表(GB/T 2261.4)" displayName="<@dict_tag value="${inpatientMedicalRecord.occupationTypeCode!'NA'}" datasetCloumn="OCCUPATION_TYPE_CODE">${dict.desc}</@dict_tag>"/>
        </occupation>
      </patient>
      <!--提供患者服务机构-->
      <providerOrganization classCode="ORG" determinerCode="INSTANCE">
        <!--机构标识号-->
        <id extension="${inpatientMedicalRecord.organCode!'NA'}" root="2.16.156.10011.1.5"/>
        <!--住院机构名称-->
        <name>${inpatientMedicalRecord.orgName!'NA'}</name>
      </providerOrganization>
    </patientRole>
  </recordTarget>
  <!-- 文档创作者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <time/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${inpatientMedicalRecord.physicianDoctorSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${inpatientMedicalRecord.physicianDoctorSign!'NA'}</name>
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
  <!-- 科主任签名 -->
  <legalAuthenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inpatientMedicalRecord.deptDirectorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="科主任"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inpatientMedicalRecord.deptDirectorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </legalAuthenticator>
  <!-- 主任(副主任)医师 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inpatientMedicalRecord.directorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="主任(副主任)医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inpatientMedicalRecord.directorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 主治医师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inpatientMedicalRecord.physicianDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="主治医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inpatientMedicalRecord.physicianDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 住院医师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inpatientMedicalRecord.inpDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="住院医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inpatientMedicalRecord.inpDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 责任护士签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inpatientMedicalRecord.dutyNurseSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="责任护士"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inpatientMedicalRecord.dutyNurseSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 进修医师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inpatientMedicalRecord.refresherDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="进修医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inpatientMedicalRecord.refresherDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 实习医师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inpatientMedicalRecord.internshipDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="实习医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inpatientMedicalRecord.internshipDoctorSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 编码员签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inpatientMedicalRecord.coderSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="编码员"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inpatientMedicalRecord.coderSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!--其他参与者（联系人）@typeCode: NOT(ugent notification contact)，固定值，表示不同的参与者-->
  <participant typeCode="NOT">
    <associatedEntity classCode="ECON">
      <!--联系人类别，表示与患者之间的关系-->
      <code code="${inpatientMedicalRecord.relation!'NA'}" codeSystem="2.16.156.10011.2.3.3.8" codeSystemName="家庭关系代码表(GB/T 4761)" displayName="<@dict_tag value="${inpatientMedicalRecord.relation!'NA'}" datasetCloumn="RELATION">${dict.desc}</@dict_tag>"/>
      <!--联系人地址-->
      <addr use="H">
        <!--联系人地址-门牌号码-->
        <houseNumber>${inpatientMedicalRecord.cahouseNumber!'NA'}</houseNumber>
        <!--联系人地址-村（街、路、弄等）-->
        <streetName>${inpatientMedicalRecord.castreet!'NA'}</streetName>
        <!--联系人地址-乡（镇、街道办事处）-->
        <township>${inpatientMedicalRecord.catownShip!'NA'}</township>
        <!-- 联系人地址-县（区）-->
        <county>${inpatientMedicalRecord.cacounty!'NA'}</county>
        <!--联系人地址-市（地区、州）-->
        <city>${inpatientMedicalRecord.cacity!'NA'}</city>
        <!--联系人地址-省（自治区、直辖市）-->
        <state>${inpatientMedicalRecord.caprovince!'NA'}</state>
        <#if inpatientMedicalRecord.workunitZipCode??>
        <!--工作单位地址-邮政编码-->
        <postalCode>${inpatientMedicalRecord.workunitZipCode!'NA'}</postalCode>
        </#if>
      </addr>
      <!--联系人电话号码-->
      <telecom use="H" value="${inpatientMedicalRecord.contactPhone!'NA'}"/>
      <associatedPerson classCode="PSN" determinerCode="INSTANCE">
        <!--联系人姓名-->
        <name>${inpatientMedicalRecord.contactName!'NA'}</name>
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
      <code code="${inpatientMedicalRecord.inpApproachCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.270" codeSystemName="入院途径代码表" displayName="<@dict_tag value="${inpatientMedicalRecord.inpApproachCode!'NA'}" datasetCloumn="INP_APPROACH_CODE">${dict.desc}</@dict_tag>"/>
      <!--就诊时间-->
      <effectiveTime>
        <!--入院日期-->
        <low value="${inpatientMedicalRecord.inpDate!'NA'}"/>
        <!--出院日期-->
        <high value="${inpatientMedicalRecord.dishospitalDate!'NA'}"/>
      </effectiveTime>
      <location typeCode="LOC">
        <healthCareFacility classCode="SDLOC">
          <serviceProviderOrganization classCode="ORG" determinerCode="INSTANCE">
            <asOrganizationPartOf classCode="PART">
              <!--入院病房-->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${inpatientMedicalRecord.inpRoom!'NA'}" root="2.16.156.10011.1.21"/>
                <name>${inpatientMedicalRecord.inpRoom!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!--入院科室-->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${inpatientMedicalRecord.inpDeptName!'NA'}" root="2.16.156.10011.1.26"/>
                    <name>${inpatientMedicalRecord.inpDeptName!'NA'}</name>
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
          <#if inpatientMedicalRecord.newbornInpWeight??>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院体重">
                <qualifier>
                  <name displayName="新生儿入院体重"/>
                </qualifier>
              </code>
              <value unit="g" value="${inpatientMedicalRecord.newbornInpWeight!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          </#if>
          <#if inpatientMedicalRecord.newbornBirthWeight??>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出生体重">
                <qualifier>
                  <name displayName="新生儿出生体重"/>
                </qualifier>
              </code>
              <value unit="g" value="${inpatientMedicalRecord.newbornBirthWeight!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          </#if>
        </section>
      </component>
      <!--诊断章节-->
      <component>
        <section>
          <code code="29548-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
          <text/>
          <!--门（急）诊诊断-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断疾病编码">
                    <qualifier>
                      <name displayName="门（急）诊诊断"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${inpatientMedicalRecord.outpDiagCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${inpatientMedicalRecord.outpDiagCode!'NA'}" datasetCloumn="OUTP_DIAG_CODE">${dict.desc}</@dict_tag>"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断名称">
                    <qualifier>
                      <name displayName="门（急）诊诊断"/>
                    </qualifier>
                  </code>
                  <value xsi:type="ST">${inpatientMedicalRecord.outpDiagName!'NA'}</value>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--病理诊断-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <id root="2.16.156.10011.1.8" extension="${inpatientMedicalRecord.pathologyDiagnosticCode!'NA'}"/>
                  <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病理诊断-疾病名称">
                    <qualifier>
                      <name displayName="病理诊断名称"/>
                    </qualifier>
                  </code>
                  <value xsi:type="ST">${inpatientMedicalRecord.diagResult!'NA'}</value>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病理诊断-疾病编码">
                    <qualifier>
                      <name displayName="病理诊断代码"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${inpatientMedicalRecord.pathologyDiagnosticCode!'NA'}" displayName="<@dict_tag value="${inpatientMedicalRecord.pathologyDiagnosticCode!'NA'}" datasetCloumn="PATHOLOGY_DIAGNOSTIC_CODE">${dict.desc}</@dict_tag>" codeSystemName="ICD-10" codeSystem="2.16.156.10011.2.3.3.11"/>
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <!--主要健康问题章节-->
      <component>
        <section>
          <code code="11450-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PROBLEM LIST"/>
          <text/>
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="住院者疾病状态代码"/>
              <value code="${inpatientMedicalRecord.diseaseStatusCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.100" codeSystemName="住院者疾病状态代码表" displayName="<@dict_tag value="${inpatientMedicalRecord.diseaseStatusCode!'NA'}" datasetCloumn="DISEASE_STATUS_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <#if inpatientMedicalRecord.injuryDiseaseCode??>
          <!--住院患者损伤和中毒外部原因-->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.152.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="损伤中毒的外部原因"/>
              <value xsi:type="ST">${inpatientMedicalRecord.injuryPosionReason!'NA'}</value>
              <entryRelationship negationInd="false" typeCode="REFR">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.078.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="损伤中毒的外部原因-疾病编码"/>
                  <value code="${inpatientMedicalRecord.injuryDiseaseCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" xsi:type="CD" displayName="<@dict_tag value="${inpatientMedicalRecord.injuryDiseaseCode!'NA'}" datasetCloumn="INJURY_DISEASE_CODE">${dict.desc}</@dict_tag>"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          </#if>
          <!--颅脑损伤患者入院前昏迷时间-->
          <entry typeCode="COMP">
            <organizer classCode="CLUSTER" moodCode="EVN">
              <code displayName="颅脑损伤患者入院前昏迷时间"/>
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.01" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院前昏迷时间-d"/>
                  <value unit="d" value="${inpatientMedicalRecord.headinjuryInpbeforecomaDay!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.02" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院前昏迷时间-h"/>
                  <value unit="h" value="${inpatientMedicalRecord.headinjuryInpbeforecomaHour!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.03" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院前昏迷时间-min"/>
                  <value unit="min" value="${inpatientMedicalRecord.headinjuryInpbeforeMin!'NA'}" xsi:type="PQ"/>
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
                  <value unit="d" value="${inpatientMedicalRecord.headinjuryInpaftercomaDay!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.02" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院后昏迷时间-h"/>
                  <value unit="h" value="${inpatientMedicalRecord.headinjuryInpaftercomaHour!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.138.03" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="颅脑损伤患者入院后昏迷时间-min"/>
                  <value unit="min" value="${inpatientMedicalRecord.headinjuryInpaftercomaMinute!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <!--转科记录章节-->
      <component>
        <section>
          <code code="42349-1" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="REASON FOR REFERRAL"/>
          <text/>
          <!--转科条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code/>
              <author>
                <time/>
                <assignedAuthor>
                  <id/>
                  <representedOrganization>
                    <!--住院患者转科科室名称-->
                    <name>${inpatientMedicalRecord.transitionDep!'NA'}</name>
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
          <code code="11535-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HOSPITAL DISCHARGE DX"/>
          <text/>
          <!--出院诊断-主要诊断条目-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院诊断-主要诊断名称">
                    <qualifier>
                      <name displayName="主要诊断名称"/>
                    </qualifier>
                  </code>
                  <!--确诊日期-->
                  <effectiveTime value="${inpatientMedicalRecord.dishospitalDate!'NA'}"/>
                  <value xsi:type="ST">${inpatientMedicalRecord.seriousDiagnosis!'NA'}</value>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <!--住院患者疾病诊断类型-代码/住院患者疾病诊断类型-详细描述-->
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院诊断-主要诊断疾病编码">
                    <qualifier>
                      <name displayName="主要诊断疾病编码"/>
                    </qualifier>
                  </code>
                  <!--疾病诊断代码/疾病诊断名称-->
                  <value xsi:type="CD" code="${inpatientMedicalRecord.outpGivenCode!'NA'}" displayName="<@dict_tag value="${inpatientMedicalRecord.outpGivenCode!'NA'}" datasetCloumn="OUTP_GIVEN_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE09.00.104.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院诊断-主要诊断入院病情代码">
                    <qualifier>
                      <name displayName="主要诊断入院病情代码"/>
                    </qualifier>
                  </code>
                  <!--主要诊断入院病情代码-->
                  <value xsi:type="CD" code="${inpatientMedicalRecord.outhosMainInhosCode!'NA'}" displayName="<@dict_tag value="${inpatientMedicalRecord.outhosMainInhosCode!'NA'}" datasetCloumn="OUTHOS_MAIN_INHOS_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.1.253" codeSystemName="入院病情代码表"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--出院诊断-其他诊断条目-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <!--住院患者疾病诊断类型-代码/住院患者疾病诊断类型-详细描述-->
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院诊断-其他诊断疾病编码">
                    <qualifier>
                      <name displayName="其他诊断疾病编码"/>
                    </qualifier>
                  </code>
                  <!--疾病诊断代码/疾病诊断名称-->
                  <value xsi:type="CD" code="${inpatientMedicalRecord.outpDiagnosisOtherCode!'NA'}" displayName="<@dict_tag value="${inpatientMedicalRecord.outpDiagnosisOtherCode!'NA'}" datasetCloumn="OUTP_DIAGNOSIS_OTHER_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE09.00.104.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院诊断-其他诊断入院病情代码">
                    <qualifier>
                      <name displayName="其他诊断入院病情代码"/>
                    </qualifier>
                  </code>
                  <value xsi:type="CD" code="${inpatientMedicalRecord.outhosOtherInhosCode!'NA'}" displayName="<@dict_tag value="${inpatientMedicalRecord.outhosOtherInhosCode!'NA'}" datasetCloumn="OUTHOS_OTHER_INHOS_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.1.253" codeSystemName="入院病情代码表"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院诊断-其他诊断名称">
                    <qualifier>
                      <name displayName="其他诊断名称"/>
                    </qualifier>
                  </code>
                  <!--确诊日期-->
                  <effectiveTime value="${inpatientMedicalRecord.inpDate!'NA'}"/>
                  <value xsi:type="ST">${inpatientMedicalRecord.outpWmDiagnosis!'NA'}</value>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--离院方式-->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.223.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="离院方式"/>
              <value xsi:type="CD" code="${inpatientMedicalRecord.dishospitalDispositionCode!'NA'}" displayName="<@dict_tag value="${inpatientMedicalRecord.dishospitalDispositionCode!'NA'}" datasetCloumn="DISHOSPITAL_DISPOSITION_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.1.265" codeSystemName="离院方式代码表"/>
              <entryRelationship typeCode="COMP" negationInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE08.10.013.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="拟接收医疗机构名称"/>
                  <value xsi:type="ST">${inpatientMedicalRecord.receiveOrgName!'NA'}</value>
                </observation>
              </entryRelationship>
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
                  <value value="${inpatientMedicalRecord.drugAllergyFlag!'NA'}" xsi:type="BL"/>
                  <participant typeCode="CSM">
                    <participantRole classCode="MANU">
                      <playingEntity classCode="MMAT">
                        <!--住院患者过敏药物-->
                        <code code="DE02.10.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="过敏药物"/>
                        <desc xsi:type="ST">${inpatientMedicalRecord.allergyDrug!'NA'}</desc>
                      </playingEntity>
                    </participantRole>
                  </participant>
                </observation>
              </entryRelationship>
            </act>
          </entry>
        </section>
      </component>
      <!--实验室检查章节-->
      <component>
        <section>
          <code code="30954-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="STUDIES SUMMARY"/>
          <text/>
          <entry typeCode="COMP">
            <!-- 血型-->
            <organizer classCode="BATTERY" moodCode="EVN">
              <statusCode/>
              <component typeCode="COMP">
                <!-- ABO血型 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
                  <value code="${inpatientMedicalRecord.bloodAboCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.85" codeSystemName="ABO血型代码表" displayName="<@dict_tag value="${inpatientMedicalRecord.bloodAboCode!'NA'}" datasetCloumn="BLOOD_ABO_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </component>
              <!-- Rh血型 -->
              <component typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.010.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
                  <value code="${inpatientMedicalRecord.rhBloodCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.250" codeSystemName="Rh(D)血型代码表" displayName="<@dict_tag value="${inpatientMedicalRecord.rhBloodCode!'NA'}" datasetCloumn="RH_BLOOD_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <#if inpatientMedicalRecord.operationCode??>
      <!--手术操作章节-->
      <component>
        <section>
          <code code="47519-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PROCEDURES"/>
          <text/>
          <entry>
            <!-- 1..1 手术记录 -->
            <procedure classCode="PROC" moodCode="EVN">
              <#if inpatientMedicalRecord.operationCode??>
              <code code="${inpatientMedicalRecord.operationCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)" displayName="<@dict_tag value="${inpatientMedicalRecord.operationCode!'NA'}" datasetCloumn="OPERATION_CODE">${dict.desc}</@dict_tag>"/>
              </#if>
              <statusCode/>
              <!--手术操作开始日期/时间-->
              <#if inpatientMedicalRecord.operationStartDatetime??>
              <effectiveTime value="${inpatientMedicalRecord.operationStartDatetime!'NA'}"/>
              </#if>
              <!--手术者-->
              <performer>
                <assignedEntity>
                  <id extension="${inpatientMedicalRecord.operationDoctorName!'NA'}" root="2.16.156.10011.1.4"/>
                  <assignedPerson>
                    <name>${inpatientMedicalRecord.operationDoctorName!'NA'}</name>
                  </assignedPerson>
                </assignedEntity>
              </performer>
              <!--第一助手-->
              <participant typeCode="ATND">
                <participantRole classCode="ASSIGNED">
                  <id extension="${inpatientMedicalRecord.firstAssistantName!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="第一助手"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <name>${inpatientMedicalRecord.firstAssistantName!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
              <!--第二助手-->
              <participant typeCode="ATND">
                <participantRole classCode="ASSIGNED">
                  <id extension="${inpatientMedicalRecord.secondeAssistantName!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="第二助手"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <name>${inpatientMedicalRecord.secondeAssistantName!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
              <!--手术（操作）名称-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术（操作）名称"/>
                  <#if inpatientMedicalRecord.operationName??>
                  <value xsi:type="ST">${inpatientMedicalRecord.operationName!'NA'}</value>
                  </#if>
                </observation>
              </entryRelationship>
              <!--手术级别 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.255.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术级别"/>
                  <#if inpatientMedicalRecord.operationLevelCode??>
                  <value code="${inpatientMedicalRecord.operationLevelCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.258" codeSystemName="手术级别代码表" xsi:type="CD" displayName="<@dict_tag value="${inpatientMedicalRecord.operationLevelCode!'NA'}" datasetCloumn="OPERATION_LEVEL_CODE">${dict.desc}</@dict_tag>"/>
                  </#if>
                </observation>
              </entryRelationship>
              <!--手术切口类别 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.257.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术切口类别代码"/>
                  <#if inpatientMedicalRecord.operationTypeCode??>
                  <value code="${inpatientMedicalRecord.operationTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.256" codeSystemName="手术切口类别代码表" xsi:type="CD" displayName="<@dict_tag value="${inpatientMedicalRecord.operationTypeCode!'NA'}" datasetCloumn="OPERATION_TYPE_CODE">${dict.desc}</@dict_tag>"/>
                  </#if>
                </observation>
              </entryRelationship>
              <!--手术切口愈合等级-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.10.147.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术切口愈合等级"/>
                  <#if inpatientMedicalRecord.operatIncisHealTypeCode??>
                  <value code="${inpatientMedicalRecord.operatIncisHealTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.257" codeSystemName="手术切口愈合等级代码表" displayName="<@dict_tag value="${inpatientMedicalRecord.operatIncisHealTypeCode!'NA'}" datasetCloumn="OPERAT_INCIS_HEAL_TYPE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                  </#if>
                </observation>
              </entryRelationship>
              <!--麻醉方式代码-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方式代码"/>
                  <#if inpatientMedicalRecord.anesthesiaMethodCode??>
                  <value code="${inpatientMedicalRecord.anesthesiaMethodCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表" xsi:type="CD" displayName="<@dict_tag value="${inpatientMedicalRecord.anesthesiaMethodCode!'NA'}" datasetCloumn="ANESTHESIA_METHOD_CODE">${dict.desc}</@dict_tag>"/>
                  </#if>
                  <performer>
                    <assignedEntity>
                      <id extension="${inpatientMedicalRecord.anesthesiaDoctorSignature!'NA'}" root="2.16.156.10011.1.4"/>
                      <assignedPerson>
                        <!--麻醉医生签名-->
                        <name>${inpatientMedicalRecord.anesthesiaDoctorSignature!'NA'}</name>
                      </assignedPerson>
                    </assignedEntity>
                  </performer>
                </observation>
              </entryRelationship>
            </procedure>
          </entry>
        </section>
      </component>
      </#if>
      <!--住院史章节-->
      <component>
        <section>
          <code code="11336-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF HOSPITALIZATIONS"/>
          <text/>
          <!--住院次数 -->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.090.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="住院次数"/>
              <value value="${inpatientMedicalRecord.inhosCount!'NA'}" xsi:type="INT"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--住院过程章节-->
      <component>
        <section>
          <code code="8648-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Hospital Course"/>
          <text/>
          <!--实际住院天数 -->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.310.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="实际住院天数"/>
              <value unit="天" value="${inpatientMedicalRecord.inpDays!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <!--出院科室及病房 -->
            <act classCode="ACT" moodCode="EVN">
              <code/>
              <author>
                <time/>
                <assignedAuthor>
                  <id/>
                  <representedOrganization>
                    <!--住院患者出院病房-->
                    <id extension="${inpatientMedicalRecord.dishospitalRoom!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${inpatientMedicalRecord.dishospitalRoom!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!--住院患者出院科室名称-->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${inpatientMedicalRecord.dishospitalDeptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${inpatientMedicalRecord.dishospitalDeptName!'NA'}</name>
                      </wholeOrganization>
                    </asOrganizationPartOf>
                  </representedOrganization>
                </assignedAuthor>
              </author>
            </act>
          </entry>
        </section>
      </component>
      <!--行政管理章节-->
      <component>
        <section>
          <code displayName="行政管理"/>
          <text/>
          <!--亡患者尸检标志-->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE09.00.108.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡患者尸检标志"/>
              <value value="${inpatientMedicalRecord.inhosAutopsyFlag!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <!--病案质量-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE09.00.103.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病案质量"/>
              <!-- 质控日期 -->
              <effectiveTime value="${inpatientMedicalRecord.qualitycontrolDate!'NA'}"/>
              <value code="${inpatientMedicalRecord.mrQualityCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.29" codeSystemName="病案质量等级表" xsi:type="CD" displayName="<@dict_tag value="${inpatientMedicalRecord.mrQualityCode!'NA'}" datasetCloumn="MR_QUALITY_CODE">${dict.desc}</@dict_tag>"/>
              <author>
                <time/>
                <assignedAuthor>
                  <id extension="${inpatientMedicalRecord.qcDoctorSignature!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="质控医生"/>
                  <assignedPerson>
                    <!--质控医生签名-->
                    <name>${inpatientMedicalRecord.qcDoctorSignature!'NA'}</name>
                  </assignedPerson>
                </assignedAuthor>
              </author>
              <author>
                <time/>
                <assignedAuthor>
                  <id extension="${inpatientMedicalRecord.qcNurseSignature!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="质控护士"/>
                  <assignedPerson>
                    <!--质控护士签名-->
                    <name>${inpatientMedicalRecord.qcNurseSignature!'NA'}</name>
                  </assignedPerson>
                </assignedAuthor>
              </author>
            </observation>
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
              <value value="${inpatientMedicalRecord.outhosFlag!'NA'}" xsi:type="BL"/>
              <entryRelationship negationInd="false" typeCode="GEVL">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.195.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院31天内再住院目的"/>
                  <value xsi:type="ST">${inpatientMedicalRecord.outhosPurpose!'NA'}</value>
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
          <!--医疗付费方式 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE07.00.007.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医疗付费方式代码"/>
              <value codeSystem="2.16.156.10011.2.3.1.269" codeSystemName="医疗付费方式代码表" xsi:type="CD" code="${inpatientMedicalRecord.payWay!'NA'}" displayName="<@dict_tag value="${inpatientMedicalRecord.payWay!'NA'}" datasetCloumn="PAY_WAY">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
        <!--住院总费用 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.11.142" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="住院总费用"/>
              <value currency="元" value="${inpatientMedicalRecord.inpTotalcost!'NA'}" xsi:type="MO"/>
              <entryRelationship negationInd="false" typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.143" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="住院总费用-自付金额(元)"/>
                  <value currency="元" value="${inpatientMedicalRecord.inpTotalcostOwnpay!'NA'}" xsi:type="MO"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--综合医疗服务费 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <!--综合医疗服务费-一般医疗服务费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.147" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-一般医疗服务费"/>
                  <value currency="元" value="${inpatientMedicalRecord.medicalCommonlyserviceCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--综合医疗服务费-一般治疗操作费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.148" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-一般治疗操作费"/>
                  <value currency="元" value="${inpatientMedicalRecord.medicalCommonlyoperationCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--综合医疗服务费-护理费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.145" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-护理费"/>
                  <value currency="元" value="${inpatientMedicalRecord.medicalNursingCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--综合医疗服务费-其他费用-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.146" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-其他费用"/>
                  <value currency="元" value="${inpatientMedicalRecord.medicalOtherCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--诊断类服务费 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <!--诊断-病理诊断费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.121" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-病理诊断费"/>
                  <value currency="元" value="${inpatientMedicalRecord.diagPathologyCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--诊断-实验室诊断费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.123" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-实验室诊断费"/>
                  <value currency="元" value="${inpatientMedicalRecord.diagLaboratoryCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!-- 诊断-影像学诊断费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.124" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-影像学诊断费"/>
                  <value currency="元" value="${inpatientMedicalRecord.imagingDiagnosisExpense!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--诊断-临床诊断项目费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.122" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-临床诊断项目费"/>
                  <value currency="元" value="${inpatientMedicalRecord.diagClinicalCost!'NA'}" xsi:type="MO"/>
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
                  <code code="HDSD00.11.129" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-非手术治疗项目费"/>
                  <!--治疗-非手术治疗项目费-->
                  <value currency="元" value="${inpatientMedicalRecord.treatNooperationItemcost!'NA'}" xsi:type="MO"/>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.11.130" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-非手术治疗项目费-临床物理治疗费"/>
                      <!--治疗-非手术治疗项目费-临床物理治疗费-->
                      <value currency="元" value="${inpatientMedicalRecord.treatNooperationPhysicscost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.131" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治疗费"/>
                  <!--治疗-手术治疗费-->
                  <value currency="元" value="${inpatientMedicalRecord.treatOperationtreatCost!'NA'}" xsi:type="MO"/>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.11.132" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治疗费-麻醉费"/>
                      <!--治疗-手术治疗费-麻醉费-->
                      <value currency="元" value="${inpatientMedicalRecord.treatOperAnaesthesiacost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="HDSD00.11.133" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治疗费-手术费"/>
                      <!--治疗-手术治疗费-手术费-->
                      <value currency="元" value="${inpatientMedicalRecord.treatOperationtreatOpercost!'NA'}" xsi:type="MO"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--康复费-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.11.055" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="康复费"/>
              <value currency="元" value="${inpatientMedicalRecord.recoveryCost!'NA'}" xsi:type="MO"/>
            </observation>
          </entry>
          <!--中医治疗费-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.11.136" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医治疗费"/>
              <value currency="元" value="${inpatientMedicalRecord.tcmTreatCost!'NA'}" xsi:type="MO"/>
            </observation>
          </entry>
          <!--西药费 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HDSD00.11.098" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="西药费"/>
              <!--西药费-->
              <value currency="元" value="${inpatientMedicalRecord.drugCost!'NA'}" xsi:type="MO"/>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.099" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="西药费-抗菌药物费用"/>
                  <!--西药费-抗菌药物费用-->
                  <value currency="元" value="${inpatientMedicalRecord.drugAntibioticsCost!'NA'}" xsi:type="MO"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <!--中药费 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <!--中药费-中成药费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.135" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中药费-中成药费"/>
                  <value currency="元" value="${inpatientMedicalRecord.proprietaryCmExpense!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--中药费-中草药费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.134" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中药费-中草药费"/>
                  <value currency="元" value="${inpatientMedicalRecord.tcdChmCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!-- 血液和血液制品类服务费 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <!--血费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.115" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="血费"/>
                  <value currency="元" value="${inpatientMedicalRecord.bloodCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--白蛋白类制品费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.111" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="白蛋白类制品费"/>
                  <value currency="元" value="${inpatientMedicalRecord.bloodAlburminCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--球蛋白类制品费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.113" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="球蛋白类制品费"/>
                  <value currency="元" value="${inpatientMedicalRecord.bloodGlobulinCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--凝血因子类制品费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.112" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="凝血因子类制品费"/>
                  <value currency="元" value="${inpatientMedicalRecord.bloodCogulationfactorCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--细胞因子类制品费-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.114" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="细胞因子类制品费"/>
                  <value currency="元" value="${inpatientMedicalRecord.bloodCellfactorCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!-- 耗材类费用 -->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <!--一次性医用材料费-检查用-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.038" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用材料费-检查用"/>
                  <value currency="元" value="${inpatientMedicalRecord.checkDmmExpense!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--一次性医用材料费-治疗用-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.040" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用材料费-治疗用"/>
                  <value currency="元" value="${inpatientMedicalRecord.expTreatCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
              <!--一次性医用材料费-手术用-->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="HDSD00.11.039" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用材料费-手术用"/>
                  <value currency="元" value="${inpatientMedicalRecord.expOpertionCost!'NA'}" xsi:type="MO"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--其他费-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="HSDB05.10.130" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="其他费"/>
              <value currency="元" value="${inpatientMedicalRecord.otherCost!'NA'}" xsi:type="MO"/>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>