Instance: AllPolicyStatesForPerson
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/allPolicyStatesForPerson"
* name = "AllPolicyStatesForPerson"
* title = "All policy states for person"
* kind = #operation
* description = "Liefert alle jemals unterzeichneten Policies einer Person einer spezifischen Einwilligungsdomaene. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält ausschließlich Consent-Ressourcen zur Abbildung der Policies, d.h. je unterzeichneter Policy ist eine Consent-Ressource mit jeweils einer Policy (provision) enthalten.\r\nEs werden alle jemals von Patienten unterzeichneten Policies zurückgegeben (ConsentProvisionType: permit/deny). Policies mit gICS-internem Status UNKNOWN, NOT_ASKED, NOT_CHOSEN, WITHDRAWN, INVALIDATED, REFUSED oder EXPIRED werden mit ConsentProvisionType \"deny\" zurückgegeben.\r\n\r\nSollen nur die jeweils neueste Policies angezeigt werden, ist clientseit eine Filterung anhand Datum, Policyversion etc. erforderlich oder alternativ die Operation currentPolicyStatesForPerson zu nutzen."
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = false
* code = #allPolicyStatesForPerson
* comment = "Liefert alle jemals unterzeichneten Policies einer Person einer spezifischen Einwilligungsdomaene. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält ausschließlich Consent-Ressourcen zur Abbildung der Policies, d.h. je unterzeichneter Policy ist eine Consent-Ressource mit jeweils einer Policy (provision) enthalten.\r\nEs werden alle jemals von Patienten unterzeichneten Policies zurückgegeben (ConsentProvisionType: permit/deny). Policies mit gICS-internem Status UNKNOWN, NOT_ASKED, NOT_CHOSEN, WITHDRAWN, INVALIDATED, REFUSED oder EXPIRED werden mit ConsentProvisionType \"deny\" zurückgegeben.\r\n\r\nSollen nur die jeweils neueste Policies angezeigt werden, ist clientseit eine Filterung anhand Datum, Policyversion etc. erforderlich oder alternativ die Operation currentPolicyStatesForPerson zu nutzen."
* system = true
* type = false
* instance = false
* parameter[0].name = #personIdentifier
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Um den Bezug zwischen Person und Einwilligung herzustellen, ist die Angabe von mindestens einem eindeutigen Personenidentifikator erforderlich. Dies kann je nach Anforderungen die Fallnummer, ein Patienten-Identifikator, die Angabe eines Bevollmächtigten oder ein Studienpseudonym, o.ä. sein. Bei Angabe von mehreren Identifikatoren werden diese ODER-verknüpft."
* parameter[=].type = #Identifier
* parameter[+].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Einwilligungsdomaene"
* parameter[=].type = #string


Instance: AllPolicyStatesForPerson-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "personIdentifier"
* parameter[=].valueIdentifier.system = "https://ths-greifswald.de/fhir/gics/identifiers/Pseudonym"
* parameter[=].valueIdentifier.value = "dic_GCC83"
* parameter[+].name = "domain"
* parameter[=].valueString = "MII"

Instance: AllPolicyStatesForPerson-response-example-1
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = c52ebb8f-3ca0-4978-9116-22c92aaccb18
* entry[=].fullUrl = "urn:uuid:c52ebb8f-3ca0-4978-9116-22c92aaccb18"
* entry[+].resource = 68148751-1a10-4e5a-84cd-2290950c3793
* entry[=].fullUrl = "urn:uuid:68148751-1a10-4e5a-84cd-2290950c3793"
* entry[+].resource = 32fa19b1-f6fb-4fd5-b199-4d4dceb69e53
* entry[=].fullUrl = "urn:uuid:32fa19b1-f6fb-4fd5-b199-4d4dceb69e53"
* entry[+].resource = 343a8482-a00f-4ae4-974b-884932bdf44a
* entry[=].fullUrl = "urn:uuid:343a8482-a00f-4ae4-974b-884932bdf44a"
* entry[+].resource = f250a5a5-20e3-4b6b-97a5-f134b0b34d50
* entry[=].fullUrl = "urn:uuid:f250a5a5-20e3-4b6b-97a5-f134b0b34d50"
* entry[+].resource = 7159f7db-a76f-41a5-b831-10c972a3a282
* entry[=].fullUrl = "urn:uuid:7159f7db-a76f-41a5-b831-10c972a3a282"
* entry[+].resource = b790946a-8a5c-48ed-926b-02ab9342e0ab
* entry[=].fullUrl = "urn:uuid:b790946a-8a5c-48ed-926b-02ab9342e0ab"
* entry[+].resource = 29e8f702-9949-48d0-82b8-64afae92354e
* entry[=].fullUrl = "urn:uuid:29e8f702-9949-48d0-82b8-64afae92354e"
* entry[+].resource = 7726b2ea-ea25-4848-a666-2135bf384cff
* entry[=].fullUrl = "urn:uuid:7726b2ea-ea25-4848-a666-2135bf384cff"
* entry[+].resource = 3fc1cb1f-e37c-4c5a-9b46-c6edc1459aa6
* entry[=].fullUrl = "urn:uuid:3fc1cb1f-e37c-4c5a-9b46-c6edc1459aa6"
* entry[+].resource = 9d317d12-e34f-4b4f-a9c1-693ecf7e1615
* entry[=].fullUrl = "urn:uuid:9d317d12-e34f-4b4f-a9c1-693ecf7e1615"
* entry[+].resource = 8fead334-f5a9-4025-b604-5e38f9ad44c3
* entry[=].fullUrl = "urn:uuid:8fead334-f5a9-4025-b604-5e38f9ad44c3"
* entry[+].resource = a778fd9a-e68a-4b98-ab9d-2d788db705d5
* entry[=].fullUrl = "urn:uuid:a778fd9a-e68a-4b98-ab9d-2d788db705d5"

