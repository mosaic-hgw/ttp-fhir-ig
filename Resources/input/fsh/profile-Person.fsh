Profile: Person
Parent: $resPerson
Id: Person
Title: "Person"
Description: """Allgemeines Personen-Profil. Repräsentiert die reale Person (=> MPI Eintrag), mit beliebig vielen Varianten/Schreibweisen. Letztere werden als Patienten-Identitäten abgebildet (=> Patient-Profil).
Die Referenz-Identität wird als aktuell korrekte Variante festgelegt und durch die Angabe von link.assurance='level4' repräsentiert. Es existiert immer genau 1 Link mit diesem Assurance-Level."""
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Person"
* meta.lastUpdated MS
* extension contains CustomIdatValues named customIdatValues 0..* MS
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* name MS
* name.use MS
* name.text ..0
* name.family MS
* name.given MS
* name.prefix MS
* name.prefix.extension ^slicing.discriminator.type = #value
* name.prefix.extension ^slicing.discriminator.path = "url"
* name.prefix.extension ^slicing.rules = #open
* name.prefix.extension contains $iso21090-EN-qualifier named academic 0..*
* name.prefix.extension[academic].value[x] = #AC (exactly)
* name.prefix.extension[academic].value[x] MS
* name.suffix MS
* telecom ..0
* gender MS
* birthDate MS
* address MS
* address.text ..0
* address.line MS
* address.city MS
* address.district ..0
* address.state MS
* address.postalCode MS
* address.country MS
* address.period ..0
* photo ..0
* managingOrganization 1.. MS
* managingOrganization ^short = "Domäne"
* managingOrganization ^definition = "repräsentiert hier die Domäne, zur der der MPI-Eintrag gehört."
* managingOrganization.identifier 1.. MS
* managingOrganization.identifier.system MS
* managingOrganization.identifier.value 1.. MS
* active MS
* link 1.. MS
* link.target only Reference(Patient)
* link.target MS
* link.target.reference 1.. MS
* link.assurance MS

Instance: Person-example-1
InstanceOf: Person
Usage: #example
* meta.lastUpdated = "2021-06-17T08:28:03.200+02:00"
* meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Person"
* identifier.system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
* identifier.value = "1001000000066"
* managingOrganization.identifier.value = "MIRACUM"
* active = true
* link[0].target.reference = "Patient/52"
* link[+].target.reference = "Patient/53"
* link[=].assurance = #level4
