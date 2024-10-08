Instance: CurrentPolicyStatesForPerson
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/currentPolicyStatesForPerson"
* name = "CurrentPolicyStatesForPerson"
* title = "Current policy states for person"
* kind = #operation
* description = "Liefert die aktuellen, gültigen Policies einer Person einer spezifischen Einwilligungsdomaene (Status: permit, deny). Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält ausschließlich Consent-Ressourcen zur Abbildung der Policies, d.h. je unterzeichneter Policy ist eine Consent-Ressource mit jeweils einer Policy (provision) enthalten.\r\n\r\nPer default werden alle aktuell gültigen vom Patienten unterzeichneten Policies zurückgegeben (Accepted=Permit, Declined=Deny, Unknown=Deny). Sollen eingewilligte Policies mit Status \"Unknown\" ignoriert werden (mittels UNKNOWN können detailliertere Statusangaben wie UNKNOWN, NOT_ASKED, NOT_CHOSEN, WITHDRAWN, INVALIDATED, REFUSED und EXPIRED intern gruppiert werden) , kann dies parametrisiert werden (checkconsentconfig.unknownStateIsConsideredAsDecline=false)."
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = false
* code = #currentPolicyStatesForPerson
* comment = "Liefert die aktuellen, gültigen Policies einer Person einer spezifischen Einwilligungsdomaene (Status: permit, deny). Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält ausschließlich Consent-Ressourcen zur Abbildung der Policies, d.h. je unterzeichneter Policy ist eine Consent-Ressource mit jeweils einer Policy (provision) enthalten.\r\n\r\nPer default werden alle aktuell gültigen vom Patienten unterzeichneten Policies zurückgegeben (Accepted=Permit, Declined=Deny, Unknown=Deny). Sollen eingewilligte Policies mit Status \"Unknown\" ignoriert werden (mittels UNKNOWN können detailliertere Statusangaben wie UNKNOWN, NOT_ASKED, NOT_CHOSEN, WITHDRAWN, INVALIDATED, REFUSED und EXPIRED intern gruppiert werden) , kann dies parametrisiert werden (checkconsentconfig.unknownStateIsConsideredAsDecline=false)."
* system = true
* type = false
* instance = false
* parameter[0].name = #personIdentifier
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Um den Bezug zwischen Person und Einwilligung herzustellen, ist die Angabe von mindestens einem eindeutigen Personenidentifikator erforderlich. Dies kann je nach Anforderungen die Fallnummer, ein Patienten-Identifikator, die Angabe eines Bevollmächtigten oder ein Studienpseudonym, o.ä. sein. Bei Angabe von mehreren Identifikatoren und Verzicht auf Config-Parameter werden diese ODER-verknüpft (dies entspricht der Konfiguration AT-LEAST-ONE)."
* parameter[=].type = #Identifier
* parameter[+].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Einwilligungsdomaene"
* parameter[=].type = #string
* parameter[+].name = #config
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Parameters
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle mit den beschriebenen Inhalten"
* parameter[=].type = #Bundle


Instance: CurrentPolicyStatesForPerson-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "personIdentifier"
* parameter[=].valueIdentifier.system = "https://ths-greifswald.de/fhir/gics/identifiers/Pseudonym"
* parameter[=].valueIdentifier.value = "dic_1H51T"
* parameter[+].name = "domain"
* parameter[=].valueString = "MII"
* parameter[+].name = "config"
* parameter[=].resource.resourceType = "Parameters"
* parameter[=].resource.parameter[0].name = "idMatchingType"
* parameter[=].resource.parameter[=].valueCoding = $IdMatchingType#AT_LEAST_ONE
* parameter[=].resource.parameter[+].name = "ignoreVersionNumber"
* parameter[=].resource.parameter[=].valueBoolean = false
* parameter[=].resource.parameter[+].name = "unknownStateIsConsideredAsDecline"
* parameter[=].resource.parameter[=].valueBoolean = false
* parameter[=].resource.parameter[+].name = "requestDate"
* parameter[=].resource.parameter[=].valueDate = "2022-01-13"


