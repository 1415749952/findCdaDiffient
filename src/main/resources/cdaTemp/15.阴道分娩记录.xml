<?xml version="1.0" encoding="UTF-8"?>

<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:hl7-org:v3 ..\sdschemas\CDA.xsd">
  <realmCode code="CN"/>
  <typeId extension="POCD_MT000040" root="2.16.840.1.113883.1.3"/>
  <templateId root="2.16.156.10011.2.1.1.35"/>
  <!-- 文档流水号 -->
  <id extension="${docInfo.documentUniqueId}" root="2.16.156.10011.1.1"/>
  <code code="C0015" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
  <title>阴道分娩记录</title>
  <!-- 文档机器生成时间 -->
  <effectiveTime value="${docInfo.effectiveTime}"/>
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
  <languageCode code="zh-CN"/>
  <setId/>
  <versionNumber/>
  <recordTarget contextControlCode="OP" typeCode="RCT">
    <patientRole classCode="PAT">
      <!--住院号 -->
      <id extension="${vbncRecord.inpNo!'NA'}" root="2.16.156.10011.1.12"/>
      <patient classCode="PSN" determinerCode="INSTANCE">
        <!--患者身份证号标识-->
        <id extension="<@privacy_tag value="${emrBasicpatient.identityNo!'NA'}" privacyId="1">${privacy}</@privacy_tag>" root="2.16.156.10011.1.3"/>
        <name><@privacy_tag value="${vbncRecord.patientName!'NA'}" privacyId="2">${privacy}</@privacy_tag></name>
        <age unit="岁" value="${vbncRecord.ageYear!'NA'}"/>
      </patient>
    </patientRole>
  </recordTarget>
  <!-- 文档创作者 -->
  <author contextControlCode="OP" typeCode="AUT">
    <time value="${vbncRecord.postpartumObservationTime!'NA'}"/>
    <assignedAuthor classCode="ASSIGNED">
      <id extension="${vbncRecord.recordSign!'NA'}" root="2.16.156.10011.1.7"/>
      <assignedPerson>
        <name>${vbncRecord.recordSign!'NA'}</name>
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
  <!-- 接生者 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${vbncRecord.midwivesSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="接生者"/>
      <assignedPerson>
        <name>${vbncRecord.midwivesSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 助产者 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${vbncRecord.midwivesSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="助产者"/>
      <assignedPerson>
        <name>${vbncRecord.midwivesSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 助手 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${vbncRecord.midwivesSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="助手"/>
      <assignedPerson>
        <name>${vbncRecord.midwivesSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 护婴者 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${vbncRecord.pediatricianSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="护婴者"/>
      <assignedPerson>
        <name>${vbncRecord.pediatricianSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 指导者 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${vbncRecord.operationDoctorName!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="指导者"/>
      <assignedPerson>
        <name>${vbncRecord.operationDoctorName!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <!-- 记录人 -->
  <authenticator>
    <time/>
    <signatureCode/>
    <assignedEntity>
      <id extension="${vbncRecord.recordSign!'NA'}" root="2.16.156.10011.1.4"/>
      <code displayName="记录人"/>
      <assignedPerson>
        <name>${vbncRecord.recordSign!'NA'}</name>
      </assignedPerson>
    </assignedEntity>
  </authenticator>
  <participant typeCode="NOT">
    <!--联系人@classCode：CON，固定值，表示角色是联系人 -->
    <associatedEntity classCode="ECON">
      <!--联系人电话-->
      <telecom value="${emrBasicpatient.contactPhone!'NA'}"/>
      <!--联系人姓名-->
      <associatedPerson>
        <name>${emrBasicpatient.contactName!'NA'}</name>
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
                <id extension="${vbncRecord.bedNo!'NA'}" root="2.16.156.10011.1.22"/>
                <name>${vbncRecord.bedNo!'NA'}</name>
                <asOrganizationPartOf classCode="PART">
                  <!--HDSD00.09.004 DE01.00.019.00 病房号 -->
                  <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                    <id extension="${vbncRecord.areaNo!'NA'}" root="2.16.156.10011.1.21"/>
                    <name>${vbncRecord.areaNo!'NA'}</name>
                    <asOrganizationPartOf classCode="PART">
                      <!--HDSD00.09.036 DE08.10.026.00 科室名称 -->
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id extension="${vbncRecord.deptName!'NA'}" root="2.16.156.10011.1.26"/>
                        <name>${vbncRecord.deptName!'NA'}</name>
                        <asOrganizationPartOf classCode="PART">
                          <!--HDSD00.09.005 DE08.10.054.00 病区名称-->
                          <wholeOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id extension="${vbncRecord.areaName!'NA'}" root="2.16.156.10011.1.27"/>
                            <name>${vbncRecord.areaName!'NA'}</name>
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
      <!-- 既往史章节 -->
      <component>
        <section>
          <code code="11348-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PAST ILLNESS"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.01.108.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="孕次"/>
              <value value="${vbncRecord.deliveryTimegravidityTime!'NA'}" xsi:type="INT"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.002.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产次"/>
              <value value="${vbncRecord.deliveryTime!'NA'}" xsi:type="INT"/>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 阴道分娩章节 -->
      <component>
        <section>
          <code code="57074-7" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="labor and delivery process"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.10.051.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="末次月经日期"/>
              <value value="${vbncRecord.lastMenstrualPeriod!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.098.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="预产期"/>
              <value value="${vbncRecord.edcDesc!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.224.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="临产日期时间"/>
              <value value="${vbncRecord.birthDatetime!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.154.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎膜破裂日期时间"/>
              <value value="${vbncRecord.ruptureMembranesDatetime!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.058.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="前羊水性状"/>
              <value xsi:type="ST">${vbncRecord.forewatersVolume!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.057.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="前羊水量（mL）"/>
              <value unit="ml" value="${vbncRecord.pamnioticFluidVolume!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.250.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫缩开始日期时间"/>
              <value value="${vbncRecord.birthDatetime!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.021.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="第1产程时长（min）"/>
              <value unit="min" value="${vbncRecord.firstDurationLabor!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.250.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫口开全日期时间"/>
              <value value="${vbncRecord.pmouthOpfullTime!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="第2产程时长（min）"/>
              <value unit="min" value="${vbncRecord.birthprocessDurationDelivery!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.01.014.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎儿娩出日期时间"/>
              <value value="${vbncRecord.fetalDisengageTime!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.020.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="第3产程时长（min）"/>
              <value unit="min" value="${vbncRecord.thirdDurationLabor!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.273.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎盘娩出日期时间"/>
              <value value="${vbncRecord.placentalExpulsionTime!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.236.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="总产程时长（min）"/>
              <value unit="min" value="${vbncRecord.fullBirthprocessTime!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.044.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎方位代码"/>
              <value code="${vbncRecord.fetalPositionCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.106" codeSystemName="胎方位代码表" xsi:type="CD" displayName="<@dict_tag value="${vbncRecord.fetalPositionCode!'NA'}" datasetCloumn="FETAL_POSITION_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.311.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎儿娩出助产标志"/>
              <value value="${vbncRecord.vaginalDeliveryCode!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.312.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="助产方式"/>
              <value xsi:type="ST">${vbncRecord.vaginaDeliveryMethod!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.157.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎盘娩出情况"/>
              <value xsi:type="ST">${vbncRecord.placentalExpulsionSituation!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.156.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎膜完整情况标志"/>
              <value value="${vbncRecord.intactFetalmembranesCode!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.063.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="羊水性状"/>
              <value xsi:type="ST">${vbncRecord.amnioticFluidCharacter!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.061.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="羊水量（mL）"/>
              <value unit="ml" value="${vbncRecord.amnioticFluidVolume!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.055.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="脐带长度（cm）"/>
              <value unit="cm" value="${vbncRecord.umbilicalCordLength!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.30.059.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="绕颈身（周）"/>
              <value unit="周" value="${vbncRecord.umbilicalcordWindingNumber!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.145.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="脐带异常情况标志"/>
              <#if vbncRecord.umbilicalCordAbnormalities??>
              <value value="true" xsi:type="BL"/>
              <#else>
              <value value="false" xsi:type="BL"/>
              </#if>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE08.50.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产时用药"/>
              <value xsi:type="ST">${vbncRecord.deliveryDrug!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.295.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="预防措施"/>
              <value xsi:type="ST">${vbncRecord.preventive!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.165.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产妇会阴切开标志"/>
              <value value="${vbncRecord.maternalperinealIncisionCode!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.252.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会阴切开位置"/>
              <value xsi:type="ST">${vbncRecord.incisionLocation!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.011.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产妇会阴缝合针数"/>
              <value value="${vbncRecord.sutureNeedleNumber!'NA'}" xsi:type="INT"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.01.003.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产妇会阴裂伤程度代码"/>
              <value code="${vbncRecord.perinealLacerationCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.109" codeSystemName="会阴裂伤情况代码表" xsi:type="CD" displayName="<@dict_tag value="${vbncRecord.perinealLacerationCode!'NA'}" datasetCloumn="PERINEAL_LACERATION_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.253.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会阴血肿标志"/>
              <value value="${vbncRecord.perinealHematomaCode!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.254.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会阴血肿大小"/>
              <value xsi:type="ST">${vbncRecord.vaginalHematomaSize!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.213.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会阴血肿处理"/>
              <value xsi:type="ST">${vbncRecord.treatmentVaginalHematoma!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方法代码"/>
              <value code="${vbncRecord.operateMzfsId!'NA'}" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表" xsi:type="CD" displayName="<@dict_tag value="${vbncRecord.operateMzfsId!'NA'}" datasetCloumn="OPERATE_MZFS_ID">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE08.50.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉药物名称"/>
              <value xsi:type="ST">${vbncRecord.anesthDrugName!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.163.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="阴道裂伤标志"/>
              <value value="${vbncRecord.lacerationVaginaCode!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.164.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="阴道血肿标志"/>
              <value value="${vbncRecord.vaginalHematomaCode!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.249.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫颈裂伤标志"/>
              <value value="${vbncRecord.cervicalLacerationCode!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.200.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫颈缝合情况"/>
              <value xsi:type="ST">${vbncRecord.cervicalSuture!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE08.50.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后用药"/>
              <value xsi:type="ST">${vbncRecord.afterDeliveryDrug!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.182.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="分娩过程摘要"/>
              <value xsi:type="ST">${vbncRecord.deliverySpecialCondition!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.245.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫缩情况"/>
              <value xsi:type="ST">${vbncRecord.contractions!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.233.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="子宫情况"/>
              <value xsi:type="ST">${vbncRecord.uterineConditions!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="恶露状况"/>
              <value xsi:type="ST">${vbncRecord.eluStatus!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.137.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会阴情况"/>
              <value xsi:type="ST"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.284.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="修补手术过程"/>
              <value xsi:type="ST">${vbncRecord.repairProcedure!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.50.138.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="存脐带血情况标志"/>
              <value value="${vbncRecord.umbilicalBloodCord!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 产后处置章节 -->
      <component>
        <section>
          <code code="57076-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="postpartum hospitalization treatment"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.007.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后诊断"/>
              <value xsi:type="ST">${vbncRecord.aftdeliveryIcdCode!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.218.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后观察日期时间"/>
              <value value="${vbncRecord.postpartumObservationTime!'NA'}" xsi:type="TS"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.246.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后检查时间（min）"/>
              <value unit="min" value="${vbncRecord.postoperativeCheckTime!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <organizer classCode="BATTERY" moodCode="EVN">
              <statusCode/>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.10.174.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="收缩压"/>
                  <value unit="mmHg" value="${vbncRecord.bloodpressureh!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <code code="DE04.10.176.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="舒张压"/>
                  <value unit="mmHg" value="${vbncRecord.bloodpressurel!'NA'}" xsi:type="PQ"/>
                </observation>
              </component>
            </organizer>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.118.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后脉搏（次/min ）"/>
              <value unit="次/min" value="${vbncRecord.pulse!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.206.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后心率（次/min ）"/>
              <value unit="/次min" value="${vbncRecord.postpartumHeartRate!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.012.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后出血量（mL）"/>
              <value unit="ml" value="${vbncRecord.bloodLossed!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.245.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后宫缩"/>
              <value xsi:type="ST">${vbncRecord.postpartumUterineContraction!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.067.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后宫底高度（cm）"/>
              <value unit="cm" value="${vbncRecord.postpartumUterineHeight!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.257.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后膀胱充盈标志"/>
              <value value="${vbncRecord.postpartumBladderFilling!'NA'}" xsi:type="BL"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.240.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="肛查"/>
              <value xsi:type="ST">${vbncRecord.analInvestigation!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 新生儿章节 -->
      <component>
        <section>
          <code code="57075-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="newborn delivery information"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE02.01.040.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="新生儿性别代码"/>
              <value code="${vbncRecord.newbornSex!'NA'}" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" xsi:type="CD" displayName="<@dict_tag value="${vbncRecord.newbornSex!'NA'}" datasetCloumn="NEWBORN_SEX">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="新生儿出生体重（g）"/>
              <value unit="g" value="${vbncRecord.newbornBirthWeight!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE04.10.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="新生儿出生身长（cm）"/>
              <value unit="cm" value="${vbncRecord.newbornHeight!'NA'}" xsi:type="PQ"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.168.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产瘤大小"/>
              <value xsi:type="ST">${vbncRecord.tumorSize!'NA'}</value>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.167.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产瘤部位"/>
              <value xsi:type="ST">${vbncRecord.tumorLocation!'NA'}</value>
            </observation>
          </entry>
        </section>
      </component>
      <!-- 分娩评估章节 -->
      <component>
        <section>
          <code code="51848-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Assessment note"/>
          <text/>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.215.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="Apgar评分间隔时间代码"/>
              <value code="${vbncRecord.apgarCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.48" codeSystemName="Apgar评分间隔时间代码表" xsi:type="CD" displayName="<@dict_tag value="${vbncRecord.apgarCode!'NA'}" datasetCloumn="APGAR_CODE">${dict.desc}</@dict_tag>"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="Apgar评分值"/>
              <value value="${vbncRecord.apgarScore!'NA'}" xsi:type="INT"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE06.00.026.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="分娩结局代码"/>
              <value code="${vbncRecord.deliveryOutcomeCode!'NA'}" codeSystem="2.16.156.10011.2.3.2.49" codeSystemName="分娩结局代码表" displayName="<@dict_tag value="${vbncRecord.deliveryOutcomeCode!'NA'}" datasetCloumn="DELIVERY_OUTCOME_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
          <entry>
            <observation classCode="OBS" moodCode="EVN">
              <code code="DE05.10.160.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="新生儿异常情况代码"/>
              <value code="${vbncRecord.newbornAbnormalCode!'NA'}" codeSystem="2.16.156.10011.2.3.1.254" codeSystemName="新生儿异常情况代码表" displayName="<@dict_tag value="${vbncRecord.newbornAbnormalCode!'NA'}" datasetCloumn="NEWBORN_ABNORMAL_CODE">${dict.desc}</@dict_tag>" xsi:type="CD"/>
            </observation>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>