Profile: ConsentDomain
Parent: $prEinwResearchStudy
Id: ConsentDomain
Title: "Consent Domain"
Description: "Erweitertes Profil der Consent Management Domain Research Study (Arbeitsgruppe Einwilligungsmanagement) zur Abbildung aller relevanten Domänen-Infos für gICS über entsprechende Extensions"
* insert meta-profile
* ^purpose = "Erweitertes Profil der Arbeitsgruppe Einwilligungsmanagement zur Abbildung aller relevanten Domänen-Infos für gICS"
* meta.lastUpdated MS N
* meta.extension contains
    Created named created 0..1 MS
* extension contains
    PolicyVersionFormat named policyVersionFormat 0..1 MS and
    ModuleVersionFormat named moduleVersionFormat 0..1 MS and
    TemplateVersionFormat named templateVersionFormat 0..1 MS and
    ConfigurationProperties named configurationProperties 0..1 MS and
    ExternalProperty named externalProperty 0..* MS and
    ExpirationProperty named expirationProperty 0..* MS
* extension[logo] ^label = "Logo"
* extension[logo] ^short = "Logo der Studie/des Vorhabens"
* extension[logo] ^definition = "Logo zur Darstellung auf Einwilligungsvorlagen"
* extension[logo] ^min = 0
* extension[contextIdentifier] ^label = "SignerIDTypes"
* extension[contextIdentifier] ^short = "Herstellung des Patientenbezugs je Kontext"
* extension[policyVersionFormat] ^short = "Versionierungsformat für Policies einer Consent Domain"
* extension[policyVersionFormat] ^definition = "Versionierungsformat für Policies einer Consent Domain"
* extension[moduleVersionFormat] ^short = "Versionierungsformat für Module einer Consent Domain"
* extension[moduleVersionFormat] ^definition = "Versionierungsformat für Module einer Consent Domain"
* extension[templateVersionFormat] ^short = "Versionierungsformat für Templates einer Consent Domain"
* extension[templateVersionFormat] ^definition = "Versionierungsformat für Templates einer Consent Domain"
* extension[configurationProperties] ^short = "Konfigurationsparameter im XML-Format"
* extension[configurationProperties] ^definition = "Konfigurationsparameter im XML-Format"
* extension[externalProperty] ^label = "externalProperties"
* extension[externalProperty] ^short = "externalProperties"
* extension[externalProperty] ^definition = "Liste frei konfigurierbarer external Properties nach dem KeyValuePrinzip zur Auswertung durch externe Anwendersysteme"
* extension[expirationProperty] ^label = "expirationProperties"
* extension[expirationProperty] ^short = "expirationProperties"
* extension[expirationProperty] ^definition = "Liste von automatisierbaren Ablaufeigenschaften der nach dem KeyValuePrinzip"
* extension[expirationProperty] ^min = 0
* identifier ^short = "Domänen-Name"
* identifier.system = "https://ths-greifswald.de/fhir/gics/" (exactly)
* identifier.system ^short = "Instanzspezifischer Gültigkeitsbereich des Domänen-Namens"
* identifier.system ^definition = "Instanzspezifischer Gültigkeitsbereich des Domänen-Namens"
* identifier.value ^label = "Domänen-Name"
* identifier.value ^short = "Name der Consent Domain"
* identifier.value ^definition = "Maschinenlesbarer Name der Consent Domain, innerhalb der gICS Instanz eindeutig"
* title ^label = "Domänen-Label"
* title ^short = "Label der Consent Domain"
* title ^definition = "Menschenlesbarer Name der Consent Domain, sollte innerhalb der gICS Instanz eindeutig sein."
* status ^label = "Finalized"
* status ^short = "active | in-review"
* status ^definition = "Finalisierungsstatus der Consent Domain Configuration. (Finalized=true ->status=active; Finalized=false->status=in-review)"
* description ^label = "Comment"
* description ^definition = "Administrativer Kommentar zur Zweckbeschreibung der Consent Domain"


Instance: ConsentDomain-example-1
InstanceOf: ConsentDomain
Usage: #example
* meta.extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* extension[contextIdentifier][0].extension[resourceType].valueCoding = $resource-types#Patient
* extension[contextIdentifier][=].extension[system].valueUri = "https://ths-greifswald.de/fhir/gics/identifiers/CaseId"
* extension[contextIdentifier][+].extension[resourceType].valueCoding = $resource-types#Patient
* extension[contextIdentifier][=].extension[system].valueUri = "https://ths-greifswald.de/fhir/gics/identifiers/PatId"
* extension[contextIdentifier][=].extension[resourceType].valueCoding = $resource-types#Patient
* extension[contextIdentifier][=].extension[system].valueUri = "https://ths-greifswald.de/fhir/gics/identifiers/SapId"
* extension[policyVersionFormat].valueString = "major.minor"
* extension[moduleVersionFormat].valueString = "major.minor"
* extension[templateVersionFormat].valueString = "major.minor.char"
* extension[externalProperty][0].extension[key].valueString = "containsHtml"
* extension[externalProperty][=].extension[value].valueString = "true"
* identifier.system = "https://ths-greifswald.de/fhir/gics/"
* identifier.value = "MIRACUM"
* title = "MIRACUM"
* status = #in-review
* description = "Test-Domäne zur Veranschaulichung von FHIR-Aufrufen"

Instance: ConsentDomain-example-2
InstanceOf: ConsentDomain
Usage: #example
* meta.extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* extension[policyVersionFormat].valueString = "major.minor"
* extension[moduleVersionFormat].valueString = "major.minor"
* extension[templateVersionFormat].valueString = "major.minor.char"
* extension[contextIdentifier][0].extension[resourceType].valueCoding = $resource-types#Patient
* extension[contextIdentifier][=].extension[system].valueUri = "https://ths-greifswald.de/fhir/gics/identifiers/caseId"
* extension[contextIdentifier][+].extension[resourceType].valueCoding = $resource-types#Patient
* extension[contextIdentifier][=].extension[system].valueUri = "https://ths-greifswald.de/fhir/gics/identifiers/patId"
* extension[contextIdentifier][+].extension[resourceType].valueCoding = $resource-types#Patient
* extension[contextIdentifier][=].extension[system].valueUri = "https://ths-greifswald.de/fhir/gics/identifiers/studyPSN"
* identifier.system = "https://ths-greifswald.de/fhir/gics/"
* identifier.value = "MII"
* title = "MII"
* status = #active
* description = "Medizininformatik Initiative"

Instance: ConsentDomain-example-3
InstanceOf: ConsentDomain
Usage: #example
* meta.lastUpdated = "2020-10-23T13:44:08.216+00:00"
* meta.extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* extension[contextIdentifier][0].extension[resourceType].valueCoding = $resource-types#Patient
* extension[contextIdentifier][=].extension[system].valueUri = "https://ths-greifswald.de/fhir/gics/identifiers/CaseId"
* extension[contextIdentifier][+].extension[resourceType].valueCoding = $resource-types#Patient
* extension[contextIdentifier][=].extension[system].valueUri = "https://ths-greifswald.de/fhir/gics/identifiers/PatId"
* extension[contextIdentifier][+].extension[resourceType].valueCoding = $resource-types#Patient
* extension[contextIdentifier][=].extension[system].valueUri = "https://ths-greifswald.de/fhir/gics/identifiers/SapId"
* identifier.system = "https://ths-greifswald.de/fhir/gics/"
* identifier.value = "MIRACUM"
* title = "MIRACUM"
* status = #in-review
* description = "Test-Domäne zur Veranschaulichung von FHIR-Aufrufen"
