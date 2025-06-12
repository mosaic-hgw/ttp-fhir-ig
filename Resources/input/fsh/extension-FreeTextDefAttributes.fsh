Extension: FreeTextDefAttributes
Id: FreeTextDefAttributes
Title: "FreeTextDef Attributes"
Description: "gics-spezifische Attribute von frei definierten Eingaben"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/FreeTextDefAttributes"
* ^context.type = #element
* ^context.expression = "Questionnaire.item"
* . N
* . ^short = "ExternalProperty"
* . ^definition = "ExternalProperty"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    name 1..1 N and
    converterstring 0..1 N and
    updateDate 1..1 N and
    finalized 1..1 N
* extension[name] ^label = "Name"
* extension[name] ^short = "Name of the Definition"
* extension[name].value[x] 1.. N
* extension[name].value[x] only string
* extension[converterstring] ^label = "Converter String"
* extension[converterstring] ^short = "Converter String"
* extension[converterstring].value[x] only string
* extension[converterstring].value[x] N
* extension[updateDate] ^label = "Update Date"
* extension[updateDate] ^short = "Update Date"
* extension[updateDate].value[x] 1.. N
* extension[updateDate].value[x] only date
* extension[finalized] ^label = "Finalized"
* extension[finalized] ^short = "Finalized"
* extension[finalized].value[x] 1.. N
* extension[finalized].value[x] only Coding
* extension[finalized].value[x] from http://hl7.org/fhir/ValueSet/publication-status|4.0.1 (required)
* extension[finalized].value[x].system 1.. N
* extension[finalized].value[x].code 1.. N
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/FreeTextDefAttributes" (exactly)
