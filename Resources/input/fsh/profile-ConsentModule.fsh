Profile: ConsentModule
Parent: $prEinwTemplateModule
Id: ConsentModule
Title: "Consent Module"
Description: "Wiederverwendbares Consent Module auf Basis des ConsentManagementTemplateModules erweitertet um ausgewählte gICS Eigenschaften"
* insert meta-profile
* ^purpose = "Wiederverwendbares Consent Module auf Basis des ConsentManagementTemplateModules erweitertet um ausgewählte gICS Eigenschaften"
* meta.extension contains
    Created named created 0..1 MS
* useContext.value[x] only Reference(ConsentDomain)
* useContext.value[x] N
* item.extension contains
    QuestionnaireLabel named label 0..* MS N and
    ConsentPolicyReference named assignedPolicy 0..* MS N and
    ExternalProperty named externalProperties 0..* MS N and
    ShortText named shortText 0..1 MS N
* item.extension[label] ^label = "Label"
* item.extension[label] ^short = "Label des Consent Moduls"
* item.extension[label] ^definition = "Label des Consent Moduls"
* item.extension[label] ^comment = "Label des Consent Moduls"
* item.extension[assignedPolicy] ^short = "Assigned Policies"
* item.extension[assignedPolicy] ^definition = "Dem Modul zugeordnete Policies"
* item.extension[externalProperties] ^label = "externalProperties"
* item.extension[externalProperties] ^short = "externalProperties"
* item.extension[externalProperties] ^definition = "Liste frei konfigurierbarer external Properties nach dem KeyValuePrinzip zur Auswertung durch externe Anwendersysteme"
* item.text.extension[renderingMarkdown].value[x] N
* item.text.extension[renderingMarkdown].value[x] ^slicing.discriminator.type = #type
* item.text.extension[renderingMarkdown].value[x] ^slicing.discriminator.path = "$this"
* item.text.extension[renderingMarkdown].value[x] ^slicing.rules = #open
* item.text.extension[renderingXhtml].value[x] N
* item.text.extension[renderingXhtml].value[x] ^slicing.discriminator.type = #type
* item.text.extension[renderingXhtml].value[x] ^slicing.discriminator.path = "$this"
* item.text.extension[renderingXhtml].value[x] ^slicing.rules = #open


Instance: ConsentModule-example-1
InstanceOf: ConsentModule
Usage: #example
* language = #DE
* meta.extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* version = "1.6"
* name = "BIOMAT_erheben_lagern_nutzen"
* status = #draft
* useContext.code = $QuestionnaireComponents#TemplateModule
* useContext.valueReference = Reference(ResearchStudy/6048563-3f7f6-42f3-9752-fb6bd3feffc6)
* item.extension[0].url = "http://hl7.org/fhir/StructureDefinition/designNote"
* item.extension[=].valueMarkdown = "erheben, lagern, nutzen, eigentum übertragen, analysedaten zusammenführen"
* item.extension[+].id = "36512b3f-994a-4010-b7d5-aac90a5b5b3a"
* item.extension[=].extension.url = "reference"
* item.extension[=].extension.valueReference = Reference(ActivityDefinition/b320c204-4b4e-4dd8-a11e-d29cc37d6535)
* item.extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConsentPolicyReference"
* item.extension[+].id = "725f3ff0-4d31-42af-8e62-244cea523ec1"
* item.extension[=].extension.url = "reference"
* item.extension[=].extension.valueReference = Reference(ActivityDefinition/cf816922-e849-49f0-bc65-33a9e6f277ae)
* item.extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConsentPolicyReference"
* item.extension[+].id = "f33a4ce5-f875-4f1b-838f-b90c51260246"
* item.extension[=].extension.url = "reference"
* item.extension[=].extension.valueReference = Reference(ActivityDefinition/e7f37956-eea7-41a4-8f8b-e268b522508b)
* item.extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConsentPolicyReference"
* item.extension[+].id = "92f53938-0e96-4572-af94-23ea6a5db17d"
* item.extension[=].extension.url = "reference"
* item.extension[=].extension.valueReference = Reference(ActivityDefinition/ad258a43-1e03-42c4-b535-5c8c69ef2df2)
* item.extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConsentPolicyReference"
* item.extension[+].id = "6250957d-ca69-4887-9f5a-1cb6e142bc95"
* item.extension[=].extension.url = "reference"
* item.extension[=].extension.valueReference = Reference(ActivityDefinition/a5f323ef-5915-4771-bba2-614ea0a600fb)
* item.extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConsentPolicyReference"
* item.extension[+].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/QuestionnaireLabel"
* item.extension[=].valueString = "BIOMAT_erheben_lagern_nutzen"
* item.extension[+].extension[0].url = "key"
* item.extension[=].extension[=].valueString = "mii_question_oid"
* item.extension[=].extension[+].url = "value"
* item.extension[=].extension[=].valueString = "2.16.840.1.113883.3.1937.777.24.5.3.18"
* item.extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* item.linkId = "BIOMAT_erheben_lagern_nutzen|1.6"
* item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.text.extension.valueString = "<div style=\"text-align: justify;\">Ich willige ein in die Gewinnung, Lagerung und wissenschaftliche Nutzung meiner <strong>Biomaterialien </strong>(Gewebe und Körperflüssigkeiten), wie in Punkt 3.1 bis 3.3 der Einwilligungserklärung und Punkt 3 der Patienteninformation beschrieben.</div>"
* item.type = #choice

Instance: ConsentModule-example-2
InstanceOf: ConsentModule
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-06-24T08:30:00.000+00:00"
* language = #DE
* meta.extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* version = "1.6.d"
* name = "MDAT_ErhebenSpeichernNutzen"
* title = "Verarbeitung und Nutzung von Patientendaten für die medizinische Forschung"
* status = #active
* description = "Beispiel-Fragen-Modul aus der MI-Initiative"
* useContext.code = $QuestionnaireComponents#TemplateModule
* useContext.valueReference = Reference(d7a65ce8-2810-401a-b0db-70782a7b19a6)
* purpose = "Einwilligungserklärung für die wissenschaftliche Nutzung"
* item.extension[0].extension.url = "reference"
* item.extension[=].extension.valueReference = Reference(d7a65ce8-2810-401a-b0db-70782a7b1111)
* item.extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConsentPolicyReference"
* item.extension[+].extension.url = "reference"
* item.extension[=].extension.valueReference = Reference(d7a65ce8-2810-401a-b0db-70782a7b1222)
* item.extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConsentPolicyReference"
* item.extension[+].extension.url = "reference"
* item.extension[=].extension.valueReference = Reference(d7a65ce8-2810-401a-b0db-70782a7b1333)
* item.extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConsentPolicyReference"
* item.extension[+].extension[0].url = "key"
* item.extension[=].extension[=].valueString = "containsHtml"
* item.extension[=].extension[+].url = "value"
* item.extension[=].extension[=].valueString = "true"
* item.extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* item.linkId = "2.16.840.1.113883.3.1937.777.24.5.98765.1"
* item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.text.extension.valueString = "Ich willige ein in die <strong>Erhebung, Verarbeitung, Speicherung</strong> und wissenschaftliche Nutzung meiner Patientendaten wie in Punkt 1.1 bis 1.3 der Einwilligungserklärung und Punkt 1. der Patienteninformation beschrieben."
* item.type = #display
