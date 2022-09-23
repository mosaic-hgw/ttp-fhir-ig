Extension: Position
Id: Position
Title: "Position"
Description: """Ordered position of an item.
Redundant in the context of FHIR, but relevant"""
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Position"
* ^context.type = #element
* ^context.expression = "Questionnaire.item"
* value[x] 1.. N
* value[x] only integer