Instance: CurrentPolicyStatesForPerson-response-example-1
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = 75114e44-c05f-41be-85b6-8ee46613a833
* entry[=].fullUrl = "urn:uuid:75114e44-c05f-41be-85b6-8ee46613a833"
* entry[+].resource = ea2e2ee7-2141-4d5b-9e93-6cd98468346b
* entry[=].fullUrl = "urn:uuid:ea2e2ee7-2141-4d5b-9e93-6cd98468346b"
* entry[+].resource = a8781b49-46e7-454b-8979-f0da590dd0c8
* entry[=].fullUrl = "urn:uuid:a8781b49-46e7-454b-8979-f0da590dd0c8"
* entry[+].resource = 1e0a6956-10ee-4bf0-bed7-278953d77687
* entry[=].fullUrl = "urn:uuid:1e0a6956-10ee-4bf0-bed7-278953d77687"
* entry[+].resource = ddde8406-414f-46e9-a88c-97e664296d44
* entry[=].fullUrl = "urn:uuid:ddde8406-414f-46e9-a88c-97e664296d44"
* entry[+].resource = b2e57b42-e000-4678-b33e-b242a3355dbc
* entry[=].fullUrl = "urn:uuid:b2e57b42-e000-4678-b33e-b242a3355dbc"
* entry[+].resource = 43f36877-fa74-482a-9f6a-55f72c23ec40
* entry[=].fullUrl = "urn:uuid:43f36877-fa74-482a-9f6a-55f72c23ec40"
* entry[+].resource = 9a859dd2-0fba-4dd3-990d-044af80a48b9
* entry[=].fullUrl = "urn:uuid:9a859dd2-0fba-4dd3-990d-044af80a48b9"
* entry[+].resource = d3c34408-e62d-4289-bfa4-4b1c5b128a85
* entry[=].fullUrl = "urn:uuid:d3c34408-e62d-4289-bfa4-4b1c5b128a85"
* entry[+].resource = 57fe0328-cd4e-42db-98f3-13195610a493
* entry[=].fullUrl = "urn:uuid:57fe0328-cd4e-42db-98f3-13195610a493"
* entry[+].resource = b00db864-1bc2-4d06-80d3-b8884fdffe44
* entry[=].fullUrl = "urn:uuid:b00db864-1bc2-4d06-80d3-b8884fdffe44"
* entry[+].resource = 869cb732-0731-48af-aaac-324748094a9b
* entry[=].fullUrl = "urn:uuid:869cb732-0731-48af-aaac-324748094a9b"
* entry[+].resource = 3a0c8940-462e-43f9-b078-19b9825ada1d
* entry[=].fullUrl = "urn:uuid:3a0c8940-462e-43f9-b078-19b9825ada1d"
* entry[+].resource = 88a2113b-4cd1-47db-a126-611c326ac744
* entry[=].fullUrl = "urn:uuid:88a2113b-4cd1-47db-a126-611c326ac744"
* entry[+].resource = 41ea9965-80d3-4d03-bce0-5406f454d125
* entry[=].fullUrl = "urn:uuid:41ea9965-80d3-4d03-bce0-5406f454d125"
* entry[+].resource = cd0f4d58-e5cb-47a3-bdf7-8ad8571ba9ae
* entry[=].fullUrl = "urn:uuid:cd0f4d58-e5cb-47a3-bdf7-8ad8571ba9ae"
* entry[+].resource = c9bdc0c0-bf01-4fb8-90ce-0172f8efdbff
* entry[=].fullUrl = "urn:uuid:c9bdc0c0-bf01-4fb8-90ce-0172f8efdbff"
* entry[+].resource = 2b453c71-5ea8-4a42-b749-5753f9f63c71
* entry[=].fullUrl = "urn:uuid:2b453c71-5ea8-4a42-b749-5753f9f63c71"
* entry[+].resource = 3c2d4380-cb85-4c2f-8883-c392cc9ccbe1
* entry[=].fullUrl = "urn:uuid:3c2d4380-cb85-4c2f-8883-c392cc9ccbe1"
* entry[+].resource = ad7f0ea7-b5f6-4fd3-beba-743d9c49ec1f
* entry[=].fullUrl = "urn:uuid:ad7f0ea7-b5f6-4fd3-beba-743d9c49ec1f"
* entry[+].resource = eb3dca4a-07eb-42ea-b5e7-7cee19110d55
* entry[=].fullUrl = "urn:uuid:eb3dca4a-07eb-42ea-b5e7-7cee19110d55"
* entry[+].resource = 54b2f254-2b3a-4e2f-990e-ff35c70eb08d
* entry[=].fullUrl = "urn:uuid:54b2f254-2b3a-4e2f-990e-ff35c70eb08d"
* entry[+].resource = 4422fb3d-b860-4e81-9cfd-4d2c794e5011
* entry[=].fullUrl = "urn:uuid:4422fb3d-b860-4e81-9cfd-4d2c794e5011"
* entry[+].resource = e6061ac7-5ca6-4488-a7f1-bb507b075df7
* entry[=].fullUrl = "urn:uuid:e6061ac7-5ca6-4488-a7f1-bb507b075df7"
* entry[+].resource = f11f99d8-c3c6-4eda-ae80-ab3dcc51da9e
* entry[=].fullUrl = "urn:uuid:f11f99d8-c3c6-4eda-ae80-ab3dcc51da9e"
* entry[+].resource = 00daa873-89c0-4c73-81ba-576a7d7211bb
* entry[=].fullUrl = "urn:uuid:00daa873-89c0-4c73-81ba-576a7d7211bb"
* entry[+].resource = bc2756b1-d1e4-4377-b7c4-c97c732d8cd6
* entry[=].fullUrl = "urn:uuid:bc2756b1-d1e4-4377-b7c4-c97c732d8cd6"

