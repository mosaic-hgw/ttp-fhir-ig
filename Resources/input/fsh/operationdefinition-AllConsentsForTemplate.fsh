Instance: AllConsentsForTemplate
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/allConsentsForTemplate"
* name = "AllConsentsForTemplate"
* title = "All consents for template"
* kind = #operation
* description = "Liefert alle Consente eines spezifischen TemplateFrame unter Angabe des TemplateFrame-Identifiers (Vorlagenbezug) per POST-Request. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält je Consent einen Bundle-Entry, der alle für den spezifischen Consent relevanten Ressourcen (z.B. TemplateFrame, QuestionnaireComposed, QuestionnaireResponse, Provenance) enthält. Details zu den verwendeten Profilen unter https://simplifier.net/guide/einwilligungsmanagement/igeinwilligungsmanagement"
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = false
* code = #allConsentsForTemplate
* comment = "Liefert alle Consente eines spezifischen TemplateFrame unter Angabe des TemplateFrame-Identifiers (Vorlagenbezug) per POST-Request. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält je Consent einen Bundle-Entry, der alle für den spezifischen Consent relevanten Ressourcen (z.B. TemplateFrame, QuestionnaireComposed, QuestionnaireResponse, Provenance) enthält. Details zu den verwendeten Profilen unter https://simplifier.net/guide/einwilligungsmanagement/igeinwilligungsmanagement"
* system = true
* type = false
* instance = false
* parameter[0].name = #template
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der eindeutigen TemplateId in Form des  TemplateFrame.Identifier.Value für das vorbelegte Template.Identifier.System \"https://ths-greifswald.de/fhir/gics/\""
* parameter[=].type = #string
* parameter[+].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Einwilligungsdomaene"
* parameter[=].type = #string
* parameter[+].name = #_profile
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe um Ausgabeprofil festzulegen.\r\nDefault ist die gics-Variante; alternativ das Profil aus dem IG Einwilligungsmanagement."
* parameter[=].type = #canonical
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle mit den beschriebenen Inhalten"
* parameter[=].type = #Bundle


Instance: AllConsentsForTemplate-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "template"
* parameter[=].valueString = "MII;Patienteneinwilligung MII;1.6.f"
* parameter[+].name = "domain"
* parameter[=].valueString = "MII"

Instance: AllConsentsForTemplate-response-example-1
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = 6ed0379b-478e-4db4-b226-3edb6897aec1
* entry[=].fullUrl = "urn:uuid:6ed0379b-478e-4db4-b226-3edb6897aec1"

Instance: 6ed0379b-478e-4db4-b226-3edb6897aec1
InstanceOf: Bundle
Usage: #inline
* type = #collection
* entry[0].resource = 2814dd4c-98fe-49a2-9df9-8fd6e9752725
* entry[=].fullUrl = "urn:uuid:2814dd4c-98fe-49a2-9df9-8fd6e9752725"
* entry[+].resource = 4638ac78-3d25-4610-a328-e4b145284573
* entry[=].fullUrl = "urn:uuid:4638ac78-3d25-4610-a328-e4b145284573"
* entry[+].resource = 16d0ca6d-1e36-4511-9bfe-f6e2a0606973
* entry[=].fullUrl = "urn:uuid:16d0ca6d-1e36-4511-9bfe-f6e2a0606973"
* entry[+].resource = 6a49f9c8-9986-4bbf-9bb6-17a083b85515
* entry[=].fullUrl = "urn:uuid:6a49f9c8-9986-4bbf-9bb6-17a083b85515"

