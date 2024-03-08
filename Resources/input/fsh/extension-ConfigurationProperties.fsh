Extension: ConfigurationProperties
Id: ConfigurationProperties
Title: "ConfigurationProperties"
Description: "Configuration Properties (Parameters) in XML format."
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConfigurationProperties"
* ^context[+].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* value[x] 1.. N
* value[x] only base64Binary