Instance: 75114e44-c05f-41be-85b6-8ee46613a833
InstanceOf: Consent
Usage: #inline
* id = "75114e44-c05f-41be-85b6-8ee46613a833"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#BIOMAT_Analysedaten_zusammenfuehren_Dritte "Zusammenführen von auf Biomaterialien (BIOMAT) basierenden Analysedaten mit Analysedaten Dritter, sofern dort ebenfalls eine Einwilligung vorliegt"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.23 "BIOMAT_Analysedaten_zusammenfuehren_Dritte"

Instance: ea2e2ee7-2141-4d5b-9e93-6cd98468346b
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#BIOMAT_Eigentum_uebertragen "Eigentumsübertragung der BIOMAT an den Träger der Biobank"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.21 "BIOMAT_Eigentum_uebertragen"

Instance: a8781b49-46e7-454b-8979-f0da590dd0c8
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2027-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#BIOMAT_Zusatzmengen_entnehmen "Entnahme zusätzlicher Mengen von Biomaterialien (BIOMAT) in den in der Einwilligung beschriebenen Grenzen"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.25 "BIOMAT_Zusatzmengen_entnehmen"

Instance: 1e0a6956-10ee-4bf0-bed7-278953d77687
InstanceOf: Consent
Usage: #inline
* id = "1e0a6956-10ee-4bf0-bed7-278953d77687"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2027-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#BIOMAT_erheben "Gewinnung von Biomaterialien (BIOMAT)"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT_erheben"

Instance: ddde8406-414f-46e9-a88c-97e664296d44
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#BIOMAT_lagern_verarbeiten "Lagerung und Verarbeitung von Biomaterialien innerhalb der verantwortlichen Stelle (BIOMAT)"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT_lagern_verarbeiten"

Instance: b2e57b42-e000-4678-b33e-b242a3355dbc
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#BIOMAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU "Bereitstellung umcodierter Biomaterialien (BIOMAT)  für wissenschaftliche Nutzung  und Analysen zu Zwecken med. Forschung an ext. Forscher"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT_wissenschaftlich_nutzen_EU_DSGVO_Niveau"

Instance: 43f36877-fa74-482a-9f6a-55f72c23ec40
InstanceOf: Consent
Usage: #inline
* id = "43f36877-fa74-482a-9f6a-55f72c23ec40"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #permit
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#IDAT_bereitstellen_EU_DSGVO_NIVEAU "Herausgabe identifizierender Daten (IDAT) an unabhängige Treuhandstelle zur weiteren Verarbeitung"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.5 "IDAT_bereitstellen_EU_DSGVO_Niveau"

Instance: 9a859dd2-0fba-4dd3-990d-044af80a48b9
InstanceOf: Consent
Usage: #inline
* id = "9a859dd2-0fba-4dd3-990d-044af80a48b9"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #permit
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#IDAT_erheben "Erfassung neuer identifizierender Daten (IDAT)"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.2 "IDAT_erheben"