Instance: 2814dd4c-98fe-49a2-9df9-8fd6e9752725
InstanceOf: QuestionnaireResponse
Usage: #inline
* meta.lastUpdated = "2021-05-19T17:50:23.000+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireResponse"
* language = #DE
* questionnaire = "https://ths-greifswald.de/fhir/gics/QuestionnaireComposed/MII/Patienteneinwilligung+MII|1.6.f"
* status = #completed
* subject = Reference(6a49f9c8-9986-4bbf-9bb6-17a083b85515) "Pseudonym dic_1H51T"
* authored = "2021-05-19T00:00:00+02:00"
* author = Reference(6a49f9c8-9986-4bbf-9bb6-17a083b85515) "Pseudonym dic_1H51T"
* source = Reference(6a49f9c8-9986-4bbf-9bb6-17a083b85515) "Pseudonym dic_1H51T"
* item[0].linkId = "PATDAT_erheben_speichern_nutzen|1.6"
* item[=].answer.valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.24.5.2#2.16.840.1.113883.3.1937.777.24.5.2.1 "gültig"
* item[+].linkId = "KKDAT_retrospektiv_uebertragen_speichern_nutzen|1.6"
* item[=].answer.valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.24.5.2#2.16.840.1.113883.3.1937.777.24.5.2.2 "ungültig"
* item[+].linkId = "KKDAT_prospektiv_uebertragen_speichern_nutzen|1.6"
* item[=].answer.valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.24.5.2#2.16.840.1.113883.3.1937.777.24.5.2.2 "ungültig"
* item[+].linkId = "BIOMAT_erheben_lagern_nutzen|1.6"
* item[=].answer.valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.24.5.2#2.16.840.1.113883.3.1937.777.24.5.2.2 "ungültig"
* item[+].linkId = "BIOMAT_Zusatzentnahme|1.6"
* item[=].answer.valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.24.5.2#2.16.840.1.113883.3.1937.777.24.5.2.2 "ungültig"
* item[+].linkId = "Rekontaktierung_Ergaenzungen|1.6"
* item[=].answer.valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.24.5.2#2.16.840.1.113883.3.1937.777.24.5.2.1 "gültig"
* item[+].linkId = "Rekontaktierung_Zusatzbefund|1.6"
* item[=].answer.valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.24.5.2#2.16.840.1.113883.3.1937.777.24.5.2.1 "gültig"
* item[+].linkId = "Z1_GECCO83_Nutzung_NUM_CODEX|1.0"
* item[=].answer.valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.24.5.2#2.16.840.1.113883.3.1937.777.24.5.2.1 "gültig"
* item[+].linkId = "Z1_GECCO83_Weitergabe_NUM_CODEX_EU_DSGVO_nonkonform|1.0"
* item[=].answer.valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.24.5.2#2.16.840.1.113883.3.1937.777.24.5.2.2 "ungültig"

Instance: 4638ac78-3d25-4610-a328-e4b145284573
InstanceOf: Consent
Usage: #inline
* id = "4638ac78-3d25-4610-a328-e4b145284573"
* meta.lastUpdated = "2021-05-19T17:50:23.000+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/593d66f3-3654-4e8a-9524-3bcd78a363bb)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* patient = Reference(6a49f9c8-9986-4bbf-9bb6-17a083b85515) "Pseudonym dic_1H51T"
* dateTime = "2021-05-19T00:00:00+02:00"
* organization.display = "MII"
* sourceReference = Reference(dfd5edc6-3a8a-4796-a9bb-f9572cf15c96)
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

Instance: 16d0ca6d-1e36-4511-9bfe-f6e2a0606973
InstanceOf: Provenance
Usage: #inline
* id = "16d0ca6d-1e36-4511-9bfe-f6e2a0606973"
* meta.lastUpdated = "2021-05-19T17:50:23.000+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Provenance"
* target = Reference(4638ac78-3d25-4610-a328-e4b145284573)
* recorded = "2021-05-19T17:50:23.000+02:00"
* agent.who.display = "https://ths-greifswald.de/gics"
* signature[0].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.7 "Consent Signature"
* signature[=].when = "2021-05-19T00:00:00.000+02:00"
* signature[=].who = Reference(6a49f9c8-9986-4bbf-9bb6-17a083b85515) "Pseudonym dic_1H51T"
* signature[=].onBehalfOf.display = "Erlangen"
* signature[=].data = "ZHVtbXky"
* signature[+].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5 "Verification Signature"
* signature[=].when = "2021-05-19T00:00:00.000+02:00"
* signature[=].who.display = "arzt_12345"
* signature[=].onBehalfOf.display = "Erlangen"
* signature[=].data = "ZHVtbXk="

Instance: 6a49f9c8-9986-4bbf-9bb6-17a083b85515
InstanceOf: Patient
Usage: #inline
* meta.lastUpdated = "2021-05-19T17:50:23.000+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier.type = $cs0203#ANON "Anonymous identifier"
* identifier.system = "https://ths-greifswald.de/fhir/gics/identifiers/Pseudonym"
* identifier.value = "dic_1H51T"
