<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.71"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0051" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>死亡病例讨论记录</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--住院号 -->
      <id extension="${deathCaseDiscussionRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${deathCaseDiscussionRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${deathCaseDiscussionRecord.sexCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${deathCaseDiscussionRecord.sexCode!'NA'}" datasetCloumn="SEX_CODE">${dict.desc}</@dict_tag>"/>
        <!--年龄（年）/（月）-->
        <#if deathCaseDiscussionRecord.ageYear??>
        <age unit="岁" value="${deathCaseDiscussionRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${deathCaseDiscussionRecord.patientMonth!'NA'}"/>
        </#if>
      </patient>
      <providerOrganization classCode="ORG" determinerCode="INSTANCE">
        <asOrganizationPartOf classCode="PART">
          <!--讨论的日期时间-->
          <effectiveTime value="${deathCaseDiscussionRecord.discussDatatime!'NA'}"/>
          <wholeOrganization>
            <addr>${deathCaseDiscussionRecord.discussPlace!'NA'}</addr>
          </wholeOrganization>
        </asOrganizationPartOf>
      </providerOrganization>
    </patientRole>
  </recordTarget>
  <!-- 文档作者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <time value="${deathCaseDiscussionRecord.signDatatime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${deathCaseDiscussionRecord.archiaterDoctorSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${deathCaseDiscussionRecord.archiaterDoctorSign!'NA'}</name>
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
  <!-- 住院医师 -->
  <authenticator>
    <time value="${deathCaseDiscussionRecord.signDatatime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${deathCaseDiscussionRecord.compereName!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="住院医师"/>
      <assignedPerson>
        <name>${deathCaseDiscussionRecord.compereName!'NA'}</name>
        <professionalTechnicalPosition>
          <professionaltechnicalpositionCode code="${deathCaseDiscussionRecord.professionalCatagoryCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.209" codeSystemName="专业技术职务类别代码表" displayName="<@dict_tag value="${deathCaseDiscussionRecord.professionalCatagoryCode!'NA'}" datasetCloumn="PROFESSIONAL_CATAGORY_CODE">${dict.desc}</@dict_tag>"/>
        </professionalTechnicalPosition>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 主治医师 -->
  <authenticator>
    <time value="${deathCaseDiscussionRecord.signDatatime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${deathCaseDiscussionRecord.physicianDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="主治医师"/>
      <assignedPerson>
        <name>${deathCaseDiscussionRecord.physicianDoctorSign!'NA'}</name>
        <professionalTechnicalPosition>
          <professionaltechnicalpositionCode code="${deathCaseDiscussionRecord.professionalCatagoryCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.209" codeSystemName="专业技术职务类别代码表" displayName="<@dict_tag value="${deathCaseDiscussionRecord.professionalCatagoryCode!'NA'}" datasetCloumn="PROFESSIONAL_CATAGORY_CODE">${dict.desc}</@dict_tag>"/>
        </professionalTechnicalPosition>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 主任医师 -->
  <authenticator>
    <time value="${deathCaseDiscussionRecord.signDatatime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${deathCaseDiscussionRecord.archiaterDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="主任医师"/>
      <assignedPerson>
        <name>${deathCaseDiscussionRecord.archiaterDoctorSign!'NA'}</name>
        <professionalTechnicalPosition>
          <professionaltechnicalpositionCode code="${deathCaseDiscussionRecord.professionalCatagoryCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.209" codeSystemName="专业技术职务类别代码表" displayName="<@dict_tag value="${deathCaseDiscussionRecord.professionalCatagoryCode!'NA'}" datasetCloumn="PROFESSIONAL_CATAGORY_CODE">${dict.desc}</@dict_tag>"/>
        </professionalTechnicalPosition>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!--讨论成员信息-->
  <participant typeCode="CON">
    <associatedEntity classCode="ECON">
      <associatedPerson>
        <name>${deathCaseDiscussionRecord.discussNames!'NA'}</name>
      </associatedPerson>
    </associatedEntity>
  </participant>
  <!--讨论主持人信息-->
  <participant typeCode="ORG">
    <associatedEntity classCode="ECON">
      <id extension="${deathCaseDiscussionRecord.compereName!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="主持人"/>
      <!--主持人姓名-->
      <associatedPerson>
        <name>${deathCaseDiscussionRecord.compereName!'NA'}</name>
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
                <id extension="${deathCaseDiscussionRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${deathCaseDiscussionRecord.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!--HDSD00.09.004 DE01.00.019.00 病房号 -->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${deathCaseDiscussionRecord.roomNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${deathCaseDiscussionRecord.roomNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!--HDSD00.09.036 DE08.10.026.00 科室名称 -->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${deathCaseDiscussionRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${deathCaseDiscussionRecord.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!--HDSD00.09.005 DE08.10.054.00 病区名称-->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${deathCaseDiscussionRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${deathCaseDiscussionRecord.areaName!'NA'}</name>
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
      <!--死亡原因章节 -->
      <component>
        <section>
          <code displayName="死亡原因"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="直接死亡原因名称"/>
              <value xsi:type="ST">${deathCaseDiscussionRecord.reasonDeath!'NA'}</value>
              <entryRelationship typeCode="CAUS">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.021.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="直接死亡原因编码"/>
                  <value code="${deathCaseDiscussionRecord.reasonDeathCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" xsi:type="CD" displayName="<@dict_tag value="${deathCaseDiscussionRecord.reasonDeathCode!'NA'}" datasetCloumn="REASON_DEATH_CODE">${dict.desc}</@dict_tag>"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
      <!--诊断章节-->
      <component>
        <section>
          <code code="11535-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡诊断名称"/>
              <value xsi:type="ST">${deathCaseDiscussionRecord.deathDiagName!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.021.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡诊断编码"/>
                  <value code="${deathCaseDiscussionRecord.deathDiagCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${deathCaseDiscussionRecord.deathDiagCode!'NA'}" datasetCloumn="DEATH_DIAG_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
      <!--讨论内容章节-->
      <component>
        <section>
          <code code="DE06.00.181.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡讨论记录"/>
          <text>${deathCaseDiscussionRecord.disDeathRecords!'NA'}</text>
        </section>
      </component>
      <!--讨论总结章节 -->
      <component>
        <section>
          <code code="DE06.00.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="主持人总结意见"/>
          <text>${deathCaseDiscussionRecord.compereSummarySuggestion!'NA'}</text>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>