Instance: d3c34408-e62d-4289-bfa4-4b1c5b128a85
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #permit
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#IDAT_speichern_verarbeiten "Speicherung und Verarbeitung identifizierender Daten (IDAT) zu Zwecken med. Forschung in der verantwortlichen Stelle"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.3 "IDAT_speichern_verarbeiten"

Instance: 57fe0328-cd4e-42db-98f3-13195610a493
InstanceOf: Consent
Usage: #inline
* id = "57fe0328-cd4e-42db-98f3-13195610a493"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #permit
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#IDAT_zusammenfuehren_Dritte "Zusammenführung identifizierender Daten (IDAT) über die unabhängige Treuhandstelle mit Dritten Forschungspartnern, sofern dort eine Einwilligung vorliegt"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.4 "IDAT_zusammenfuehren_Dritte"

Instance: b00db864-1bc2-4d06-80d3-b8884fdffe44
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#KDAT_pro_speichern_verarbeiten "Prospektive Krankenkassendaten (KKDAT) aus fünf Jahren ab Einwilligung speichern und codiert verarbeiten zu Zwecken der med. Forschung in der verantwortlichen Stelle"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.16 "KDAT_pro_speichern_verarbeiten"

Instance: 869cb732-0731-48af-aaac-324748094a9b
InstanceOf: Consent
Usage: #inline
* id = "869cb732-0731-48af-aaac-324748094a9b"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2027-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#KDAT_pro_uebertragen "Prospektive Krankenkassendaten (KKDAT) für fünf Kalenderjahre nach Datum Unterschrift übertragen"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.15 "KDAT_pro_uebertragen"

Instance: 3a0c8940-462e-43f9-b078-19b9825ada1d
InstanceOf: Consent
Usage: #inline
* id = "3a0c8940-462e-43f9-b078-19b9825ada1d"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#KDAT_pro_wissenschaftlich_nutzen "Bereitstellung umcodierter prospektiver Krankenkassendaten (KKDAT) aus fünf Jahren ab Einwilligung zu Zwecken med. Forschung an ext. Forscher"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.17 "KDAT_pro_wissenschaftlich_nutzen"

Instance: 88a2113b-4cd1-47db-a126-611c326ac744
InstanceOf: Consent
Usage: #inline
* id = "88a2113b-4cd1-47db-a126-611c326ac744"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#KDAT_retro_speichern_verarbeiten "Retrospektive Krankenkassendaten (KKDAT) aus fünf Jahren vor Einwilligung speichern und codiert verarbeiten zu Zwecken med. Forschung in der verantwortlichen Stelle"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.12 "KDAT_retro_speichern_verarbeiten"

Instance: 41ea9965-80d3-4d03-bce0-5406f454d125
InstanceOf: Consent
Usage: #inline
* id = "41ea9965-80d3-4d03-bce0-5406f454d125"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#KDAT_retro_uebertragen "Krankenkassendaten (KKDAT) der letzten fünf Kalenderjahre vor Datum Unterschrift übertragen"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.11 "KDAT_retro_uebertragen"

Instance: cd0f4d58-e5cb-47a3-bdf7-8ad8571ba9ae
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#KDAT_retro_wissenschaftlich_nutzen "Bereitstellung umcodierter retrospektiver Krankenkassendaten (KKDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.13 "KDAT_retro_wissenschaftlich_nutzen"

Instance: c9bdc0c0-bf01-4fb8-90ce-0172f8efdbff
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2027-01-13T13:55:12+01:00"
* provision.code[0] = $MII#KKDAT_KVNR_5J_pro_uebertragen "Erlaubnis zur prospektiven Übermittlung der KVNr., MII-Pseudonym und Zeitraum Datenübermittlung (von: Datum Unterschrift; bis: max. 5 Kalenderjahre nach Unterschrift) an zuständige Stelle"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.39 "KDAT_pro_uebertragen_KVNR"

Instance: 2b453c71-5ea8-4a42-b749-5753f9f63c71
InstanceOf: Consent
Usage: #inline
* id = "2b453c71-5ea8-4a42-b749-5753f9f63c71"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $MII#KKDAT_KVNR_5J_retro_uebertragen "Erlaubnis zur retrospektiven Übermittlung der KVNr., MII-Pseudonym und Zeitraum Datenübermittlung (von:5 Jahre vor Datum Unterschrift; bis: Datum Unterschrift) an zuständige Stelle"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.38 "KDAT_retro_uebertragen_KVNR"

