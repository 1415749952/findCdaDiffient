<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.26"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0006" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>检查报告</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <!--文档记录对象（患者）-->
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--门（急）诊号标识 -->
      <id extension="${inspectionRecord.outpNo!'NA'}" root="2.16.156.10011.1.11"/>
      <!--住院号标识-->
      <id extension="${inspectionRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <#if inspectionRecord.examinationReportNo??>
      <!--检查报告单号标识-->
      <id extension="${inspectionRecord.examinationReportNo!'NA'}" root="2.16.156.10011.1.32"/>
      </#if>
      <!--电子申请单编号-->
      <id extension="${inspectionRecord.applyNo!'NA'}" root="2.16.156.10011.1.24"/>
      <#if inspectionRecord.examinationInspectionNo??>
      <!-- 标本编号标识 -->
      <id extension="${inspectionRecord.examinationInspectionNo!'NA'}" root="2.16.156.10011.1.14"/>
      </#if>
      <!-- 患者类别代码 -->
      <patientType>
        <patienttypeCode code="${inspectionRecord.visitTypeNo!'NA'}" codeSystem="2.16.156.10011.2.3.1.271" codeSystemName="患者类型代码表" displayName="<@dict_tag value="${inspectionRecord.visitTypeNo!'NA'}" datasetCloumn="VISIT_TYPE_NO">${dict.desc}</@dict_tag>"/>
      </patientType>
      <telecom value="<@privacy_tag value="${inspectionRecord.patientPhone!'NA'}" privacyId="5">${privacy}</@privacy_tag>"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
      <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${inspectionRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${inspectionRecord.patientSex!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${inspectionRecord.patientSex!'NA'}" datasetCloumn="PATIENT_SEX">${dict.desc}</@dict_tag>"/>
        <!-- 年龄 -->
        <#if inspectionRecord.ageYear??>
        <age unit="岁" value="${inspectionRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${inspectionRecord.patientMonth!'NA'}"/>
        </#if>
      </patient>
    </patientRole>
  </recordTarget>
  <!-- 检查报告医师（文档创作者） -->
  <author contextControlCode="OP" typeCode="AUT">
    <!-- 检查报告日期 -->
    <time value="${inspectionRecord.examinationRtDate!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${inspectionRecord.reportDoctor!'NA'}" root="2.16.156.10011.1.7"/>
      <!-- 医师姓名 -->
      <assignedPerson>
        <name>${inspectionRecord.reportDoctor!'NA'}</name>
      </assignedPerson>
    </assignedAuthor>
  </author>
    <!-- 保管机构 -->
  <custodian typeCode="CST">
    <assignedCustodian classCode="ASSIGNED">
      <representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="${inspectionRecord.organCode!'NA'}" root="2.16.156.10011.1.5"/>
        <name>${hospitalInfo.organName!'NA'}</name>
      </representedCustodianOrganization>
    </assignedCustodian>
  </custodian>
  <!-- 审核医师签名 -->
  <legalAuthenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inspectionRecord.reportaudit!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="审核医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inspectionRecord.reportaudit!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </legalAuthenticator>
  <!-- 检查技师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inspectionRecord.inspectEngineerName!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="检查技师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inspectionRecord.inspectEngineerName!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 检查医师签名 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${inspectionRecord.examinationDoctor!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="检查医师"/>
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>${inspectionRecord.examinationDoctor!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 检查申请机构及科室 -->
  <participant typeCode="PRF">
    <time/>
    <associatedEntity classCode="ASSIGNED">
      <scopingOrganization>
        <!-- 科室信息 -->
        <id extension="${inspectionRecord.examinationApplyRoom!'NA'}" root="2.16.156.10011.1.26"/>
        <name>${inspectionRecord.examinationApplyRoom!'NA'}</name>
        <asOrganizationPartOf>
          <!-- 检查申请机构信息 -->
          <wholeOrganization>
            <id extension="${inspectionRecord.organCode!'NA'}" root="2.16.156.10011.1.5"/>
            <name>${inspectionRecord.examinationApplyOrgan!'NA'}</name>
          </wholeOrganization>
        </asOrganizationPartOf>
      </scopingOrganization>
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
              <!-- DE01.00.026.00病床号 -->
              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                <id extension="${inspectionRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${inspectionRecord.bedNo!'NA'}</name>
                <!-- DE01.00.019.00病房号 -->
                <asOrganizationPartOf classCode="PART">
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${inspectionRecord.roomNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${inspectionRecord.roomNo!'NA'}</name>
                    <!-- DE08.10.026.00科室名称 -->
                    <asOrganizationPartOf classCode="PART">
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${inspectionRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${inspectionRecord.deptName!'NA'}</name>
                        <!-- DE08.10.054.00病区名称 -->
                        <asOrganizationPartOf classCode="PART">
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${inspectionRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${inspectionRecord.areaName!'NA'}</name>
                            <asOrganizationPartOf classCode="PART">
                              <!--医院信息 -->
                              <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                                <id extension="${inspectionRecord.organCode!'NA'}" root="2.16.156.10011.1.5"/>
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
      <!-- 诊断记录章节-->
      <component>
        <section>
          <code code="29548-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Diagnosis"/>
          <text/>
          <!--条目：诊断-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊断代码"/>
              <!--诊断日期-->
              <effectiveTime value="${inspectionRecord.diagnosisDate!'NA'}"/>
              <value code="${inspectionRecord.diagCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" xsi:type="CD" displayName="<@dict_tag value="${inspectionRecord.diagCode!'NA'}" datasetCloumn="DIAG_CODE">${dict.desc}</@dict_tag>"/>
              <performer>
                <assignedEntity>
                  <id/>
                  <representedOrganization>
                    <name>${inspectionRecord.diagnosisOrganName!'NA'}</name>
                  </representedOrganization>
                </assignedEntity>
              </performer>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 主诉章节 -->
      <component>
        <section>
          <code code="10154-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="CHIEF COMPLAINT"/>
          <text/>
          <!--主诉条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.01.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="主诉"/>
              <#if inspectionRecord.chiefComplaint??>
              <value xsi:type="ST">${inspectionRecord.chiefComplaint? replace('<','小于')? replace('>','大于')}</value>
              <#else>
              <value xsi:type="ST">${inspectionRecord.chiefComplaint!'NA'}</value>
            </#if>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 症状章节 -->
      <component>
        <section>
          <code code="11450-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PROBLEM LIST"/>
          <text/>
          <!-- 症状描述条目 -->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.01.117.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="症状描述"/>
              <!-- 症状开始时间与停止时间 -->
              <effectiveTime>
                <low value="${inspectionRecord.startSymptomsDate!'NA'}"/>
                <high value="${inspectionRecord.stopSymptomsDate!'NA'}"/>
              </effectiveTime>
              <#if inspectionRecord.symptomDesc??>
              <value xsi:type="ST">${inspectionRecord.symptomDesc? replace('<','小于')? replace('>','大于')}</value>
              <#else>
              <value xsi:type="ST">${inspectionRecord.symptomDesc!'NA'}</value>
            </#if>
            </observation>
          </entry>
        </section>
      </component>
      <#if inspectionRecord.opertorCode??>
      <!-- 手术操作章节 -->
      <component>
        <section>
          <code code="47519-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PROCEDURES"/>
          <text/>
          <entry>
            <!-- 1..1 手术记录 -->
            <procedure classCode="PROC" moodCode="EVN">
              <code code="${inspectionRecord.opertorCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)" displayName="<@dict_tag value="${inspectionRecord.opertorCode!'NA'}" datasetCloumn="OPERTOR_CODE">${dict.desc}</@dict_tag>"/>
              <statusCode/>
              <!--操作日期/时间-->
              <effectiveTime value="${inspectionRecord.operatorDate!'NA'}"/>
              <!-- 操作部位代码 -->
              <targetSiteCode code="${inspectionRecord.operationPositionCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.266" codeSystemName="操作部位代码表" displayName="<@dict_tag value="${inspectionRecord.operationPositionCode!'NA'}" datasetCloumn="OPERATION_POSITION_CODE">${dict.desc}</@dict_tag>"/>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术（操作）名称"/>
                  <value xsi:type="ST">${inspectionRecord.operationName!'NA'}</value>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE08.50.037.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="介入物名称"/>
                  <value xsi:type="ST">${inspectionRecord.insertionName!'NA'}</value>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.251.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作方法描述"/>
                  <value xsi:type="ST">${inspectionRecord.operatorDesc!'NA'}</value>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.250.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作次数"/>
                  <value xsi:type="ST">${inspectionRecord.operatorNumber!'NA'}</value>
                </observation>
              </entryRelationship>
              <!-- 0..1 麻醉信息 -->
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方式代码"/>
                  <value code="${inspectionRecord.anesthesiaMethodCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表" xsi:type="CD" displayName="<@dict_tag value="${inspectionRecord.anesthesiaMethodCode!'NA'}" datasetCloumn="ANESTHESIA_METHOD_CODE">${dict.desc}</@dict_tag>"/>
                  <!-- 麻醉医师签名 -->
                  <performer>
                    <assignedEntity>
                      <id/>
                      <assignedPerson>
                        <name>${inspectionRecord.anesthesiaDoctorSign!'NA'}</name>
                      </assignedPerson>
                    </assignedEntity>
                  </performer>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE02.10.028.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉观察结果"/>
                  <value xsi:type="ST">${inspectionRecord.anesthesiaObservationResult!'NA'}</value>
                </observation>
              </entryRelationship>
              <#if inspectionRecord.anesthesiaDoctorFlagCode??>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.307.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉中西医标识代码"/>
                   <value code="${inspectionRecord.anesthesiaDoctorFlagCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.41" codeSystemName="麻醉中西医标识代码表" xsi:type="CD" displayName="<@dict_tag value="${inspectionRecord.anesthesiaDoctorFlagCode!'NA'}" datasetCloumn="ANESTHESIA_DOCTOR_FLAG_CODE">${dict.desc}</@dict_tag>"/>
                </observation>
              </entryRelationship>
              </#if>
            </procedure>
          </entry>
        </section>
      </component>
      </#if>
      <!-- 体格检查章节-->
      <component>
        <section>
          <code code="29545-1" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="PHYSICAL EXAMINATION"/>
          <text/>
          <!--特殊检查条目-->
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.01.079.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="特殊检查标志"/>
              <value xsi:type="ST">${inspectionRecord.specialExaminationFlag!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.027.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检查方法名称"/>
              <value xsi:type="ST">${inspectionRecord.inspectionMethodName!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检查类别"/>
              <value xsi:type="ST">${inspectionRecord.examinationTyp!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.30.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检查项目代码"/>
                  <!-- 检查日期 -->
                  <effectiveTime value="${inspectionRecord.examinationDat!'NA'}"/>
                  <value xsi:type="ST">${inspectionRecord.examinationItemCode!'NA'}</value>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE04.30.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="标本类别"/>
                      <effectiveTime>
                        <!-- DE04.50.137.00标本采样日期时间 -->
                        <low value="${inspectionRecord.specimenSampleDate!'NA'}"/>
                        <!-- DE04.50.141.00 接收标本日期时间 -->
                        <high value="${inspectionRecord.receiveSpecimenDate!'NA'}"/>
                      </effectiveTime>
                      <value xsi:type="ST">${inspectionRecord.sampleType!'NA'}</value>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE04.50.135.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="标本状态"/>
                      <value xsi:type="ST">${inspectionRecord.sampleState!'NA'}</value>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE04.30.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="标本固定液名称"/>
                      <value xsi:type="ST">${inspectionRecord.specimenFixativeName!'NA'}</value>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.30.017.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检查(检验)结果代码表"/>
                  <value xsi:type="CD" code="${inspectionRecord.examinationResultCode!'NA'}" displayName="<@dict_tag value="${inspectionRecord.examinationResultCode!'NA'}" datasetCloumn="EXAMINATION_RESULT_CODE">${dict.desc}</@dict_tag>" codeSystem="2.16.156.10011.2.3.2.38" codeSystemName="检查/检验结果代码表"/>
                </observation>
              </component>
              <#if inspectionRecord.inspectionQuantifyResult??>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.30.015.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检查定量结果"/>
                  <value xsi:type="REAL" value="${inspectionRecord.inspectionQuantifyResult!'NA'}"/>
                   <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE04.30.016.00" displayName="检查定量 结果计量单位" codeSystemName="卫生信息数据元目录" codeSystem="2.16.156.10011.2.2.1"/>
                      <value xsi:type="ST">${inspectionRecord.examinationQuantifyUnit!'NA'}</value>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              </#if>
            </organizer>
          </entry>
        </section>
      </component>
      <!-- 其他处置章节 -->
      <component>
        <section>
          <code displayName="其他处置章节"/>
          <text/>
          <!-- 诊疗过程描述 -->
          <entry typeCode="COMP">
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.296.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊疗过程描述"/>
              <#if inspectionRecord.diagDesc??>
              <value xsi:type="ST">${inspectionRecord.diagDesc? replace('<','小于')? replace('>','大于')}</value>
              <#else>
              <value xsi:type="ST">${inspectionRecord.diagDesc!'NA'}</value>
            </#if>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 检查报告章节 -->
      <component>
        <section>
          <code displayName="检查报告"/>
          <text/>
          <#if inspectionRecord.objectiveExaminationResult??>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.50.131.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检查报告结果-客观所见"/>
              <#if inspectionRecord.objectiveExaminationResult??>
              <value xsi:type="ST">${inspectionRecord.objectiveExaminationResult? replace('<','小于')? replace('>','大于')}</value>
              <#else>
              <value xsi:type="ST">${inspectionRecord.objectiveExaminationResult!'NA'}</value>
            </#if>
            </observation>
          </entry>
          </#if>
          <#if inspectionRecord.subjectiveExaminationResult??>   
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.50.132.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检查报告结果-主观提示"/>
              <#if inspectionRecord.subjectiveExaminationResult??>
              <value xsi:type="ST">${inspectionRecord.subjectiveExaminationResult? replace('<','小于')? replace('>','大于')}</value>
              <#else>
              <value xsi:type="ST">${inspectionRecord.subjectiveExaminationResult!'NA'}</value>
              </#if>
            </observation>
          </entry>
          </#if>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE08.10.026.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检查报告科室"/>
              <value xsi:type="ST">${inspectionRecord.examinationReportRoom!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE08.10.013.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检查报告机构名称"/>
              <value xsi:type="ST">${inspectionRecord.examinationReportOrgan!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.179.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检查报告备注"/>
              <value xsi:type="ST">${inspectionRecord.examinationRtRemarks!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>