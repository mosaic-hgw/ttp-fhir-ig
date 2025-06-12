Profile: ExchangeFormatDefinition
Parent: Bundle
Id: ExchangeFormatDefinition
Title: "ExchangeFormatDefinition"
Description: "Die in diesem Bundle enthaltenen FHIR-Ressourcen definieren in ihrer Gesamtheit ein oder mehrere Einwiliigungs-Vorlagen (Templates, FHIR-Questionnaires) zu einem bestimmten Kontext."
* insert meta-profile
* ^status = #draft
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Bundle/ExchangeFormatDefinition"
* type = #collection (exactly)
* type MS N
* type ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* type ^extension[=].valueCode = #4.0.0
* type.extension ^slicing.discriminator.type = #value
* type.extension ^slicing.discriminator.path = "url"
* type.extension ^slicing.rules = #open
* type.extension contains SupportedVersion named supportedVersion 1..1 MS N
* type.extension[supportedVersion] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* type.extension[supportedVersion] ^extension[=].valueCode = #4.0.0
* type.extension[supportedVersion].value[x] MS N
* type.extension[supportedVersion].value[x] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* type.extension[supportedVersion].value[x] ^extension[=].valueCode = #4.0.0
* total ..0 N
* total ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* total ^extension[=].valueCode = #4.0.0
* link ..0 N
* link ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* link ^extension[=].valueCode = #4.0.0
* entry 1.. MS N
* entry ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* entry ^extension[=].valueCode = #4.0.0
* entry.link ..0
* entry.resource 1.. MS
* entry.resource only ConsentPolicy or ConsentModule or ConsentTemplate or $QuestionnaireComposed or ConsentDomain
* entry.search ..0 N
* entry.search ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* entry.search ^extension[=].valueCode = #4.0.0
* entry.request ..0 N
* entry.request ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* entry.request ^extension[=].valueCode = #4.0.0
* entry.response ..0 N
* entry.response ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* entry.response ^extension[=].valueCode = #4.0.0
