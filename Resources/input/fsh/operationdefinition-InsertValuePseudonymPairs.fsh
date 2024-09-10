Instance: InsertValuePseudonymPairs
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gpas/insert-value-pseudonym-pairs"
* name = "InsertValuePseudonymPairs"
* title = "insertValuePseudonymPairs"
* kind = #operation
* description = "TODO"
* affectsState = false
* code = #insert-value-pseudonym-pairs
* comment = "TODO"
* system = true
* type = false
* instance = false
* parameter[0].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Domäne auf Basis derer für die angegebenen Originalwerte ein vorhandenens eindeutiges Pseudonym gesucht wird"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #original
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Originalwerte für die in der angegebenen Domäne nach vorhandenen zugeordneten Pseudonymen gesucht wird"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #pseudonym
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Ermitteltes bzw. generiertes studien- und standort-spezifisches Pseudonym"
* parameter[+].name = #pseudonym
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Ermitteltes bzw. generiertes studien- und standort-spezifisches Pseudonym"
* parameter[=].part[0].name = #original
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Original-Identifikator"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #target
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Target-Identifikator"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #pseudonym
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Pseudonym"
* parameter[=].part[=].type = #Identifier
* parameter[+].name = #error
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Fehlerrückgabe bei Teil-Fehlern"
* parameter[=].part[0].name = #target
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Target-Identifikator"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #original
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Original-Identifikator"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #error-code
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Fehlercode"
* parameter[=].part[=].type = #Coding


Instance: Parameters-InsertValuePseudonymPairs-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "target"
* parameter[=].valueString = "MIRACUM"
* parameter[+].name = "original"
* parameter[=].valueString = "1001000000022"
* parameter[+].name = "pseudonym"
* parameter[=].valueString = "mrcm_T0TYNV21"

Instance: Parameters-InsertValuePseudonymPairs-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "pseudonym"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "MIRACUM"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "1001000000022"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "mrcm_T0TYNV21"

Instance: Parameters-InsertValuePseudonymPairs-response-example-2
InstanceOf: Parameters
Usage: #example
* parameter[+].name = "error"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "10010000000XX"
* parameter[=].part[+].name = "error-code"
* parameter[=].part[=].valueCoding.system = "http://hl7.org/fhir/issue-type"
* parameter[=].part[=].valueCoding.code = #not-found
* parameter[=].part[=].valueCoding.display = "Not Found"
