Instance: Anonymize
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gpas/anonymize"
* name = "Anonymize"
* title = "anonymize"
* kind = #operation
* description = "Anonymisiert eine gegebene Liste von 1-n Originalwerten und eine spezifische Domäne."
* affectsState = true
* code = #anonymize
* comment = "Anonymisiert eine gegebene Liste von 1-n Originalwerten und eine spezifische Domäne."
* system = true
* type = false
* instance = false
* parameter[0]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Angabe der Domäne auf Basis derer für die angegebenen Originalwerte eine Anonymisierung durchgeführt werden soll."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Angabe der Originalwerte für die in der angegebenen Domäne nach vorhandenen zugeordneten Pseudonymen gesucht wird"
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #successStatus
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "Status-Rückgabe der einzelnen Anonymisierungen"
  * part[0]
    * name = #target
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Target-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #original
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Original-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #result-code
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Erfolgs- bzw. Fehlercode"
    * type = #Coding
