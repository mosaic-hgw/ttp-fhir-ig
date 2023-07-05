Instance: MergePersons
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/MergePersons"
* name = "MergePersons"
* title = "mergePersons"
* status = #draft
* kind = #operation
* description = "Führt zwei Referenz-Identitäten (MPI-Einträge) zu einer zusammen. Die neue Referenzidentität ist dabei diejenige zur winningMpiId. Alle Identitäten, die einem der beiden MPI-Einträge zugeordnet waren, werden dabei dem zusammengeführten MPI-Eintrag zugeordnet."
* affectsState = true
* code = #mergePersons
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #domain
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Angabe der Matching-Domaene"
  * type = #string
* parameter[+]
  * name = #winningMpiId
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Identifikator des MPI-Entrags (MPI-ID, Person.identifier), der auch der neue MPI-Eintrag ist."
  * type = #Identifier
* parameter[+]
  * name = #losingMpiId
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Identifikator des MPI-Entrags (MPI-ID, Person.identifier), der dem 'winning' MPI-Eintrag zugeordnet wird."
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


Instance: Parameters-MergePersons-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "domain"
  * valueString = "MIRACUM"
* parameter[+]
  * name = "winningMpiId"
  * valueIdentifier
    * system = "https://ths-greifswald.de/fhir/identifier/BeispielMpiId"
    * value = "1001000000066"
* parameter[+]
  * name = "winningMpiId"
  * valueIdentifier
    * system = "https://ths-greifswald.de/fhir/identifier/BeispielMpiId"
    * value = "1001058856654"
* parameter
  * name = "comment"
  * valueString = "Nachforschungen haben ergeben, dass es sich um die selbe Person handelt."


Instance: OperationOutcome-MergePersons-response-example-1
InstanceOf: OperationOutcome
Usage: #example
* issue
  * severity = #information
  * code = #informational
  * diagnostics = "merged persons (MPI entries)."
