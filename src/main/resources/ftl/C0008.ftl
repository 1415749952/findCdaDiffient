﻿<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.28"/>
  <!--文档流水号-->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0008" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>治疗记录</title>
  <!--文档机器生成时间-->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <!--文档记录对象（患者） [1..*] contextControlCode=OP表示本信息可以被重载-->
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--门诊号标识-->
      <id extension="${treatmentRecord.outpNo!'NA'}" root="2.16.156.10011.1.11"/>
      <!--住院号标识-->
      <id extension="${treatmentRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <!--电子申请单编号-->
      <id extension="${treatmentRecord.electronicApplyNo!'NA'}" root="2.16.156.10011.1.24"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${treatmentRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${treatmentRecord.patientSex!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${treatmentRecord.patientSex!'NA'}" datasetCloumn="PATIENT_SEX">${dict.desc}</@dict_tag>"/>
        <!--年龄-->
        <#if treatmentRecord.ageYear??>
        <age unit="岁" value="${treatmentRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${treatmentRecord.patientMonth!'NA'}"/>
        </#if>
      </patient>
    </patientRole>
  </recordTarget>
  <!--文档创作者-->
  <author contextControlCode="OP" typeCode="AUT">
    <time value="${treatmentRecord.signDatetime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${treatmentRecord.adviceExecSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${treatmentRecord.adviceExecSign!'NA'}</name>
      </assignedPerson>
    </assignedAuthor>
  </author>
  <!--保管机构-->
  <custodian typeCode="CST">
    <assignedCustodian classCode="ASSIGNED">
      <representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="${hospitalInfo.organCode!'NA'}" root="2.16.156.10011.1.5"/>
        <name>${hospitalInfo.organName!'NA'}</name>
      </representedCustodianOrganization>
    </assignedCustodian>
  </custodian>
  <!--医嘱执行者签名-->
  <authenticator>
    <!--签名日期时间-->
    <time value="${treatmentRecord.signDatetime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${treatmentRecord.adviceExecSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="医嘱执行者"/>
      <assignedPerson>
        <name>${treatmentRecord.adviceExecSign!'NA'}</name>
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
  <!--病床号、病房、病区、科室和医院的关联-->
  <componentOf>
    <encompassingEncounter>
      <!--入院日期时间-->
      <effectiveTime/>
      <location>
        <healthCareFacility>
          <serviceProviderOrganization>
            <asOrganizationPartOf classCode="PART">
              <!--DE01.00.026.00病床号-->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${treatmentRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${treatmentRecord.bedNo!'NA'}</name>
                <!--DE01.00.019.00病房号-->
                <asOrganizationPartOf classCode="PART">
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${treatmentRecord.areaNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${treatmentRecord.areaNo!'NA'}</name>
                    <!--DE08.10.026.00科室名称-->
                    <asOrganizationPartOf classCode="PART">
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${treatmentRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${treatmentRecord.deptName!'NA'}</name>
                        <!--DE08.10.054.00病区名称-->
                        <asOrganizationPartOf classCode="PART">
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${treatmentRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${treatmentRecord.areaName!'NA'}</name>
                            <asOrganizationPartOf classCode="PART">
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
      <!--既往史章节-->
      <component>
        <section>
          <code code="11348-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PAST ILLNESS"/>
          <text/>
          <#if treatmentRecord.incasiveOpertorCode??>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.165.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="有创诊疗操作标志"/>
              <value value="${treatmentRecord.incasiveOpertorCode!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          </#if>
          <!--过敏史标志-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.023.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="过敏史标志"/>
              <value value="${treatmentRecord.allergyHistoryType!'NA'}" xsi:type="BL"/>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE02.10.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="过敏史"/>
                  <value xsi:type="ST">${treatmentRecord.allergyHistory!'NA'}</value>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
      <!--生命体征章节-->
      <component>
        <section>
          <code code="8716-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="VITAL SIGNS"/>
          <text/>
          <#if treatmentRecord.bodyWeight??>
          <!--体格检查-体重（kg）-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.188.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="体重(kg)"/>
              <value unit="kg" value="${treatmentRecord.bodyWeight!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          </#if>
        </section>
      </component>
      <!--入院诊断章节-->
      <component>
        <section>
          <code code="46241-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HOSPITAL ADMISSION DX"/>
          <text/>
          <!--疾病诊断编码-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="疾病诊断编码"/>
              <value code="${treatmentRecord.diagCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" displayName="<@dict_tag value="${treatmentRecord.diagCode!'NA'}" datasetCloumn="DIAG_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--治疗计划章节-->
      <component>
        <section>
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>
          <text/>
          <!--处理及指导意见-->
          <entry>
            <observation classCode="OBS" moodCode="INT">
              <code code="DE06.00.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="处理及指导意见"/>
              <value xsi:type="ST">${treatmentRecord.disposeOpinion!'NA'}</value>
            </observation>
          </entry>
          <!--医嘱使用备注-->
          <entry>
            <observation classCode="OBS" moodCode="INT">
              <code code="DE06.00.179.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医嘱使用备注"/>
              <#if treatmentRecord.adviceRemakr??>
              <value xsi:type="ST">${treatmentRecord.adviceRemakr? replace('<','小于')? replace('>','大于')}</value>
              <#else>
              <value xsi:type="ST">${treatmentRecord.adviceRemakr!'NA'}</value>
            </#if>
            </observation>
          </entry>
          <!--今后治疗方案-->
          <entry>
            <observation classCode="OBS" moodCode="INT">
              <code code="DE06.00.159.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="今后治疗方案"/>
              <value xsi:type="ST">${treatmentRecord.afterTreatPlan!'NA'}</value>
            </observation>
          </entry>
          <#if treatmentRecord.visitWayCode??>
          <!--随访条目-->
          <entry>
            <observation classCode="CASE" moodCode="EVN">
              <code code="DE06.00.108.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门诊随访"/>
              <!--随访时间（数据元）-->
              <effectiveTime value="${treatmentRecord.followupDate!'NA'}"/>
              <value code="${treatmentRecord.visitWayCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.183" codeSystemName="随访方式代码表" displayName="<@dict_tag value="${treatmentRecord.visitWayCode!'NA'}" datasetCloumn="VISIT_WAY_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
              <!--随访周期建议代码-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.112.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="随访周期建议代码"/>
                  <value code="${treatmentRecord.visitPeriodicProposalCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.184" codeSystemName="随访周期建议代码表" displayName="<@dict_tag value="${treatmentRecord.visitPeriodicProposalCode!'NA'}" datasetCloumn="VISIT_PERIODIC_PROPOSAL_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
          </#if>
        </section>
      </component>
      <!--手术操作章节-->
      <component>
        <section>
          <code code="47519-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PROCEDURES"/>
          <text/>
          <#if treatmentRecord.opertorCode??>
          <!--1..1 手术记录-->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <code code="${treatmentRecord.opertorCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)" displayName="<@dict_tag value="${treatmentRecord.opertorCode!'NA'}" datasetCloumn="OPERTOR_CODE">${dict.desc}</@dict_tag>"/>
              <!--操作日期/时间-->
              <effectiveTime>
                <!--操作结束日期时间-->
                <high value="${treatmentRecord.operatorDate!'NA'}"/>
              </effectiveTime>
              <!--操作名称-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作名称"/>
                  <value xsi:type="ST">${treatmentRecord.optertorName!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--操作目标部位名称-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.187.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术目标部位名称"/>
                  <value xsi:type="ST">${treatmentRecord.opertorTarget!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--介入物名称-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE08.50.037.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="介入物名称"/>
                  <value xsi:type="ST">${treatmentRecord.interName!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--操作方法描述-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.251.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作方法描述"/>
                  <value xsi:type="ST">${treatmentRecord.operatorDesc!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--操作次数-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.250.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作次数"/>
                  <value value="${treatmentRecord.operatorNum!'NA'}" xsi:type="INT"/>
                </observation>
              </entryRelationship>
            </procedure>
          </entry>
          </#if>
        </section>
      </component>
      <!--用药管理章节-->
      <component>
        <section>
          <code code="18610-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="MEDICATION ADMINISTERED"/>
          <text/>
          <entry>
            <substanceAdministration classCode="SBADM" moodCode="EVN">
              <text/>
              <!--药物使用途径代码-->
              <routeCode code="${treatmentRecord.routeAdministration!'NA'}" codeSystem="2.16.156.10011.2.3.1.158" codeSystemName="用药途径代码表" displayName="<@dict_tag value="${treatmentRecord.routeAdministration!'NA'}" datasetCloumn="ROUTE_ADMINISTRATION">${dict.desc}</@dict_tag>"/>
              <!--药物使用次剂量-->
              <doseQuantity unit="mg" value="${treatmentRecord.drugUsageDosage!'NA'}"/>
              <consumable>
                <manufacturedProduct>
                  <manufacturedLabeledDrug>
                    <!--药品代码及名称(通用名)-->
                    <code/>
                    <name>${treatmentRecord.drugName!'NA'}</name>
                  </manufacturedLabeledDrug>
                </manufacturedProduct>
              </consumable>
              <!--药物用法-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.136.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="药物用法"/>
                  <value xsi:type="ST">${treatmentRecord.drugUsage!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--中药使用类别代码-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.164.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中药使用类别代码"/>
                  <value code="${treatmentRecord.tcdTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.157" codeSystemName="中药使用类别代码表" displayName="<@dict_tag value="${treatmentRecord.tcdTypeCode!'NA'}" datasetCloumn="TCD_TYPE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <#if treatmentRecord.drugUsageFre??>
              <!--药物使用频率-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.133.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="药物使用频率"/>
                  <value code="${treatmentRecord.drugUsageFre!'NA'}" codeSystem="2.16.156.10011.2.3.1.267" codeSystemName="药物使用频次代码表" displayName="<@dict_tag value="${treatmentRecord.drugUsageFre!'NA'}" datasetCloumn="DRUG_USAGE_FRE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              </#if>
              <!--药物剂型代码-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE08.50.011.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="药物剂型代码"/>
                  <value code="${treatmentRecord.drugDosageCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.211" codeSystemName="药物剂型代码表" displayName="<@dict_tag value="${treatmentRecord.drugDosageCode!'NA'}" datasetCloumn="DRUG_DOSAGE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </entryRelationship>
              <!--药物使用剂量单位-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE08.50.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="药物使用剂量单位"/>
                  <value xsi:type="ST">${treatmentRecord.drugDosageUnit!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--药物使用总剂量-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.135.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="药物使用总剂量"/>
                  <value unit="g" value="${treatmentRecord.drugUsageTotal!'NA'}" xsi:type="PQ"/>
                </observation>
              </entryRelationship>
            </substanceAdministration>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>