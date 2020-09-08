<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.39"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0019" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>手术护理记录</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--门（急）诊号标识 -->
      <id extension="${operationCareRecord.outpNo!'NA'}" root="2.16.156.10011.1.11"/>
      <!--住院号：DE01.00.014.00 @@@参照OID分配表修改 -->
      <id extension="${operationCareRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${operationCareRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <administrativeGenderCode code="${operationCareRecord.patientSex!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="<@dict_tag value="${operationCareRecord.patientSex!'NA'}" datasetCloumn="PATIENT_SEX">${dict.desc}</@dict_tag>"/>
        <#if operationCareRecord.ageYear??>
        <age unit="岁" value="${operationCareRecord.ageYear!'NA'}"/>
        <#else>
        <age unit="月" value="${operationCareRecord.patientMonth!'NA'}"/>
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
    <time value="${operationCareRecord.signDatetime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${operationCareRecord.circulatingNurseSing!'NA'}" root="2.16.156.10011.1.7"/>
      <code displayName="巡台护士"/>
      <assignedPerson>
        <name>${operationCareRecord.circulatingNurseSing!'NA'}</name>
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
  <!-- 巡台护士签名 -->
  <authenticator>
    <!--签名日期时间：DE09.00.053.00 -->
    <time value="${operationCareRecord.signDatetime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${operationCareRecord.circulatingNurseSing!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="巡台护士"/>
      <assignedPerson>
        <!--姓名-->
        <name>${operationCareRecord.circulatingNurseSing!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 器械护士签名 -->
  <authenticator>
    <!--签名日期时间：DE09.00.053.00 -->
    <time value="${operationCareRecord.signDatetime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${operationCareRecord.instrumentNurseSing!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="器械护士"/>
      <assignedPerson>
        <name>${operationCareRecord.instrumentNurseSing!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 交接护士签名 -->
  <authenticator>
    <!--签名日期时间：DE09.00.053.00 -->
    <time value="${operationCareRecord.handoverDatetime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${operationCareRecord.handoverNurseSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="交接护士"/>
      <assignedPerson>
        <name>${operationCareRecord.handoverNurseSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 转运者签名 -->
  <authenticator>
    <!--签名日期时间：DE09.00.053.00 -->
    <time value="${operationCareRecord.signDatetime!'NA'}"/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${operationCareRecord.transporterSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="转运者"/>
      <assignedPerson>
        <name>${operationCareRecord.transporterSign!'NA'}</name>
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
                <id extension="${operationCareRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${operationCareRecord.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!--病房号：DE01.00.019.00-->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${operationCareRecord.areaNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${operationCareRecord.areaNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!--科室名称：DE08.10.026.00-->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${operationCareRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${operationCareRecord.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!--病区名称：DE08.10.054.00-->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${operationCareRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${operationCareRecord.areaName!'NA'}</name>
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
      <!--术前诊断章节-->
      <component>
        <section>
          <code code="10219-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Surgical operation note preoperative Dx"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术前诊断编码"/>
              <value code="${operationCareRecord.preOperationCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10" xsi:type="CD" displayName="<@dict_tag value="${operationCareRecord.preOperationCode!'NA'}" datasetCloumn="PRE_OPERATION_CODE">${dict.desc}</@dict_tag>"/>
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
              <code code="DE04.10.188.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="体重(kg)"/>
              <value unit="kg" value="${operationCareRecord.weight!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 实验室检查章节-->
      <component>
        <section>
          <code code="30954-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="STUDIES SUMMARY"/>
          <text/>
          <entry>
            <!-- 血型-->
            <organizer classCode="BATTERY" moodCode="EVN">
              <statusCode/>
              <component>
                <!-- ABO血型 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
                  <value code="${operationCareRecord.bloodAboCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.85" codeSystemName="ABO血型代码表" displayName="<@dict_tag value="${operationCareRecord.bloodAboCode!'NA'}" datasetCloumn="BLOOD_ABO_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </component>
              <component>
                <!-- Rh(d)血型 -->
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.50.010.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
                  <value code="${operationCareRecord.rhBloodCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.250" codeSystemName="Rh(D)血型代码表" displayName="<@dict_tag value="${operationCareRecord.rhBloodCode!'NA'}" datasetCloumn="RH_BLOOD_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <!--皮肤章节-->
      <component>
        <section>
          <code code="29302-7" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="INTEGUMENTARY SYSTEM"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.126.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="皮肤检查描述"/>
              <value xsi:type="ST">${operationCareRecord.skinInspectionDescription!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
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
                  <value value="${operationCareRecord.allergyHistoryFlag!'NA'}" xsi:type="BL"/>
                  <participant typeCode="CSM">
                    <participantRole classCode="MANU">
                      <playingEntity classCode="MMAT">
                        <!--过敏史描述-->
                        <code code="DE02.10.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="过敏史"/>
                        <desc xsi:type="ST">${operationCareRecord.allergyHistory!'NA'}</desc>
                      </playingEntity>
                    </participantRole>
                  </participant>
                </observation>
              </entryRelationship>
            </act>
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
              <value code="${operationCareRecord.nursingGradeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.259" codeSystemName="护理等级代码表" displayName="<@dict_tag value="${operationCareRecord.nursingGradeCode!'NA'}" datasetCloumn="NURSING_GRADE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.212.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理类型代码"/>
              <value code="${operationCareRecord.nursingTypeCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.260" codeSystemName="护理类型代码表" displayName="<@dict_tag value="${operationCareRecord.nursingTypeCode!'NA'}" datasetCloumn="NURSING_TYPE_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
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
              <value xsi:type="ST">${operationCareRecord.nursingObserProjectName!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE02.10.028.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理观察结果"/>
                  <value xsi:type="ST">${operationCareRecord.nursingObservationResult!'NA'}</value>
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
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.342.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理操作名称"/>
              <value xsi:type="ST">${operationCareRecord.nursingOperationName!'NA'}</value>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.210.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理操作项目类目名称"/>
                  <value xsi:type="ST">${operationCareRecord.nursingOperationItem!'NA'}</value>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE06.00.209.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="护理操作结果"/>
                      <value xsi:type="ST">${operationCareRecord.nursingOperationResult!'NA'}</value>
                    </observation>
                  </entryRelationship>
                </observation>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
      <!--器械物品核对章节-->
      <component>
        <section>
          <code displayName="术前器械物品核对"/>
          <text/>
          <!--术前-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <code/>
              <statusCode code="completed"/>
              <!--巡台护士-->
              <participant typeCode="ATND">
                <!--签名日期时间：DE09.00.053.00-->
                <time value="${operationCareRecord.signDatetime!'NA'}"/>
                <participantRole classCode="ASSIGNED">
                  <id extension="${operationCareRecord.circulatingNurseSing!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="巡台护士"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <!--巡台护士签名：DE02.01.039.00-->
                    <name>${operationCareRecord.circulatingNurseSing!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
              <!--器械护士-->
              <participant typeCode="ATND">
                <!--签名日期时间：DE09.00.053.00-->
                <time value="${operationCareRecord.signDatetime!'NA'}"/>
                <participantRole classCode="ASSIGNED">
                  <id extension="${operationCareRecord.instrumentNurseSing!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="器械护士"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <!--器械护士签名：DE02.01.039.00-->
                    <name>${operationCareRecord.instrumentNurseSing!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE08.50.042.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术中所用物品名称"/>
                  <value xsi:type="ST">${operationCareRecord.operationItem!'NA'}</value>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE09.00.111.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术前清点标志"/>
                      <value value="${operationCareRecord.preoperationCheckFlag!'NA'}" xsi:type="BL"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--关前核对-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <code/>
              <statusCode/>
              <!--巡台护士-->
              <participant typeCode="ATND">
                <!--签名日期时间：DE09.00.053.00-->
                <time value="${operationCareRecord.signDatetime!'NA'}"/>
                <participantRole classCode="ASSIGNED">
                  <id extension="${operationCareRecord.circulatingNurseSing!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="巡台护士"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <!--巡台护士签名：DE02.01.039.00-->
                    <name>${operationCareRecord.circulatingNurseSing!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
              <!--器械护士-->
              <participant typeCode="ATND">
                <!--签名日期时间：DE09.00.053.00-->
                <time value="${operationCareRecord.signDatetime!'NA'}"/>
                <participantRole classCode="ASSIGNED">
                  <id extension="${operationCareRecord.instrumentNurseSing!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="器械护士"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <!--器械护士签名：DE02.01.039.00-->
                    <name>${operationCareRecord.instrumentNurseSing!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE08.50.042.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术中所用物品名称"/>
                  <value xsi:type="ST">${operationCareRecord.operationItem!'NA'}</value>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE06.00.204.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="关前核对标志"/>
                      <value value="${operationCareRecord.closebeforeCheckFlag!'NA'}" xsi:type="BL"/>
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
            </organizer>
          </entry>
          <!--关后核对-->
          <entry>
            <organizer classCode="CLUSTER" moodCode="EVN">
              <code/>
              <statusCode code="completed"/>
              <!--巡台护士-->
              <participant typeCode="ATND">
                <!--签名日期时间：DE09.00.053.00-->
                <time value="${operationCareRecord.signDatetime!'NA'}"/>
                <participantRole classCode="ASSIGNED">
                  <id extension="${operationCareRecord.circulatingNurseSing!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="巡台护士"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <!--巡台护士签名：DE02.01.039.00-->
                    <name>${operationCareRecord.circulatingNurseSing!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
              <!--器械护士-->
              <participant typeCode="ATND">
                <!--签名日期时间：DE09.00.053.00-->
                <time value="${operationCareRecord.signDatetime!'NA'}"/>
                <participantRole classCode="ASSIGNED">
                  <id extension="${operationCareRecord.instrumentNurseSing!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="器械护士"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <!--器械护士签名：DE02.01.039.00-->
                    <name>${operationCareRecord.instrumentNurseSing!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE08.50.042.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术中所用物品名称"/>
                  <value xsi:type="ST">${operationCareRecord.operationItem!'NA'}</value>
                  <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                      <code code="DE06.00.204.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="关后核对标志"/>
                      <value value="${operationCareRecord.closeafterCheckFlag!'NA'}" xsi:type="BL"/>
                    </observation>
                  </entryRelationship>
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
              <!--手术及操作编码:DE06.00.093.00-->
              <code code="${operationCareRecord.operationCode!'NA'}" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)" displayName="<@dict_tag value="${operationCareRecord.operationCode!'NA'}" datasetCloumn="OPERATION_CODE">${dict.desc}</@dict_tag>"/>
              <statusCode/>
              <effectiveTime>
                <!--手术开始日期时间DE06.00.218.00-->
                <low value="${operationCareRecord.startDateTime!'NA'}"/>
                <!--手术结束日期时间DE06.00.221.00-->
                <high value="${operationCareRecord.endDateTime!'NA'}"/>
              </effectiveTime>
              <!--手术目标部位名称：DE06.00.187.00-->
              <targetSiteCode code="${operationCareRecord.operativeSiteName!'NA'}" codeSystem="2.16.156.10011.2.3.1.266" codeSystemName="手术目标部位编码" displayName="<@dict_tag value="${operationCareRecord.operativeSiteName!'NA'}" datasetCloumn="OPERATIVE_SITE_NAME">${dict.desc}</@dict_tag>"/>
              <!--手术操作者：DE02.01.039.00-->
              <performer>
                <assignedEntity>
                  <id extension="${operationCareRecord.operatorName!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="手术操作者"/>
                  <assignedPerson>
                    <name>${operationCareRecord.operatorName!'NA'}</name>
                  </assignedPerson>
                </assignedEntity>
              </performer>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.30.060.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术中病理标志"/>
                  <value value="${operationCareRecord.intraoperatPathologicalMark!'NA'}" xsi:type="BL"/>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.317.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="准备事项"/>
                  <value xsi:type="ST">${operationCareRecord.prepareItem!'NA'}</value>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE06.00.256.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术间编号"/>
                  <value xsi:type="ST">${operationCareRecord.operationRoomNo!'NA'}</value>
                </observation>
              </entryRelationship>
              <entryRelationship typeCode="COMP">
                <organizer classCode="BATTERY" moodCode="EVN">
                  <statusCode/>
                  <!-- 出入手术室时间 -->
                  <effectiveTime>
                    <!-- DE06.00.236.00入手术室日期时间  -->
                    <low value="${operationCareRecord.enterRoomDatetime!'NA'}"/>
                    <!-- DE06.00.191.00 出手术室日期时间 -->
                    <high value="${operationCareRecord.outRoomDatetime!'NA'}"/>
                  </effectiveTime>
                </organizer>
              </entryRelationship>
            </procedure>
          </entry>
        </section>
      </component>
      <!--住院过程章节 术后交接-->
      <component>
        <section>
          <code code="8648-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Hospital Course"/>
          <title>住院过程章节</title>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.206.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病人交接核对项目"/>
              <value xsi:type="ST">${operationCareRecord.patientTransferCheckitem!'NA'}</value>
              <!--交接护士-->
              <author>
                <!--交接日期时间：DE09.00.107.00-->
                <time value="${operationCareRecord.handoverDatetime!'NA'}"/>
                <assignedAuthor>
                  <id extension="${operationCareRecord.handoverNurseSign!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="交接护士"/>
                  <assignedPerson>
                    <!--交接护士签名：DE02.01.039.00-->
                    <name>${operationCareRecord.handoverNurseSign!'NA'}</name>
                  </assignedPerson>
                </assignedAuthor>
              </author>
              <!--转运者-->
              <participant typeCode="ATND">
                <participantRole classCode="ASSIGNED">
                  <id extension="${operationCareRecord.transporterSign!'NA'}" root="2.16.156.10011.1.4"/>
                  <code displayName="转运者"/>
                  <playingEntity classCode="PSN" determinerCode="INSTANCE">
                    <!--转运者签名：DE02.01.039.00-->
                    <name>${operationCareRecord.transporterSign!'NA'}</name>
                  </playingEntity>
                </participantRole>
              </participant>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>