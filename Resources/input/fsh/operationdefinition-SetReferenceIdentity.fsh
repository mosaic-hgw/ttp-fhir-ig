Instance: SetReferenceIdentity
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/SetReferenceIdentity"
* name = "SetReferenceIdentity"
* title = "setReferenceIdentity"
* status = #draft
* kind = #operation
* description = "Ändert die Referenz-Identität einer vorhandenen Person (MPI-Eintrag), d.h. diejenigen Daten einer Person, die primäre Gültigkeit haben sollen."
* affectsState = true
* code = #setReferenceIdentity
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
  * name = #mpiId
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Identifikator eines MPI-Eintrags (MPI-ID, Person.identifier)."
  * type = #Identifier
* parameter[+]
  * name = #identityReference
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Referenz zur Identität (Patient-Ressource), die als Referenzidentität gesetzt werden soll."
  * type = #Reference
* parameter[+]
  * name = #comment
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Anmerkung zum Änderungsvorgang"
  * type = #string
* parameter[+]
  * name = #mpiPerson
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Person-Ressource, die den MPI-Eintrag repräsentiert."
  * type = #Person
* parameter[+]
  * name = #identity
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "Patient-Ressource (analog zu Patienten-Identität, referenziert aus dem MPI-Index der Personen-Ressource)."
  * type = #Patient


Instance: Parameters-SetReferenceIdentity-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "domain"
  * valueString = "MIRACUM"
* parameter[+]
  * name = "mpiId"
  * valueIdentifier
    * system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
    * value = "1001000000066"
* parameter[+]
  * name = "identityReference"
  * valueId = "53"
* parameter
  * name = "comment"
  * valueString = "aufgrund neuerer Informationen"


Instance: Parameters-SetReferenceIdentity-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "mpiPerson"
  * resource
    * resourceType = "Person"
    * id = "52"
    * meta.lastUpdated = "2021-06-17T08:28:03.200+02:00"
    * meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Person"
    * system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
    * identifier.value = "1001000000066"
    * managingOrganization.identifier.value = "MIRACUM"
    * active = true
    * link[0].target.reference = "Patient/52"
    * link[+].target.reference = "Patient/53"
    * link[=].assurance = #level4
* parameter[+]
  * name = "identity"
  * resource
    * resourceType = "Patient"
    * id = "52"
    * meta.versionId = "1"
    * meta.lastUpdated = "2021-06-17T08:28:03.200+02:00"
    * meta.source = "dummy_safe_source"
    * meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
    * active = true
    * name.family = "xxxxx"
    * name.given = "Stefanie"
    * gender = #male
    * birthDate = "1962-12-17"
* parameter[+]
  * name = "identity"
  * resource
    * resourceType = "Patient"
    * id = "53"
    * meta.versionId = "1"
    * meta.lastUpdated = "2021-06-17T08:28:24.180+02:00"
    * meta.source = "dummy_safe_source"
    * meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
    * active = true
    * name.family = "xxxxx"
    * name.given = "Stefanie"
    * gender = #male
    * birthDate = "1962-12-16"
