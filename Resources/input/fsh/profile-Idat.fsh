Profile: Idat
Parent: $resPatient
Id: Idat
Title: "IDAT"
Description: "Patienten-Profil zur Übermittlung von angeforderten IDAT an die fTTP für den Clearing-Prozess."
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/dispatcher/Patient/Idat"
* . ^short = "Patienten-Profil zur Übermittlung von angeforderten IDAT"
* . ^comment = "Die per $requestTasks vorgegebenen Element-Bezeichner sind wie folgt gemappt:\r\n\r\ngiven: name.given\r\nfamily: name.family (mit name.use!='maiden' oder nicht vorhanden)\r\nprefix: name.prefix\r\nsuffix: name.suffix\r\nbirthdate: birthDate\r\ngender: gender\r\naddress-line: address.line\r\naddress-city: address.city\r\naddress-postalcode: address.postalCode\r\nbirthplace: extension('http://hl7.org/fhir/StructureDefinition/patient-birthPlace').city\r\nmaidenname: name.family (mit name.use='maiden')\r\ndegree: name.prefix (ggf. mit gesetzter Extension http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier mit Code 'AC')\r\nlanguage: communication.language (mit communication.preferred=true)\r\nnationality: extension(http://hl7.org/fhir/StructureDefinition/patient-nationality).valueCode.coding.code oder extension(http://hl7.org/fhir/StructureDefinition/patient-nationality).valueCode.textextension(http://hl7.org/fhir/StructureDefinition/patient-nationality).code.text\r\nmaritalstatus: maritalStatus.coding.code oder maritalStatus.text"
* extension contains
  $extPatientBirthPlace named birthPlace 0..1 MS and
  $extPatientNationality named nationality 0..1 MS
* extension[birthPlace].value[x] MS N
* extension[birthPlace].value[x].use ..0 N
* extension[birthPlace].value[x].type ..0 N
* extension[birthPlace].value[x].text ..0 N
* extension[birthPlace].value[x].line ..0 N
* extension[birthPlace].value[x].city 1.. MS N
* extension[birthPlace].value[x].district ..0 N
* extension[birthPlace].value[x].state ..0 N
* extension[birthPlace].value[x].postalCode ..0 N
* extension[birthPlace].value[x].country ..0 N
* extension[birthPlace].value[x].period ..0
* extension[nationality].extension[code].value[x] MS N
* extension[nationality].extension[code].value[x] from $iso3166-1-2 (required)
* extension[nationality].extension[code].value[x].coding ..1 MS
* extension[nationality].extension[code].value[x].coding.system 1.. MS N
* extension[nationality].extension[code].value[x].coding.code 1.. MS N
* extension[nationality].extension[code].value[x].text MS N
* identifier ..0
* active ..0 N
* name MS
* name.use MS N
* name.text ..0 N
* name.family MS N
* name.given MS N
* name.prefix MS N
* name.prefix.extension contains $iso21090-EN-qualifier named academic 0..1 MS
* name.prefix.extension[academic].value[x] = #AC (exactly)
* name.prefix.extension[academic].value[x] MS N
* name.suffix MS N
* name.period ..0
* telecom ..0
* gender MS N
* birthDate MS N
* deceased[x] ..0 N
* address MS
* address.text ..0 N
* address.line MS N
* address.city MS N
* address.district ..0 N
* address.state ..0 N
* address.postalCode MS N
* address.country ..0 N
* address.period ..0
* maritalStatus MS
* maritalStatus ^binding.strength = #required
* maritalStatus.coding ..1 MS
* maritalStatus.coding.system 1.. MS N
* maritalStatus.coding.code 1.. MS N
* maritalStatus.text 1.. MS N
* multipleBirth[x] ..0 N
* photo ..0
* contact ..0
* communication MS
* communication.language MS
* communication.language ^binding.strength = #required
* communication.language.coding ..1 MS
* communication.language.coding.system 1.. MS N
* communication.language.coding.code 1.. MS N
* communication.language.text MS N
* communication.preferred 1.. MS N
* communication.preferred = true (exactly)
* generalPractitioner ..0
* managingOrganization ..0
* link ..0
