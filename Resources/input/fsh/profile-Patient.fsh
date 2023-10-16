Profile: Patient
Parent: $resPatient
Id: Patient
Title: "Patient"
Description: "Patienten-Identität (Variante/Schreibweise) einer realen Person (=> MPI Eintrag, Person-Profil)."
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* . ^short = "Patienten-Profil zur Übermittlung von angeforderten IDAT"
* . ^comment = "Die per $requestTasks vorgegebenen Element-Bezeichner sind wie folgt gemappt:\r\n\r\ngiven: name.given\r\nfamily: name.family (mit name.use!='maiden' oder nicht vorhanden)\r\nprefix: name.prefix\r\nsuffix: name.suffix\r\nbirthdate: birthDate\r\ngender: gender\r\naddress-line: address.line\r\naddress-city: address.city\r\naddress-postalcode: address.postalCode\r\nbirthplace: extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace').city\r\nmaidenname: name.family (mit name.use='maiden')\r\ndegree: name.prefix (ggf. mit gesetzter Extension http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier mit Code 'AC')\r\nlanguage: communication.language (mit communication.preferred=true)\r\nnationality: extension(http://hl7.org/fhir/StructureDefinition/patient-nationality).valueCode.coding.code oder extension(http://hl7.org/fhir/StructureDefinition/patient-nationality).valueCode.textextension(http://hl7.org/fhir/StructureDefinition/patient-nationality).code.text\r\nmaritalstatus: maritalStatus.coding.code oder maritalStatus.text"
* meta MS
* meta.versionId MS
* meta.lastUpdated MS
* meta.source MS
* extension contains
    $extPatientBirthPlace named birthPlace 0..1 MS and
    $extPatientNationality named nationality 0..1 MS and
    CustomIdatValues named customIdatValues 0..1 MS
* extension[birthPlace].value[x] MS
* extension[birthPlace].value[x].use ..0
* extension[birthPlace].value[x].type ..0
* extension[birthPlace].value[x].text ..0
* extension[birthPlace].value[x].line ..0
* extension[birthPlace].value[x].city 1.. MS
* extension[birthPlace].value[x].district ..0
* extension[birthPlace].value[x].state ..0
* extension[birthPlace].value[x].postalCode ..0
* extension[birthPlace].value[x].country ..0
* extension[birthPlace].value[x].period ..0
* extension[nationality].extension[code].value[x] MS
* extension[nationality].extension[code].value[x] from $iso3166-1-2 (required)
* extension[nationality].extension[code].value[x].coding ..1 MS
* extension[nationality].extension[code].value[x].coding.system 1.. MS
* extension[nationality].extension[code].value[x].coding.code 1.. MS
* extension[nationality].extension[code].value[x].text MS
* extension[customIdatValues] ^label = "customIdatValues"
* extension[customIdatValues] ^short = "Benutzerdefinierter Satz von IDAT Werten"
* extension[customIdatValues] ^definition = "Benutzerdefinierter Satz von von IDAT-Wert für flexible Erweiterung E-PIX IDAT-Datensatz"
* identifier MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* active MS
* name MS
* name.use MS
* name.text ..0
* name.family MS
* name.given MS
* name.prefix MS
* name.prefix.extension contains $iso21090-EN-qualifier named academic 0..1 MS
* name.prefix.extension[academic].value[x] = #AC (exactly)
* name.prefix.extension[academic].value[x] MS
* name.suffix MS
* name.period ..0
* telecom ..0
* gender MS
* birthDate MS
* deceased[x] ..0
* address MS
* address.text ..0
* address.line MS
* address.city MS
* address.district ..0
* address.state MS
* address.state from $bundeslaender (required)
* address.state ^short = "Bundesland"
* address.state ^definition = "Bundesland in ISO-Codierung"
* address.postalCode MS
* address.country MS
* address.country from $iso3166-1-2 (required)
* address.country ^short = "Staat"
* address.country ^definition = "Staat in ISO-Codierung (zweistellig nach ISO-3166-2)"
* address.period ..0
* maritalStatus MS
* maritalStatus ^binding.strength = #preferred
* maritalStatus.coding ..1 MS
* maritalStatus.coding.system 1.. MS
* maritalStatus.coding.code 1.. MS
* maritalStatus.text 1.. MS
* multipleBirth[x] ..0
* photo ..0
* contact ..0
* communication MS
* communication.language MS
* communication.language ^binding.strength = #required
* communication.language.coding ..1 MS
* communication.language.coding.system 1.. MS
* communication.language.coding.code 1.. MS
* communication.language.text MS
* communication.preferred 1.. MS
* communication.preferred = true (exactly)
* generalPractitioner ..0
* managingOrganization ..0
* link ..0


Instance: Patient-example-1
InstanceOf: $prEinwPatient
Usage: #example
* meta.lastUpdated = "2021-05-19T17:50:23.000+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier.type = $cs0203#ANON "Anonymous identifier"
* identifier.system = "https://ths-greifswald.de/fhir/gics/identifiers/Pseudonym"
* identifier.value = "dic_1H51T"

Instance: Patient-example-2
InstanceOf: Patient
Usage: #example
* meta.lastUpdated = "2021-05-19T17:50:23.000+02:00"
* meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* extension[birthPlace].valueAddress.city = "Musterhausen"
* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#DE
* identifier
  * system = "https://ths-greifswald.de/fhir/epix/identifier/SystemXY"
  * value = "ABC_12345"
* name
  * family = "Mustermann"
  * given = "Manfred"
* gender = #male
* birthDate = "1953-12-11"
* address
  * line[0] = "Musterweg 22"
  * city = "Musterstadt"
  * postalCode = "12345"
