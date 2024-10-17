Instance: AddConsentOptOut
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/addConsentOptOut"
* name = "AddConsentOptOut"
* title = "Add a consent related QuestionnaireResponse for a patient in an opt-out context"
* kind = #operation
* description = "Erstellt die Einwilligungsinformationen in einem Opt-Out-Kontext für einen (ggf. neuen) Patienten, um auf dieser Basis eine neue Einwilligung im gICS zu erzeugen. Liefert Bundle vom Typ \"collection\". Das Bundle enthält die errechnete FHIR Consent-Resource."
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = true
* code = #addConsentOptOut
* comment = "Liefert alle Consente einer Person einer spezifischen Einwilligungsdomaene, die sich aus den übermittelten Informationen ergeben. Die Rückgabe erfolgt als Bundle vom Typ \"collection\"."
* system = true
* type = false
* instance = false
* parameter[0].name = #patient
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Patient-Ressource, entsprechend dem Profil http://fhir.de/ConsentManagement/StructureDefinition/Patient. Für Identifier in dieser Ressource muss der Namensraum (identifier.system) mit der Zeichenfolge 'https://ths-greifswald.de/fhir/gics/identifiers/' beginnen. Angehängt hieran wird der Bezeichner eines im System konfigurierten SignerIDTypes. Abweichungen hiervon führen zu einem Fehler, indiziert durch HTTP Status 422."
* parameter[=].type = #Patient
* parameter[+].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Einwilligungsdomaene"
* parameter[=].type = #string
* parameter[+].name = #questionnaire
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Canonical URL des Questionnaire (entsprechend dem Profil http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireComposed), das im Rahmen eines Opt-Out-Kontexts implizit gilt."
* parameter[=].type = #canonical
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle vom Typ collection, das die errechneten Consent-Ressourcen enthält."
* parameter[=].type = #Bundle


Instance: Parameters-AddConsentOptOut-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "patient"
  * resource
    * id = "1"
    * resourceType = "Patient"
    * identifier
      * type = $cs0203#ANON "Anonymous identifier"
      * value = "studypsn1"
      * system = "https://ths-greifswald.de/fhir/gics/identifiers/Pseudonym"
    * meta
      * lastUpdated = "2022-12-20T10:10:54.889+01:00"
      * profile = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* parameter[+]
  * name = "domain"
  * valueString = "MII"
* parameter[+]
  * name = "questionnaire"
  * valueCanonical = "https://ths-greifswald.de/fhir/gics/QuestionnaireComposed/MII/Patienteneinwilligung+MII|1.6.f"


Instance: AddConsentOptOut-response-example-1
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+].resource = 8821edd5-5bb7-11ef-9800-0242ac130002

Instance: 8821edd5-5bb7-11ef-9800-0242ac130002
InstanceOf: Consent
Usage: #inline
* id = "8821edd5-5bb7-11ef-9800-0242ac130002"
* meta
  * lastUpdated = "2024-08-16T12:08:49.282+02:00"
  * profile = "http://fhir.de/ConsentManagement/StructureDefinition/Consent"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/7fca337a-e69c-11ee-943e-0242ac1c0002)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[0] = $loinc#57016-8
* category[+] = $csResultType#document
* category[+] = $csTemplateType#CONSENT-OPT-OUT
* patient = Reference(Patient/881fc35f-5bb7-11ef-9800-0242ac130002) "studyPSN fhir_1"
* dateTime = "2024-08-16T12:08:49+02:00"
* organization.display = "opt-out"
* sourceReference = Reference(QuestionnaireResponse/8821edd5-5bb7-11ef-9800-0242ac130002)
* policy.uri = "urn:uuid:7cbe82e6-3886-11ef-8dbb-0242ac130002"
* provision.type = #permit
* provision.period.start = "2024-08-16T12:08:49+02:00"
* provision.period.end = "3000-01-01T00:00:00+01:00"
* provision.provision.type = #permit
* provision.provision.period.start = "2024-08-16T12:08:49+02:00"
* provision.provision.period.end = "3000-01-01T00:00:00+01:00"
* provision.provision.code = $csExampleOptOut#p-opt-out
