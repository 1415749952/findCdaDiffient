<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.64"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0044" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>抢救记录</title>
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
      <id extension="${salvageRecrod.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${salvageRecrod.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${salvageRecrod.sexCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${salvageRecrod.sexCode!'NA'}" datasetCloumn="SEX_CODE">${dict.desc}</@dict_tag>"/>
        <birthTime value="${emrBasicpatient.birthday!'NA'}"/>
        <#if salvageRecrod.ageYear??>
        <age unit="岁" value="${salvageRecrod.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${salvageRecrod.patientMonth!'NA'}"/>
        </#if>
      </patient>
    </patientRole>
  </recordTarget>
  <!-- 文档创作者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <time value="${salvageRecrod.signDatatime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${salvageRecrod.doctorSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${salvageRecrod.doctorSign!'NA'}</name>
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
    <time value="${salvageRecrod.signDatatime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${salvageRecrod.doctorSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="医师签名"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${salvageRecrod.doctorSign!'NA'}</name>
        <#if salvageRecrod.professionalCatagoryCode??>
        <professionalTechnicalPosition>
          <professionaltechnicalpositionCode code="${salvageRecrod.professionalCatagoryCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.209" codeSystemName="专业技术职务类别代码表" displayName="<@dict_tag value="${salvageRecrod.professionalCatagoryCode!'NA'}" datasetCloumn="PROFESSIONAL_CATAGORY_CODE">${dict.desc}</@dict_tag>"/>
        </professionalTechnicalPosition>
        </#if>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!--讨论成员信息-->
  <participant typeCode="CON">
    <associatedEntity classCode="ECON">
      <associatedPerson>
        <name>${salvageRecrod.salvageNames!'NA'}</name>
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
      <code displayName="入院日期时间"/>
      <!--入院日期时间-->
      <effectiveTime value="${salvageRecrod.salvageBeginDatatime!'NA'}" xsi:type="IVL_TS"/>
      <location>
        <healthCareFacility>
          <serviceProviderOrganization>
            <asOrganizationPartOf classCode="PART">
              <!-- DE01.00.026.00病床号 -->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${salvageRecrod.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${salvageRecrod.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!-- DE01.00.019.00病房号 -->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${salvageRecrod.roomNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${salvageRecrod.roomNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!-- DE08.10.026.00科室名称 -->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${salvageRecrod.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${salvageRecrod.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!-- DE08.10.054.00病区名称 -->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${salvageRecrod.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${salvageRecrod.areaName!'NA'}</name>
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
      <component>
        <!--诊断章节-->
        <section>
          <code code="29548-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
          <text/>
          <!--疾病诊断名称-->
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="疾病诊断名称"/>
              <value xsi:type="ST">${salvageRecrod.diagName!'NA'}</value>
            </observation>
          </entry>
          <!--疾病诊断编码-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="疾病诊断编码"/>
              <value code="${salvageRecrod.diagCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="诊断代码表(ICD-10)" xsi:type="CD" displayName="<@dict_tag value="${salvageRecrod.diagCode!'NA'}" datasetCloumn="DIAG_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <!--病情变化情况-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.134.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病情变化情况"/>
              <value xsi:type="ST">${salvageRecrod.illnessChangeSituation!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--治疗计划章节 1..*-->
      <component>
        <section>
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>
          <text/>
          <!--注意事项-->
          <entry>
            <observation classCode="OBS" moodCode="EVN ">
              <code code="DE09.00.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="注意事项"/>
              <value xsi:type="ST">${salvageRecrod.mattersNeedAttention!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!--术操作章节-->
      <component>
        <section>
          <code code="47519-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PROCEDURES"/>
          <text/>
          <!-- 1..1 手术及操作编码 -->
          <entry>
            <procedure classCode="PROC" moodCode="EVN">
              <code code="${salvageRecrod.operationCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)" displayName="<@dict_tag value="${salvageRecrod.operationCode!'NA'}" datasetCloumn="OPERATION_CODE">${dict.desc}</@dict_tag>"/>
              <statusCode/>
              <!--手术操作目标部位名称DE06.00.187.00-->
              <targetSiteCode/>
              <!--手术及操作名称-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN ">
                  <code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术及操作名称"/>
                  <value xsi:type="ST">${salvageRecrod.operationName!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--手术及操作部位名称-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN ">
                  <code code="DE06.00.187.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术及操作部位名称"/>
                  <value xsi:type="ST">${salvageRecrod.opertationTargetName!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--介入物名称-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS " moodCode="EVN ">
                  <code code="DE08.50.037.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="介入物名称"/>
                  <value xsi:type="ST">${salvageRecrod.interName!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--操作方法-->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN ">
                  <code code="DE06.00.251.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作方法"/>
                  <value xsi:type="ST">${salvageRecrod.operatorMethod!'NA'}</value>
                </observation>
              </entryRelationship>
              <!--操作次数-->
              <entryRelationship typeCode="COMP ">
                <observation classCode="OBS" moodCode="EVN ">
                  <code code="DE06.00.250.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作次数"/>
                  <value unit="次" value="${salvageRecrod.operatorNumber!'NA'}" xsi:type="PQ"/>
                </observation>
              </entryRelationship>
            </procedure>
          </entry>
          <!--抢救措施-->
          <entry>
            <procedure classCode="ACT" moodCode="EVN ">
              <code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="抢救措施"/>
              <text xsi:type="ST">${salvageRecrod.rescueMeasures!'NA'}</text>
            </procedure>
          </entry>
          <!--抢救开始日期时间-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.221.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="抢救开始日期时间"/>
              <value value="${salvageRecrod.salvageBeginDatatime!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <!--抢救结束日期时间-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.218.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="抢救结束日期时间"/>
              <value value="${salvageRecrod.salvageEndDatetime!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
        </section>
      </component>
      <!--实验室检查章节-->
      <component>
        <section>
          <code code="30954-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="STUDIES SUMMARY"/>
          <text/>
          <!--检查/检验项目-->
          <entry>
            <observation classCode="OBS " moodCode="EVN ">
              <code code="DE04.30.020.00" displayName="检查/检验项目名称" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="卫生信息数据元目录"/>
              <value xsi:type="ST">${salvageRecrod.inspectionItemName!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <!--检查/检验结果-->
                <observation classCode="OBS " moodCode="EVN ">
                  <code code="DE04.30.009.00" displayName="检查/检验结果" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
                  <value xsi:type="ST">${salvageRecrod.inspectionResult!'NA'}</value>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <!--检查/检验定量结果-->
                <observation classCode="OBS " moodCode="EVN ">
                  <code code="DE04.30.015.00" displayName="检查/检验定量结果" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="卫生信息数据元目录"/>
                  <value xsi:type="PQ" value="${salvageRecrod.inspectionQuantifyResult!'NA'}" unit="ng/ml"/>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <!--检查/检验结果代码-->
                <observation classCode="OBS " moodCode="EVN ">
                  <code code="DE04.30.017.00" displayName="检查/检验结果代码" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="卫生信息数据元目录"/>
                  <!--2.正常 1.异常 3.不确定-->
                  <value code="${salvageRecrod.inspectionResultCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.38" codeSystemName="检查(检验)结果代码表" xsi:type="CD" displayName="<@dict_tag value="${salvageRecrod.inspectionResultCode!'NA'}" datasetCloumn="INSPECTION_RESULT_CODE">${dict.desc}</@dict_tag>"/>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>