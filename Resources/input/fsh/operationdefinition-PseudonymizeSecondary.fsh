Instance: PseudonymizeSecondary
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gpas/pseudonymize-secondary"
* name = "PseudonymizeSecondary"
* title = "pseudonymize-secondary"
* kind = #operation
* description = "Erzeugung einer spezifischen Anzahl von Pseudonymen in einem vorhandenen Pseudonymisierungskontext bei gleichzeitiger Zuordnung zum übermittelten Originalwert."
* affectsState = false
* code = #pseudonymize-secondary
* comment = "Erzeugung einer spezifischen Anzahl von Pseudonymen in einem vorhandenen Pseudonymisierungskontext bei gleichzeitiger Zuordnung zum übermittelten Originalwert."
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Originalwerte"
  * part[+]
    * name = #target
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Pseudonymisierungskontext auf Basis dessen für den angegebenen Original-Identifikator n Sekundärpseudonyme erzeugt werden sollen. Ist bei allen Tripeln eines Requests der target-Parameter identisch, erfolgt die interne Verarbeitung mit erhöhter Performance."
    * type = #string
  * part[+]
    * name = #value
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Original-Identifikator für den n Sekundärpseudonyme erzeugt werden sollen."
    * type = #string
  * part[+]
    * name = #count
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Anzahl der zu erzeugenden Sekundärpseudonyme."
    * type = #integer
* parameter[+]
  * name = #secondarypseudonym
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "erzeugte SekundärPersonenpseudonyme"
  * part[+]
    * name = #target
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Pseudonymisierungskontext (Teil des Requests)."
    * type = #Identifier
  * part[+]
    * name = #original
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Original-Identifikator (Teil des Requests)."
    * type = #Identifier
  * part[+]
    * name = #value
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Sekundär-Pseudonym."
    * type = #Identifier
  * part[+]
    * name = #result-code
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Erfolgsstatus"
    * type = #Coding
* parameter[+]
  * name = #error
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Aufgetretene Fehler"
  * part[+]
    * name = #target
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Fehlerhafte Domänenangabe"
    * type = #Identifier
  * part[+]
    * name = #error-code
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Fehlerdetails"
    * type = #Coding

Instance: Parameters-PseudonymizeSecondary-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "original"
  * part[+]
    * name = "target"
    * valueString = "Datensatz-Ebene"
  * part[+]
    * name = "value"
    * valueString = "H3RAU56A8E"
  * part[+]
    * name = "count"
    * valueString = "2"

Instance: Parameters-PseudonymizeSecondary-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "secondarypseudonym"
  * part[+]
    * name = "target"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "Datensatz-Ebene"
  * part[+]
    * name = "original"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "H3RAU56A8E"
  * part[+]
    * name = "value"
    * valueIdentifier
      * system = "https://ths-greifswald.de/gpas"
      * value = "53KUNDA3RP5N1"
* parameter[+]
  * name = "secondarypseudonym"
  * part[+]
    * name = "target"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "Datensatz-Ebene"
  * part[+]
    * name = "original"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "H3RAU56A8E"
  * part[+]
    * name = "value"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "53KUNDA3RP5N2"
  * part[+]
    * name = "result-code"
    * valueCoding.system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
    * valueCoding.code = #MSG_CREATED


Instance: Parameters-PseudonymizeSecondary-response-example-2
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "error"
  * part[+]
    * name = "target"
    * valueIdentifier.system = "https://ths-greifswald.de/gpas"
    * valueIdentifier.value = "DOMAINXY"
  * part[+]
    * name = "error-code"
    * valueCoding.system = "http://hl7.org/fhir/issue-type"
    * valueCoding.code = #not-found
    * valueCoding.display = "Not Found"