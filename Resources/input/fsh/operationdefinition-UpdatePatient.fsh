Instance: UpdatePatient
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/UpdatePatient"
* name = "UpdatePatient"
* title = "updatePatient"
* kind = #operation
* description = "Aktualisiert Patienten-Identitäten eines MPI-Eintrags."
* affectsState = true
* code = #updatePatient
* comment = "Aktualisiert Patienten-Identitäten eines MPI-Eintrags."
* system = true
* type = false
* instance = false
* parameter[0].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Matchingdomain"
* parameter[=].type = #string
* parameter[+].name = #source
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Datenquelle"
* parameter[=].type = #string
* parameter[+].name = #mpiIdentifier
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Identifikator des MPI-Eintrags (MPI-ID)"
* parameter[=].type = #Identifier
* parameter[+].name = #identity
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Patient-Ressource (analog zu der Patienten-Identität)"
* parameter[=].type = #Patient
* parameter[+].name = #force
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #matchStatus
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Match-Status aus dem Matching der übermittelten Patienten-Identität"
* parameter[=].type = #Coding
* parameter[=].binding.strength = #required
* parameter[=].binding.valueSet = "https://ths-greifswald.de/fhir/ValueSet/epix/MatchStatus"
* parameter[+].name = #mpiPerson
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Person-Ressource, die den MPI-Eintrag repräsentiert."
* parameter[=].type = #Person
* parameter[+].name = #identity
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Patient-Ressource (analog zu Patienten-Identität, referenziert aus dem MPI-Index der Personen-Ressource)."
* parameter[=].type = #Patient


Instance: Parameters-UpdatePatient-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "domain"
* parameter[=].valueString = "MIRACUM"
* parameter[+].name = "source"
* parameter[=].valueString = "KlinikumXY"
* parameter[+].name = "mpiIdentifier"
* parameter[=].valueIdentifier.system = "https://ths-greifswald.de/fhir/identifier/BeispielMpiId"
* parameter[=].valueIdentifier.value = "1001000000066"
* parameter[+].name = "identity"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter[=].resource.name.family = "xxxxx"
* parameter[=].resource.name.given = "Stefanie"
* parameter[=].resource.birthDate = "1962-12-16"
* parameter[=].resource.address.city = "Spöck"
* parameter[=].resource.address.postalCode = "76297"
* parameter[+].name = "force"
* parameter[=].valueBoolean = false

Instance: Parameters-UpdatePatient-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "matchStatus"
* parameter[=].valueCoding = $MatchStatus#PERFECT_MATCH_WITH_UPDATE
* parameter[+].name = "mpiPerson"
* parameter[=].resource.resourceType = "Person"
* parameter[=].resource.id = "52"
* parameter[=].resource.meta.lastUpdated = "2021-06-17T08:28:03.200+02:00"
* parameter[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Person"
* parameter[=].resource.identifier.system = "https://ths-greifswald.de/fhir/identifier/BeispielMpiId"
* parameter[=].resource.identifier.value = "1001000000066"
* parameter[=].resource.managingOrganization.identifier.value = "MIRACUM"
* parameter[=].resource.active = true
* parameter[=].resource.link[0].target.reference = "Patient/52"
* parameter[=].resource.link[+].target.reference = "Patient/53"
* parameter[=].resource.link[=].assurance = #level4
* parameter[+].name = "identity"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.id = "52"
* parameter[=].resource.meta.versionId = "1"
* parameter[=].resource.meta.lastUpdated = "2021-06-17T08:28:03.200+02:00"
* parameter[=].resource.meta.source = "dummy_safe_source"
* parameter[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter[=].resource.active = true
* parameter[=].resource.name.family = "xxxxx"
* parameter[=].resource.name.given = "Stefanie"
* parameter[=].resource.gender = #male
* parameter[=].resource.birthDate = "1962-12-17"
* parameter[+].name = "identity"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.id = "53"
* parameter[=].resource.meta.versionId = "1"
* parameter[=].resource.meta.lastUpdated = "2021-10-28T09:10:11.120+02:00"
* parameter[=].resource.meta.source = "KlinikumXY"
* parameter[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter[=].resource.active = true
* parameter[=].resource.name.family = "xxxxx"
* parameter[=].resource.name.given = "Stefanie"
* parameter[=].resource.gender = #male
* parameter[=].resource.birthDate = "1962-12-16"
* parameter[=].resource.address.city = "Spöck"
* parameter[=].resource.address.postalCode = "76297"
