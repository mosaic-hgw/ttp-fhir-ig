Profile: Consent
Parent: $prEinwConsent
Id: Consent
Title: "Einwilligungsinformationen"
Description: "Einwilligungsinformationen"
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Consent"
* ^purpose = "Strukturierte, maschinenverarbeitbare Abbildung der Einwilligungserklärung"
* extension ^min = 0
* extension contains
    ExternalProperty named externalProperty 0..* MS and
    ExpirationProperty named expirationProperty 0..* MS
* extension[externalProperty] ^min = 0
* extension[externalProperty].extension 2..
* meta.extension contains
    Created named created 0..1 MS


Instance: Consent-example-1
InstanceOf: Consent
Usage: #example
* meta.lastUpdated = "2021-06-17T14:02:21.285+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* meta.extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* extension[domainReference].extension[domain].valueReference = Reference(ResearchStudy/593d66f3-3654-4e8a-9524-3bcd78a363bb)
* extension[domainReference].extension[status].valueCoding = $publication-status#active
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/b5ad0847-597d-4825-bb6c-537d949159f8) "Pseudonym dic_1H51T"
* dateTime = "2021-06-17T14:02:21+02:00"
* sourceReference = Reference(QuestionnaireResponse/cde387ba-27df-43c2-9f8d-4a2157a16363)
* policyRule = $Policy#MDAT_erheben "Erfassung medizinischer Daten"
* provision.type = #permit
* provision.period.start = "2021-06-17T14:02:21+02:00"
* provision.period.end = "2026-06-17T14:02:21+02:00"
* provision.code[0] = $Policy#MDAT_erheben "Erfassung medizinischer Daten"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.6


Instance: Consent-example-2
InstanceOf: Consent
Usage: #example
* meta.lastUpdated = "2021-10-29T11:00:08.695+02:00"
* meta.extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* extension[domainReference].extension[domain].valueReference = Reference(ResearchStudy/b0b83c00-e230-4c52-8d3a-cbb882e0a72f)
* extension[domainReference].extension[status].valueCoding = $publication-status#active
* extension[externalProperty][0].extension[key].valueString = "mykey1"
* extension[externalProperty][=].extension[value].valueString = "myvalue1"
* extension[externalProperty][+].extension[key].valueString = "mykey2"
* extension[externalProperty][=].extension[value].valueString = "myvalue2"
* extension[externalProperty][+].extension[key].valueString = "EXPIRATION_DATE"
* extension[externalProperty][=].extension[value].valueString = "Tue Nov 30 00:00:00 CET 2021"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#59284-0
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/65d4cbf1-f20a-4fd0-9585-53be76416b02) "Pseudonym aachen1"
* dateTime = "2021-10-29T11:00:08+02:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/0f1ccc50-9b24-4f12-a998-49f80d5285c1)
* policyRule.text = "Patienteneinwilligung MII|1.6.f"
* provision.type = #deny
* provision.period.start = "2021-10-29T11:00:08+02:00"
* provision.period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#IDAT_bereitstellen_EU_DSGVO_NIVEAU "Herausgabe identifizierender Daten (IDAT) an verantwortliche Stelle zur weiteren Verarbeitung"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#IDAT_erheben "Erfassung neuer identifizierender Daten (IDAT)"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#IDAT_speichern_verarbeiten "Speicherung und Verarbeitung identifizierender Daten (IDAT) in der verantwortlichen Stelle"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#IDAT_zusammenfuehren_Dritte "Zusammenführung identifizierender Daten (IDAT) mit Dritten Forschungspartnern"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#MDAT_erheben "Erfassung medizinischer Daten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#MDAT_speichern_verarbeiten "Speicherung_Verarbeitung von medizinischen Daten innerhalb der verantwortlichen Stelle (MDAT)"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU "Bereitstellung medizinischer Daten (MDAT) für wissenschaftliche Nutzung "
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#MDAT_zusammenfuehren_Dritte "Zusammenführung medizinischer Daten (MDAT) mit Dritten Forschungspartnern"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#Rekontaktierung_Verknuepfung_Datenbanken "Rekontaktierung zur Verknuepfung von PatDat mit Info anderer Dbs"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#Rekontaktierung_weitere_Erhebung "Rekontaktierung bezüglich Erhebung zusätzlicher Daten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#Rekontaktierung_weitere_Studien "Rekontaktierung bezüglich Information zu neuen Forschungsvorhaben oder Studien"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#KDAT_retro_speichern_verarbeiten "Krankenkassendaten (KKDAT) für 5 Jahre retrospektiv speichern_verarbeiten in der verantwortlichen Stelle"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#KDAT_retro_uebertragen "Krankenkassendaten (KKDAT) für 5 Jahre retrospektiv übertragen"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#KDAT_retro_wissenschaftlich_nutzen "Krankenkassendaten (KKDAT) für 5 Jahre retrospektiv wissenschaftlich nutzen"


