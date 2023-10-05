Instance: AddPatient
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPatient"
* name = "AddPatient"
* title = "addPatient"
* status = #draft
* kind = #operation
* description = "Fügt eine oder mehrere Patientenidentitäten hinzu."
* affectsState = true
* code = #addPatient
* comment = "Anlegen und Matching (**Record Linkage**) von übermittelten Patienten-Resourcen auf Basis der personenidentifizierenden Informationen (IDAT) im [E-PIX](https://www.ths-greifswald.de/e-pix). \r\n\r\nDabei werden eine oder mehrere Patienten-Identitäten im E-PIX erzeugt. Nach Abschluss des Record Linkage Prozesses werden für jede übermittelte Patienten-Resource der **Master Person Index (MPI ID)**, die MPI-Zuordnung (Person-Ressource) sowie der Match-Status und vorhandene Identitäten zurückgegeben."
* system = true
* type = false
* instance = false
* parameter[0].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Matching-Domaene"
* parameter[=].type = #string
* parameter[+].name = #source
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Datenquelle"
* parameter[=].type = #string
* parameter[+].name = #identity
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Patient-Ressource (analog zu Patienten-Identität)."
* parameter[=].type = #Patient
* parameter[+].name = #saveAction
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Coding
* parameter[=].binding.strength = #required
* parameter[=].binding.valueSet = "https://ths-greifswald.de/fhir/ValueSet/epix/SaveAction"
* parameter[+].name = #forceReferenceUpdate
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #matchResult
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Match-Ergebnis zu einer übergebenen Patienten-Identität. Für jeden im Request übergebenen identity-Parameter wird genau ein matchResult zurück gegeben."
* parameter[=].part[0].name = #sourceIdentity
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Die im Request übergebene, unveränderte Patienten-Ressource, auf die sich dieses Match-Ergebnis bezieht."
* parameter[=].part[=].type = #Patient
* parameter[=].part[+].name = #matchStatus
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Match-Status aus dem Matching der übermittelten Patienten-Identität"
* parameter[=].part[=].type = #Coding
* parameter[=].part[=].binding.strength = #required
* parameter[=].part[=].binding.valueSet = "https://ths-greifswald.de/fhir/ValueSet/epix/MatchStatus"
* parameter[=].part[+].name = #mpiPerson
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Person-Ressource, die den MPI-Eintrag repräsentiert."
* parameter[=].part[=].type = #Person
* parameter[=].part[+].name = #identity
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "*"
* parameter[=].part[=].documentation = "Patient-Ressource (analog zu Patienten-Identität, referenziert aus dem MPI-Index der Personen-Ressource)."
* parameter[=].part[=].type = #Patient


Instance: Parameters-AddPatient-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "domain"
* parameter[=].valueString = "MIRACUM"
* parameter[+].name = "source"
* parameter[=].valueString = "KlinikumXY"
* parameter[+].name = "identity"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter[=].resource.identifier.system = "https://ths-greifswald.de/fhir/epix/identifier/SystemXY"
* parameter[=].resource.identifier.value = "ABC_12345"
* parameter[=].resource.name.family = "xxxxx"
* parameter[=].resource.name.given = "Stefanie"
* parameter[=].resource.birthDate = "1962-12-17"
* parameter[=].resource.address[0].city = "Spöck"
* parameter[=].resource.address[=].postalCode = "76297"
* parameter[=].resource.address[+].line = "Musterstrasse 1"
* parameter[=].resource.address[=].city = "Greifswald"
* parameter[=].resource.address[=].postalCode = "17487"
* parameter[+].name = "saveAction"
* parameter[=].valueCoding = $SaveAction#SAVE_ALL
* parameter[+].name = "forceReferenceUpdate"
* parameter[=].valueBoolean = false

Instance: Parameters-AddPatient-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter.name = "matchResult"
* parameter.part[0].name = "sourceIdentity"
* parameter.part[=].resource.resourceType = "Patient"
* parameter.part[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter.part[=].resource.name.family = "xxxxx"
* parameter.part[=].resource.name.given = "Stefanie"
* parameter.part[=].resource.birthDate = "1962-12-17"
* parameter.part[+].name = "matchStatus"
* parameter.part[=].valueCoding = $MatchStatus#MATCH
* parameter.part[+].name = "mpiPerson"
* parameter.part[=].resource.resourceType = "Person"
* parameter.part[=].resource.id = "52"
* parameter.part[=].resource.meta.lastUpdated = "2021-06-17T08:28:03.200+02:00"
* parameter.part[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Person"
* parameter.part[=].resource.identifier.system = "https://ths-greifswald.de/fhir/identifier/MPI"
* parameter.part[=].resource.identifier.value = "1001000000066"
* parameter.part[=].resource.managingOrganization.identifier.value = "MIRACUM"
* parameter.part[=].resource.active = true
* parameter.part[=].resource.link[0].target.reference = "Patient/52"
* parameter.part[=].resource.link[+].target.reference = "Patient/53"
* parameter.part[=].resource.link[=].assurance = #level4
* parameter.part[+].name = "identity"
* parameter.part[=].resource.resourceType = "Patient"
* parameter.part[=].resource.id = "52"
* parameter.part[=].resource.meta.versionId = "1"
* parameter.part[=].resource.meta.lastUpdated = "2021-06-17T08:28:03.200+02:00"
* parameter.part[=].resource.meta.source = "dummy_safe_source"
* parameter.part[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter.part[=].resource.active = true
* parameter.part[=].resource.identifier.system = "https://ths-greifswald.de/fhir/epix/identifier/SystemXY"
* parameter.part[=].resource.identifier.value = "ABC_12345"
* parameter.part[=].resource.name.family = "xxxxx"
* parameter.part[=].resource.name.given = "Stefanie"
* parameter.part[=].resource.gender = #male
* parameter.part[=].resource.birthDate = "1962-12-17"
* parameter.part[+].name = "identity"
* parameter.part[=].resource.resourceType = "Patient"
* parameter.part[=].resource.id = "53"
* parameter.part[=].resource.meta.versionId = "1"
* parameter.part[=].resource.meta.lastUpdated = "2021-06-17T08:28:24.180+02:00"
* parameter.part[=].resource.meta.source = "dummy_safe_source"
* parameter.part[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter.part[=].resource.active = true
* parameter.part[=].resource.name.family = "xxxxx"
* parameter.part[=].resource.name.given = "Stefanie"
* parameter.part[=].resource.gender = #male
* parameter.part[=].resource.birthDate = "1962-12-16"
