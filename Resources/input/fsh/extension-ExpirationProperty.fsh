Extension: ExpirationProperty
Id: ExpirationProperty
Title: "Expiration Property"
Description: "Key Value Expiration Property Element zur Definition von Gültigkeitszeiträumen"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExpirationProperty"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "ActivityDefinition"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Consent"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* . ^short = "Expiration Property"
* . ^definition = "Expiration Property"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    key 1..1 and
    value 1..1
* extension[key] ^label = "Key"
* extension[key] ^short = "Expiration Property Key"
* extension[key].value[x] 1.. N
* extension[key].value[x] only string
* extension[key].value[x] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* extension[key].value[x] ^extension[=].valueCode = #4.0.0
* extension[value] ^label = "Value"
* extension[value] ^short = "Expiration Property Value"
* extension[value].value[x] only string
* extension[value].value[x] N
* extension[value].value[x] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* extension[value].value[x] ^extension[=].valueCode = #4.0.0
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExpirationProperty" (exactly)
