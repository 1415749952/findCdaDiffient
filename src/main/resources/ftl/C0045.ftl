<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.65"/>
  <!-- 文档流水号 -->
  <id extension="${consultationRecord.inpNo!'NA'}" root="2.16.156.10011.1.1"/>
  <code code="C0045" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>会诊记录</title>
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
      <id extension="${consultationRecord.inpObjectNo!'NA'}" root="2.16.156.10011.1.12"/>
      <!--电子申请单编号标识-->
      <id extension="${consultationRecord.inpNo!'NA'}" root="2.16.156.10011.1.24"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${consultationRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${consultationRecord.sexCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${consultationRecord.sexCode!'NA'}" datasetCloumn="SEX_CODE">${dict.desc}</@dict_tag>"/>
        <birthTime value="${emrBasicpatient.birthday!'NA'}"/>
        <!--1数据集里是年龄（年）、年龄（月）-->
        <#if consultationRecord.ageYear??>
        <age unit="岁" value="${consultationRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${consultationRecord.patientMonth!'NA'}"/>
        </#if>
      </patient>
    </patientRole>
  </recordTarget>
  <!-- 文档创作者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <time value="${consultationRecord.consultationDatatime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${consultationRecord.consultationDoctorSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${consultationRecord.consultationDoctorSign!'NA'}</name>
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
  <!-- 会诊申请相关 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${consultationRecord.applyDoctorName!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="会诊申请医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${consultationRecord.applyDoctorName!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!--会诊医师相关-->
  <authenticator>
    <time value="${consultationRecord.consultationDatatime!'NA'}" xsi:type="TS"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${consultationRecord.consultationDoctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="会诊医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${consultationRecord.consultationDoctorSign!'NA'}</name>
      </assignedPerson>
      <representedOrganization>
        <!--会诊医师所在医疗机构名称-->
        <name>${consultationRecord.consultationDoctorOrgname!'NA'}</name>
      </representedOrganization>
    </assignedEntity>
  </authenticator>
  <!--会诊申请医疗机构名称-->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id/>
      <code displayName="会诊申请医疗机构"/>
      <representedOrganization>
        <asOrganizationPartOf>
          <wholeOrganization>
            <id extension="${consultationRecord.applyDeptName!'NA'}" root="2.16.156.10011.1.26"/>
            <!-- 申请会诊科室 -->
            <name>${consultationRecord.applyDeptName!'NA'}</name>
            <asOrganizationPartOf>
              <wholeOrganization>
                <id extension="${consultationRecord.applyOrgName!'NA'}" root="2.16.156.10011.1.5"/>
                <!-- 会诊申请医疗机构名称 -->
                <name>${consultationRecord.applyOrgName!'NA'}</name>
              </wholeOrganization>
            </asOrganizationPartOf>
          </wholeOrganization>
        </asOrganizationPartOf>
      </representedOrganization>
    </assignedEntity>
  </authenticator>
  <!--会诊所在医疗机构名称-->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id/>
      <code displayName="会诊所在机构"/>
      <representedOrganization>
        <asOrganizationPartOf>
          <wholeOrganization>
            <id extension="${consultationRecord.consultationDeptName!'NA'}" root="2.16.156.10011.1.26"/>
            <!--会诊科室名称-->
            <name>${consultationRecord.consultationDeptName!'NA'}</name>
            <asOrganizationPartOf>
              <wholeOrganization>
                <id extension="${consultationRecord.consultationOrgname!'NA'}" root="2.16.156.10011.1.5"/>
                <!--会诊所在医疗机构名称-->
                <name>${consultationRecord.consultationOrgname!'NA'}</name>
              </wholeOrganization>
            </asOrganizationPartOf>
          </wholeOrganization>
        </asOrganizationPartOf>
      </representedOrganization>
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
      <!--入院时间-->
      <effectiveTime value="${consultationRecord.consultationDatatime!'NA'}" xsi:type="IVL_TS"/>
      <location>
        <healthCareFacility>
          <serviceProviderOrganization classCode="ORG" determinerCode="INSTANCE">
            <asOrganizationPartOf classCode="PART">
              <!--HDSD00.09.003 DE01.00.026.00 病床号 -->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${consultationRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${consultationRecord.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!--HDSD00.09.004 DE01.00.019.00 病房号 -->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${consultationRecord.roomNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${consultationRecord.roomNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!--HDSD00.09.036 DE08.10.026.00 科室名称 -->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${consultationRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${consultationRecord.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!--病区名称-->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${consultationRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${consultationRecord.areaName!'NA'}</name>
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
      <!--健康评估章节-->
      <component>
        <section>
          <code code="51848-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Assessment note"/>
          <text/>
          <!-- 病历摘要-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.182.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病历摘要"/>
              <value xsi:type="ST">${consultationRecord.mrExcerpts!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--诊断章节-->
      <component>
        <section>
          <code code="29548-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
          <text/>
          <!--西医诊断名称-->
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="西医诊断名称"/>
              <value xsi:type="ST">${consultationRecord.diagName!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="西医诊断编码"/>
                  <!--西医诊断编码-->
                  <value xsi:type="CD" code="${consultationRecord.westernDiagnosisCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${consultationRecord.westernDiagnosisCode!'NA'}" datasetCloumn="WESTERN_DIAGNOSIS_CODE">${dict.desc}</@dict_tag>"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          <#if consultationRecord.chineseDiagnosisName??>
          <!--中医诊断名称-->
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医诊断名称">
                <qualifier>
                  <name displayName="中医诊断名称"/>
                </qualifier>
              </code>
              <value xsi:type="ST">${consultationRecord.chineseDiagnosisName!'NA'}</value>
            </observation>
          </entry>
          </#if>
          <#if consultationRecord.chineseDiagnosisCode??>
          <!--中医病名代码-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医病名代码">
                <qualifier>
                  <name displayName="中医病名代码"/>
                </qualifier>
              </code>
              <value code="${consultationRecord.chineseDiagnosisCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" xsi:type="CD" displayName="<@dict_tag value="${consultationRecord.chineseDiagnosisCode!'NA'}" datasetCloumn="CHINESE_DIAGNOSIS_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          </#if>
          <#if consultationRecord.chineseSyndromeName??>
          <!--中医诊断症候名称-->
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医诊断症候名称">
                <qualifier>
                  <name displayName="中医症候名称"/>
                </qualifier>
              </code>
              <value xsi:type="ST">${consultationRecord.chineseSyndromeName!'NA'}</value>
            </observation>
          </entry>
          </#if>
          <#if consultationRecord.chineseSyndromeName??>
          <!--中医症候代码-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医症候代码">
                <qualifier>
                  <name displayName="中医症候代码"/>
                </qualifier>
              </code>
              <value code="${consultationRecord.chineseSyndromeCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)" xsi:type="CD" displayName="<@dict_tag value="${consultationRecord.chineseSyndromeCode!'NA'}" datasetCloumn="CHINESE_SYNDROME_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          </#if>
          <#if consultationRecord.tcmFourResults??>
          <!--中医“四诊”观察结果-->
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE02.10.028.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中医“四诊”观察结果"/>
              <value xsi:type="ST">${consultationRecord.tcmFourResults!'NA'}</value>
            </observation>
          </entry>
          </#if>
        </section>
      </component>
      <!--辅助检查章节-->
      <component>
        <section>
          <code displayName="辅助检查章节"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.009.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="辅助检查结果"/>
              <value xsi:type="ST">${consultationRecord.auxiliaryexamiResult!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--治疗计划章节-->
      <component>
        <section>
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>
          <text/>
          <!--诊疗过程名称-->
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE06.00.297.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊疗过程名称"/>
              <value xsi:type="ST">${consultationRecord.diagtreatProcessesName!'NA'}</value>
            </observation>
          </entry>
          <!--治则治法-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.300.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="治则治法"/>
              <value xsi:type="ST">${consultationRecord.therapeuticPrinciple!'NA'}</value>
            </observation>
          </entry>
          <!--会诊目的-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.214.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会诊目的"/>
              <value xsi:type="ST">${consultationRecord.consultationPurpose!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--会诊原因章节-->
      <component>
        <section>
          <code displayName="会诊原因"/>
          <text/>
          <!--会诊类型-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.319.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会诊类型"/>
              <value xsi:type="ST">${consultationRecord.consultationType!'NA'}</value>
            </observation>
          </entry>
          <!--会诊原因-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.039.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会诊原因"/>
              <value xsi:type="ST">${consultationRecord.consultationReason!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--会诊意见章节-->
      <component>
        <section>
          <code displayName="会诊意见"/>
          <text/>
          <!--会诊意见-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会诊意见"/>
              <value xsi:type="ST">${consultationRecord.consultationSuggestion!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--住院过程章节-->
      <component>
        <section>
          <code code="8648-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Hospital Course"/>
          <text/>
          <!--诊疗过程描述-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.296.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊疗过程描述"/>
              <#if consultationRecord.diagDesc??>
              <value xsi:type="ST">${consultationRecord.diagDesc? replace('<','小于')? replace('>','大于')}</value>
              <#else>
              <value xsi:type="ST">${consultationRecord.diagDesc!'NA'}</value>
              </#if>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>