Instance: AssignIdentity
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/AssignIdentity"
* name = "AssignIdentity"
* title = "assignIdentity"
* status = #draft
* kind = #operation
* description = "Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person, um eine erkannte Dublette (Match Result) zu beheben."
* affectsState = true
* code = #assignIdentity
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #linkId
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Link-ID des Matches (Dubletteneintrag). Ermittelbar mittels Operation queryPossibleMatches."
  * type = #integer
* parameter[+]
  * name = #identityReference
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Referenz zur korrekten Ausprägung (Identität, Match-Item, Patient-Ressource), die das Ziel der Verschiebung ist."
  * type = #Reference
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


Instance: Parameters-AssignIdentity-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "domain"
  * valueString = "MIRACUM"
* parameter[+]
  * name = "linkId"
  * valueInteger = 5654986
* parameter[+]
  * name = "identityReference"
  * valueReference.reference = "Patient/52"
* parameter
  * name = "comment"
  * valueString = "Nachforschungen haben ergeben, dass die Zuordnug so korrekt ist."


Instance: OperationOutcome-AssignIdentity-response-example-1
InstanceOf: OperationOutcome
Usage: #example
* issue
  * severity = #information
  * code = #informational
  * diagnostics = "match resolved, identity moved."
