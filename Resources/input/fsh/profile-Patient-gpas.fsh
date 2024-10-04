Profile: PatientGpas
Parent: $resPatient
Id: PatientGpas
Title: "Patient (GPAS)"
Description: "Patienten-Profil im Kontext der Pseudonymisierung."
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gpas/Patient"
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
* identifier[bloomfilter] MS
  * system 1.. MS
  * system = "https://ths-greifswald.de/fhir/sid/epix/bloomfilter"
  * value 1.. MS


Instance: PatientGpas-example-1
InstanceOf: PatientGpas
Usage: #example
* identifier[kvid10].value = "A123456789"
* identifier[bloomfilter].value = "SWNoIGJpbiBlaW4gQmxvb21maWx0ZXIuIFZlcnNwcm9jaGVuLg=="