Instance: c52ebb8f-3ca0-4978-9116-22c92aaccb18
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#IDAT_bereitstellen_EU_DSGVO_NIVEAU "Herausgabe identifizierender Daten (IDAT) an verantwortliche Stelle zur weiteren Verarbeitung"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.5

Instance: 68148751-1a10-4e5a-84cd-2290950c3793
InstanceOf: Consent
Usage: #inline
* id = "68148751-1a10-4e5a-84cd-2290950c3793"
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#IDAT_erheben "Erfassung neuer identifizierender Daten (IDAT)"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.2

Instance: 32fa19b1-f6fb-4fd5-b199-4d4dceb69e53
InstanceOf: Consent
Usage: #inline
* id = "32fa19b1-f6fb-4fd5-b199-4d4dceb69e53"
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#IDAT_speichern_verarbeiten "Speicherung und Verarbeitung identifizierender Daten (IDAT) in der verantwortlichen Stelle"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.3

Instance: 343a8482-a00f-4ae4-974b-884932bdf44a
InstanceOf: Consent
Usage: #inline
* id = "343a8482-a00f-4ae4-974b-884932bdf44a"
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#IDAT_zusammenfuehren_Dritte "Zusammenführung identifizierender Daten (IDAT) mit Dritten Forschungspartnern"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.4

Instance: f250a5a5-20e3-4b6b-97a5-f134b0b34d50
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2026-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#MDAT_erheben "Erfassung medizinischer Daten"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.6

Instance: 7159f7db-a76f-41a5-b831-10c972a3a282
InstanceOf: Consent
Usage: #inline
* id = "7159f7db-a76f-41a5-b831-10c972a3a282"
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#MDAT_GECCO83_bereitstellen_NUM_CODEX "Medizinische Daten des GECCO83 Datensatz für wiss. Nutzung in NUM-CODEX Plattform bereitstellen"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.33

Instance: b790946a-8a5c-48ed-926b-02ab9342e0ab
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#MDAT_GECCO83_bereitstellen_NUM_CODEX_non_EU_DSGVO_NIVEAU "Medizinische Daten des GECCO83 Datensatz an Länder ohne EU Datenschutzniveau weitergeben"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.36

Instance: 29e8f702-9949-48d0-82b8-64afae92354e
InstanceOf: Consent
Usage: #inline
* id = "29e8f702-9949-48d0-82b8-64afae92354e"
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#MDAT_GECCO83_speichern_verarbeiten_NUM_CODEX "Medizinische Daten des GECCO83 Datensatz in NUM-CODEX Plattform speichern und verarbeiten"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.34

Instance: 7726b2ea-ea25-4848-a666-2135bf384cff
InstanceOf: Consent
Usage: #inline
* id = "7726b2ea-ea25-4848-a666-2135bf384cff"
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code = $MII#MDAT_GECCO83_wissenschaftlich_nutzen_COVID_19_Forschung_EU_DSGVO_konform "Nutzung des Covid-19-Datensatzes auf der im Rahmen des Projekts NUM-CODEX aufgebauten zentralen Datenplattform für die COVID-19-Forschung"

Instance: 3fc1cb1f-e37c-4c5a-9b46-c6edc1459aa6
InstanceOf: Consent
Usage: #inline
* id = "3fc1cb1f-e37c-4c5a-9b46-c6edc1459aa6"
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code = $MII#MDAT_GECCO83_wissenschaftlich_nutzen_Pandemie_Forschung_EU_DSGVO_konform "Nutzung des Covid-19-Datensatzes auf der im Rahmen des Projekts NUM-CODEX aufgebauten zentralen Datenplattform für die Pandemie-Forschung"

Instance: 9d317d12-e34f-4b4f-a9c1-693ecf7e1615
InstanceOf: Consent
Usage: #inline
* id = "9d317d12-e34f-4b4f-a9c1-693ecf7e1615"
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#MDAT_speichern_verarbeiten "Speicherung_Verarbeitung von medizinischen Daten innerhalb der verantwortlichen Stelle (MDAT)"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.7

Instance: 8fead334-f5a9-4025-b604-5e38f9ad44c3
InstanceOf: Consent
Usage: #inline
* id = "8fead334-f5a9-4025-b604-5e38f9ad44c3"
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU "Bereitstellung medizinischer Daten (MDAT) für wissenschaftliche Nutzung "
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.8

Instance: a778fd9a-e68a-4b98-ab9d-2d788db705d5
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2021-06-03T09:47:47.361+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension.url = "status"
* extension.extension.valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(Patient/34d195ef-179f-48dd-b830-d52ea9347157) "Pseudonym dic_GCC83"
* dateTime = "2021-06-03T00:00:00+02:00"
* sourceReference = Reference(QuestionnaireResponse/5cfc1218-618f-4408-9e3d-a1af7a25aa56)
* provision.type = #permit
* provision.period.start = "2021-06-03T09:47:47+02:00"
* provision.period.end = "2051-06-03T09:47:47+02:00"
* provision.code[0] = $Policy#MDAT_zusammenfuehren_Dritte "Zusammenführung medizinischer Daten (MDAT) mit Dritten Forschungspartnern"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.9
