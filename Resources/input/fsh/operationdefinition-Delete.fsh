Instance: Delete
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gpas/delete"
* name = "Delete"
* title = "delete"
* kind = #operation
* comment = "Löscht eine gegebene Liste von 1-n Einträgen (identifiziert durch den Originalwert) in der angegebenen Domäne, sofern die Konfiguration dieser Domäne dies erlaubt."
* affectsState = true
* code = #anonymize
* comment = "Löscht eine gegebene Liste von 1-n Einträgen (identifiziert durch den Originalwert) in der angegebenen Domäne, sofern die Konfiguration dieser Domäne dies erlaubt."
* system = true
* type = false
* instance = false
* parameter[0]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
* documentation = "Angabe der Domäne innerhalb derer die angegebenen Originalwerte gelöscht werden."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "*"
* documentation = "Angabe der Originalwerte für die in der angegebenen Domäne eine Löschung durchgeführt werden soll."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #successStatus
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "Status-Rückgabe der einzelnen durchgeführten Löschungen"
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
