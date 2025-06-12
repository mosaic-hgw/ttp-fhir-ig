Extension: ConfigurationProperties
Id: ConfigurationProperties
Title: "ConfigurationProperties"
Description: "Configuration Properties (Parameters) in XML format, base64 encoded."
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ConfigurationProperties"
* ^context[+].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* value[x] 1.. N
* value[x] only base64Binary
