Extension: Property
Id: Property
Title: "Property Element"
Description: "Key Value Property Element für Properties zur Individualisierung von Domains, Policies, Modules und Templates"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Property"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "ActivityDefinition"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* . N
* . ^short = "Property"
* . ^definition = "Property"
* extension contains
    key 1..1 N and
    value 1..1 N
* extension[key] ^label = "Key"
* extension[key] ^short = "Property Key"
* extension[key].value[x] 1.. N
* extension[key].value[x] only string
* extension[value] ^label = "Value"
* extension[value] ^short = "Property Value"
* extension[value].value[x] only string
* extension[value].value[x] N
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Property" (exactly)
