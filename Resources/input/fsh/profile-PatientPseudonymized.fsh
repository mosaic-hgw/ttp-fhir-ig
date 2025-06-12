Profile: PatientPseudonymized
Parent: $resPatient
Id: PatientPseudonymized
Title: "Patient pseudonymisiert"
Description: "Patienten-Profil im Kontext der Pseudonymisierung."
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/fttp/PatientPseudonymized"
* . ^short = "Patienten-Profil im Kontext der Pseudonymisierung."
* id 1.. MS
* identifier MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains
    kvid10 0..1 MS and
    bloomfilter 0..1 MS
* identifier[kvid10] MS
  * system 1.. MS
  * system = $nsKvid10
  * value 1.. MS
* identifier[bloomfilter] only IdentifierBloomfilter


Instance: PatientPseudonymized-example-1
InstanceOf: PatientPseudonymized
Usage: #example
* identifier[kvid10].value = "A123456789"
* identifier[bloomfilter]
  * type = BloomfilterTypeCS#A
  * value = "SWNoIGJpbiBlaW4gQmxvb21maWx0ZXIuIFZlcnNwcm9jaGVuLg=="
