Instance: AssignIdentityByIdentifier
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/AssignIdentityByIdentifier"
* name = "AssignIdentityByIdentifier"
* title = "assignIdentityByIdentifier"
* status = #draft
* kind = #operation
* description = "Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person. Selektionsparameter ist ein Identifier der Identität."
* affectsState = true
* code = #assignIdentityByIdentifier
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #domain
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Angabe der Einwilligungsdomaene"
  * type = #string
* parameter[+]
  * name = #identityIdentifier
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Identifier der zu verschiebenden Identität (Patient-Ressource)."
  * type = #Identifier
* parameter[+]
  * name = #mpiIdentifier
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Identifikator des MPI-Eintrags (MPI-ID)"
  * type = #Identifier
* parameter[+]
  * name = #comment
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Anmerkung zum Änderungsvorgang"
  * type = #string
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Rückinformation zum Merge-Vorgang."
  * type = #OperationOutcome


Instance: Parameters-AssignIdentityByIdentifier-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "domain"
  * valueString = "MIRACUM"
* parameter[+]
  * name = "identityIdentifier"
  * valueIdentifier
    * system = "https://ths-greifswald.de/fhir/epix/identifier/identity"
    * value = "10010000006546"
* parameter[+]
  * name = "mpiIdentifier"
  * valueIdentifier
    * system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
    * value = "1001000000066"
* parameter
  * name = "comment"
  * valueString = "Korrektur nach manueller Begutachtung."


Instance: OperationOutcome-AssignIdentityByIdentifier-response-example-1
InstanceOf: OperationOutcome
Usage: #example
* issue
  * severity = #information
  * code = #informational
  * diagnostics = "identity moved."