Instance: Consent-example-3
InstanceOf: Consent
Usage: #example
* meta.lastUpdated = "2021-05-19T17:50:23.000+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* meta.extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* extension[domainReference].extension[domain].valueReference = Reference(ResearchStudy/593d66f3-3654-4e8a-9524-3bcd78a363bb)
* extension[domainReference].extension[status].valueCoding = $publication-status#active
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(d4c9a2fe-0eea-4a84-899d-3dbd9dc5c7f1) "Pseudonym dic_1H51T"
* dateTime = "2021-05-19T00:00:00+02:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/dfd5edc6-3a8a-4796-a9bb-f9572cf15c96)
* policyRule.text = "Patienteneinwilligung MII|1.6.f"
* provision.type = #deny
* provision.period.start = "2021-05-19T17:50:22+02:00"
* provision.period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#IDAT_bereitstellen_EU_DSGVO_NIVEAU "Herausgabe identifizierender Daten (IDAT)[...]"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.5
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#IDAT_erheben "Erfassung neuer identifizierender Daten (IDAT)"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.2
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#IDAT_speichern_verarbeiten "Speicherung und Verarbeitung identifizierender Daten (IDAT)[...]"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.3
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#IDAT_zusammenfuehren_Dritte "Zusammenführung identifizierender Daten (IDAT)[...]"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.4
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#MDAT_erheben "Erfassung medizinischer Daten"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.6
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#MDAT_speichern_verarbeiten "Speicherung_Verarbeitung von medizinischen Daten[...]"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.7
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU "Bereitstellung medizinischer Daten (MDAT)[...]"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.8
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#MDAT_zusammenfuehren_Dritte "Zusammenführung medizinischer Daten (MDAT)[...]"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.9
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#Rekontaktierung_Verknuepfung_Datenbanken "Rekontaktierung zur Verknüpfung[...]"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.27
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#Rekontaktierung_weitere_Erhebung "Rekontaktierung bezüglich Erhebung zusätzlicher Daten"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.28
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#Rekontaktierung_weitere_Studien "Rekontaktierung bezüglich Information[...]"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.29
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#MDAT_GECCO83_bereitstellen_NUM_CODEX "Medizinische Daten des GECCO83 Datensatz[...]"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.33
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $Policy#MDAT_GECCO83_speichern_verarbeiten_NUM_CODEX "Medizinische Daten des GECCO83 Datensatz[...]"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.34
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code = $MII#MDAT_GECCO83_wissenschaftlich_nutzen_COVID_19_Forschung_EU_DSGVO_konform "Nutzung des Covid-19-Datensatzes[...]"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code = $MII#MDAT_GECCO83_wissenschaftlich_nutzen_Pandemie_Forschung_EU_DSGVO_konform "Nutzung des Covid-19-Datensatzes[...]"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-05-19T17:50:22+02:00"
* provision.provision[=].period.end = "2051-05-19T17:50:23+02:00"
* provision.provision[=].code[0] = $MII#Rekontaktierung_Zusatzbefund "Rekontaktierung bezüglich Zusatzbefund"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.31


Instance: Consent-Bundle-example-1
InstanceOf: Bundle
Usage: #example
* meta.lastUpdated = "2023-04-28T11:01:33.912+02:00"
* type = #searchset
* total = 2
* link.relation = "self"
* link.url = "http://server:8080/ttp-fhir/fhir/gics/Consent?provisionCode=urn%3Aoid%3A2.16.840.1.113883.3.1937.777.24.5.3%7C2.16.840.1.113883.3.1937.777.24.5.3.8"
* entry[0].fullUrl = "http://server:8080/ttp-fhir/fhir/gics/Consent/23db88b1-6e47-4907-8d9f-3fb4b2e97630"
* entry[=].resource = 23db88b1-6e47-4907-8d9f-3fb4b2e97630
* entry[+].fullUrl = "http://server:8080/ttp-fhir/fhir/gics/Consent/fab23c8e-6a94-49da-acfd-4df51098ca22"
* entry[=].resource = fab23c8e-6a94-49da-acfd-4df51098ca22

Instance: 23db88b1-6e47-4907-8d9f-3fb4b2e97630
InstanceOf: Consent
Usage: #inline
* id = "23db88b1-6e47-4907-8d9f-3fb4b2e97630"
* meta.lastUpdated = "2023-04-27T16:13:49.367+02:00"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/91e74202-4a7b-43ba-a9b9-4017634c9540)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[0] = $loinc#57016-8
* category[+] = $mii-cs-consent-consent_category#2.16.840.1.113883.3.1937.777.24.2.184
* patient = Reference(Patient/d2850872-1e98-47a5-b345-62f133833094) "Pseudonym dic_1H51T"
* dateTime = "2023-04-27T00:00:00+02:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/4ec9a105-1818-4c92-9986-2821d5bab565)
* policy.uri = "urn:oid:2.16.840.1.113883.3.1937.777.24.2.184"
* policyRule = $MII#MDAT_wissenschaftlich_nutzen_EU_DSGVO_konform "Bereitstellung umcodierter medizinischer Daten (MDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"
* provision.type = #permit
* provision.period.start = "2023-04-27T00:00:00+02:00"
* provision.period.end = "2053-04-27T00:00:00+02:00"
* provision.code[0] = $MII#MDAT_wissenschaftlich_nutzen_EU_DSGVO_konform "Bereitstellung umcodierter medizinischer Daten (MDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU"

Instance: fab23c8e-6a94-49da-acfd-4df51098ca22
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2023-04-27T16:23:37.048+02:00"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/91e74202-4a7b-43ba-a9b9-4017634c9540)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[0] = $loinc#57016-8
* category[+] = $mii-cs-consent-consent_category#2.16.840.1.113883.3.1937.777.24.2.184
* patient = Reference(Patient/854f8281-50be-4848-b99d-7ae0aa0da9a0) "Pseudonym dic_R3M0V3"
* dateTime = "2023-04-27T11:10:54+02:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/69886267-43c8-4e46-9301-8c44c9f2f6d9)
* policy.uri = "urn:oid:2.16.840.1.113883.3.1937.777.24.2.184"
* policyRule = $MII#MDAT_wissenschaftlich_nutzen_EU_DSGVO_konform "Bereitstellung umcodierter medizinischer Daten (MDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"
* provision.type = #permit
* provision.period.start = "2023-04-27T11:10:54+02:00"
* provision.period.end = "2053-04-27T11:10:54+02:00"
* provision.code[0] = $MII#MDAT_wissenschaftlich_nutzen_EU_DSGVO_konform "Bereitstellung umcodierter medizinischer Daten (MDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU"
