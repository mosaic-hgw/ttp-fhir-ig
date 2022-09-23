Instance: DePseudonymize
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gpas/dePseudonymize"
* name = "DePseudonymize"
* title = "dePseudonymize"
* kind = #operation
* description = "Abfrage je eines Originalwertes für eine Liste von 1-n Pseudonymen und eine spezifische Domäne."
* affectsState = false
* code = #dePseudonymize
* comment = "Abfrage je eines Originalwertes für eine Liste von 1-n Pseudonymen und eine spezifische Domäne."
* system = true
* type = false
* instance = false
* parameter[0].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Domäne auf Basis derer für das angegebene Pseudonym ein vorhandener eindeutiger Originalwert gesucht wird"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #pseudonym
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Angabe einer Liste von 1-n Pseudonymen für die in der angegebenen Domäne zugeordnete eindeutige Originalwerte gesucht werden"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #original
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Original-Identifikation zum übermittelten Pseudonym"
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
* parameter[=].part[=].documentation = "Patient-Identifier"
* parameter[=].part[=].type = #Identifier
* parameter[+].name = #error
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Fehlerrückgabe bei Teil-Fehlern"
* parameter[=].part[0].name = #original
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Original-Identifikator"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #target
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Target-Identifikator"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #pseudonym
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Patient-Identifikator"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #error-code
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Fehlercode"
* parameter[=].part[=].type = #Coding


Instance: Parameters-DePseudonymize-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "MIRACUM"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "mrcm_T0TYNV21"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "1001000000022"
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "MIRACUM"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "mrcm_9GELEUVU"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "1001000000033"

Instance: Parameters-DePseudonymize-response-example-1
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
* parameter[+].name = "pseudonym"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "MIRACUM"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "1001000000033"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "mrcm_9GELEUVU"
