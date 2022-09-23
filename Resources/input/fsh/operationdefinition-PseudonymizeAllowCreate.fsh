Instance: PseudonymizeAllowCreate
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gpas/pseudonymizeAllowCreate"
* name = "PseudonymizeAllowCreate"
* title = "pseudonymizeAllowCreate"
* kind = #operation
* description = "Generierung je eines Pseudonyms für eine Liste von Originalwerten und eine spezifische Domäne sofern es noch nicht vorhanden ist. Sofern die Zuordnung Originalwert und Domäne bereits bekannt ist, wird das zugeordnete vorhandene Pseudonym zurückgegeben."
* affectsState = true
* code = #pseudonymizeAllowCreate
* comment = "Generierung je eines Pseudonyms für eine Liste von 1-n Originalwerten und eine spezifische Domäne sofern es noch nicht vorhanden ist. Sofern die Zuordnung Originalwert und Domäne bereits bekannt ist, wird das zugeordnete vorhandene Pseudonym zurückgegeben."
* system = true
* type = false
* instance = false
* parameter[0].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Domäne auf Basis derer für den angegebenen Originalwert ein vorhandenens eindeutiges Pseudonym gesucht wird"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #original
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Angabe der Originalwerte auf Basis derer in der zusätzlich angegebenen Domäne eindeutige Pseudonym gesucht und sofern noch nicht vorhanden erzeugt werden"
* parameter[=].type = #string
* parameter[=].searchType = #string
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


Instance: Parameters-PseudonymizeAllowCreate-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "target"
* parameter[=].valueString = "MIRACUM"
* parameter[+].name = "original"
* parameter[=].valueString = "1001000000022"
* parameter[+].name = "original"
* parameter[=].valueString = "1001000000033"

Instance: Parameters-PseudonymizeAllowCreate-response-example-1
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
