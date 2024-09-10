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
  * max = "1"
  * documentation = "Originalwerte"
  * part[+]
    * name = #target
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Pseudonymisierungskontext auf Basis dessen für den angegebenen Original-Identifikator n Sekundärpseudonyme erzeugt werden sollen."
    * type = #string
  * part[+]
    * name = #value
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Original-Identifikator für den n Sekundärpseudonyme erzeugt werden sollen."
    * type = #string
* parameter[+]
  * name = #count
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Anzahl der zu erzeugenden Sekundärpseudonyme."
  * type = #integer
* parameter[+]
  * name = #target
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Pseudonymisierungskontext (Teil des Requests)."
  * type = #string
* parameter[+]
  * name = #original
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Original-Identifikator (Teil des Requests)."
  * type = #string
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
    * documentation = "Pseudonymisierungskontext."
    * type = #Identifier
  * part[+]
    * name = #original
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Original-Identifikator (in der Regel Personen-Pseudonym)."
    * type = #Identifier
  * part[+]
    * name = #value
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Sekundär-Pseudonym."
    * type = #Identifier


Instance: Parameters-PseudonymizeSecondary-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "original"
  * part[+]
    * name = "target"
    * valueString = "MIRACUM"
  * part[+]
    * name = "value"
    * valueString = "1001000000022"
* parameter[+]
  * name = "count"
  * valueString = "2"


Instance: Parameters-PseudonymizeSecondary-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "target"
  * valueString = "MIRACUM"
* parameter[+]
  * name = "original"
  * valueString = "1001000000022"
* parameter[+]
  * name = "secondarypseudonym"
  * part[+]
    * name = "target"
    * valueString = "MIRACUM"
  * part[+]
    * name = "original"
    * valueString = "1001000000022"
  * part[+]
    * name = "value"
    * valueIdentifier
      * system = "https://ths-greifswald.de/gpas"
      * value = "1001000000033"
* parameter[+]
  * name = "secondarypseudonym"
  * part[+]
    * name = "target"
    * valueString = "MIRACUM"
  * part[+]
    * name = "original"
    * valueString = "1001000000022"
  * part[+]
    * name = "value"
    * valueIdentifier
      * system = "https://ths-greifswald.de/gpas"
      * value = "1001000000444"