Instance: 3c2d4380-cb85-4c2f-8883-c392cc9ccbe1
InstanceOf: Consent
Usage: #inline
* id = "3c2d4380-cb85-4c2f-8883-c392cc9ccbe1"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #permit
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2027-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#MDAT_erheben "Erfassung medizinischer Daten (MDAT)"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT_erheben"

Instance: ad7f0ea7-b5f6-4fd3-beba-743d9c49ec1f
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #permit
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#MDAT_speichern_verarbeiten "Speicherung und Verarbeitung von medizinischen codierten Daten zu Zwecken med. Forschung innerhalb der verantwortlichen Stelle (MDAT)"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT_speichern_verarbeiten"

Instance: eb3dca4a-07eb-42ea-b5e7-7cee19110d55
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #permit
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU "Bereitstellung umcodierter medizinischer Daten (MDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT_wissenschaftlich_nutzen_EU_DSGVO_Niveau"

Instance: 54b2f254-2b3a-4e2f-990e-ff35c70eb08d
InstanceOf: Consent
Usage: #inline
* id = "54b2f254-2b3a-4e2f-990e-ff35c70eb08d"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #permit
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#MDAT_zusammenfuehren_Dritte "Zusammenführung medizinischer Daten (MDAT) mit Dritten Forschungspartnern, sofern dort eine Einwilligung vorliegt"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.9 "MDAT_zusammenfuehren_Dritte"

Instance: 4422fb3d-b860-4e81-9cfd-4d2c794e5011
InstanceOf: Consent
Usage: #inline
* id = "4422fb3d-b860-4e81-9cfd-4d2c794e5011"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #permit
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $MII#Rekontaktierung_Ergebnisse_erheblicher_Bedeutung "Rekontaktierung des Betroffenen bei Ergebnissen von erheblicher Bedeutung"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.37 "Rekontaktierung_Ergebnisse_erheblicher_Bedeutung"

Instance: e6061ac7-5ca6-4488-a7f1-bb507b075df7
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#Rekontaktierung_Verknuepfung_Datenbanken "Rekontaktierung zur Verknüpfung von Patientendaten mit Daten anderer Datenbanken"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.27 "Rekontaktierung_Verknuepfung_Datenbanken"

Instance: f11f99d8-c3c6-4eda-ae80-ab3dcc51da9e
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $MII#Rekontaktierung_Zusatzbefund "Rekontaktierung bezüglich Zusatzbefund im Rahmen der am Standort dafür entwickelten Prozesse und der im Nutzungsantrag angegebenen Bedingungen"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.31 "Rekontaktierung_Zusatzbefund"

Instance: 00daa873-89c0-4c73-81ba-576a7d7211bb
InstanceOf: Consent
Usage: #inline
* id = "00daa873-89c0-4c73-81ba-576a7d7211bb"
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#Rekontaktierung_weitere_Erhebung "Rekontaktierung bezüglich Erhebung zusätzlicher Daten"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.28 "Rekontaktierung_weitere_Erhebung"

Instance: bc2756b1-d1e4-4377-b7c4-c97c732d8cd6
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2022-01-13T13:55:12.679+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/5213d78f-2008-4b9e-9f0e-42ec38a1d518)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/cf39df7c-d88d-46fe-ac8d-4553d43a14f4) "Pseudonym dic_1H51T"
* dateTime = "2022-01-13T13:55:12+01:00"
* organization.display = "MII"
* sourceReference = Reference(QuestionnaireResponse/80b4f763-2511-438c-be92-9beb2c6ea8e6)
* policy.uri = "urn:uuid:5213d78f-2008-4b9e-9f0e-42ec38a1d518"
* provision.type = #deny
* provision.period.start = "2022-01-13T13:55:12+01:00"
* provision.period.end = "2052-01-13T13:55:12+01:00"
* provision.code[0] = $Policy#Rekontaktierung_weitere_Studien "Rekontaktierung bezüglich Information zu neuen Forschungsvorhaben oder Studien"
* provision.code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.29 "Rekontaktierung_weitere_Studien"
