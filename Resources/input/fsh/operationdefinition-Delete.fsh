Instance: Delete
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gpas/delete"
* name = "Delete"
* title = "delete"
* kind = #operation
* description = "Löscht eine gegebene Liste von 1-n Pseudonymen einer spezifische Domäne, sofern die Konfiguration dieser Domäne es erlaubt."
* affectsState = true
* code = #anonymize
* comment = "Löscht eine gegebene Liste von 1-n Pseudonymen einer spezifische Domäne, sofern die Konfiguration dieser Domäne es erlaubt."
* system = true
* type = false
* instance = false
* parameter[0]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Angabe der Domäne, in der die Löschungen stattfinden sollen."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #pseudonym
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Angabe der zu löschenden Pseudonyme."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #successStatus
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "Status-Rückgabe der einzelnen Löschungen"
  * part[0]
    * name = #target
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Target-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #pseudonym
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
