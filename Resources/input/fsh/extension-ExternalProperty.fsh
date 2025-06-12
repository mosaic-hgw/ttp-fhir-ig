Extension: ExternalProperty
Id: ExternalProperty
Title: "External Property Element"
Description: "Key Value Property Element für External Properties zur Individualisierung von Domains, Policies, Modules und Templates"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Consent"
* ^context[+].type = #element
* ^context[=].expression = "ActivityDefinition"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "VerificationResult"
* . N
* . ^short = "ExternalProperty"
* . ^definition = "ExternalProperty"
* extension contains
    key 1..1 N and
    value 1..1 N
* extension[key] ^label = "Key"
* extension[key] ^short = "External Property Key"
* extension[key].value[x] 1.. N
* extension[key].value[x] only string
* extension[value] ^label = "Value"
* extension[value] ^short = "External Property Value"
* extension[value].value[x] 1.. N
* extension[value].value[x] only string
