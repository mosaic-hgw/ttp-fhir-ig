Extension: ConsentPolicyReference
Id: ConsentPolicyReference
Title: "Consent Policy Reference"
Description: "Referenz auf eine Consent Policy zur Verwendung innerhalb eines Consent Moduls"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConsentPolicyReference"
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* extension contains
    reference 1..1 N and
    comment 0..1 N and
    externalProperty 0..* N and
    expirationProperty 0..* N
* extension[reference].value[x] 1.. N
* extension[reference].value[x] only Reference(ConsentPolicy)
* extension[reference].value[x].reference 1.. N
* extension[comment].value[x] 1.. N
* extension[comment].value[x] only string
* extension[externalProperty].extension ^slicing.discriminator.type = #value
* extension[externalProperty].extension ^slicing.discriminator.path = "url"
* extension[externalProperty].extension ^slicing.rules = #open
* extension[externalProperty].extension contains
    key 1..1 N and
    value 1..1 N
* extension[externalProperty].extension[key].value[x] 1.. N
* extension[externalProperty].extension[key].value[x] only string
* extension[externalProperty].extension[value].value[x] 1.. N
* extension[externalProperty].extension[value].value[x] only string
* extension[expirationProperty].extension ^slicing.discriminator.type = #value
* extension[expirationProperty].extension ^slicing.discriminator.path = "url"
* extension[expirationProperty].extension ^slicing.rules = #open
* extension[expirationProperty].extension contains
    key 1..1 N and
    value 1..1 N
* extension[expirationProperty].extension[key].value[x] 1.. N
* extension[expirationProperty].extension[key].value[x] only string
* extension[expirationProperty].extension[value].value[x] 1.. N
* extension[expirationProperty].extension[value].value[x] only string
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConsentPolicyReference" (exactly)
