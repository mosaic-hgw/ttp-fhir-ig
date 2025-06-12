CodeSystem: ConsentPolicyActor
Id: ConsentPolicyActorCS
Description: "Expandable categorisation of consumer/requestor of a consent enforcement request  related to a specific consent component (e.g. policy or module)"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentPolicyActor"
* ^version = "1.2"
* ^purpose = "Axis 'actor' of the 'Semantic Consent Code (SCC)' for optional use"
* ^caseSensitive = true
* ^content = #complete
* #LIMS "LIMS"
* #LIMS ^designation[0].language = #de-DE
* #LIMS ^designation[=].value = "Laborinformationsmanagementsystem"
* #LIMS ^designation[+].language = #en-UK
* #LIMS ^designation[=].value = "Laboratory information management system"
* #TTP "TTP"
* #TTP ^designation[0].language = #de-DE
* #TTP ^designation[=].value = "Treuhandstelle/Vertrauensstelle"
* #TTP ^designation[+].language = #en-UK
* #TTP ^designation[=].value = "Trusted Third Party"
* #DTU "DTU"
* #DTU ^designation[0].language = #de-DE
* #DTU ^designation[=].value = "Datentransferstelle"
* #DTU ^designation[+].language = #en-UK
* #DTU ^designation[=].value = "Data Transfer Unit"
* #BDMS "BDMS"
* #BDMS ^designation[0].language = #de-DE
* #BDMS ^designation[=].value = "Bilddatenmanagementsystem"
* #BDMS ^designation[+].language = #en-UK
* #BDMS ^designation[=].value = "Image data management system"
* #RDP "RDP"
* #RDP ^designation[0].language = #de-DE
* #RDP ^designation[=].value = "Forschungsplattform"
* #RDP ^designation[+].language = #en-UK
* #RDP ^designation[=].value = "Research data platform"
* #DIC "DIC"
* #DIC ^designation[0].language = #de-DE
* #DIC ^designation[=].value = "Datenintegrationszenrum"
* #DIC ^designation[+].language = #en-UK
* #DIC ^designation[=].value = "Data integration centre"
* #FTTP "FTTP"
* #FTTP ^designation[0].language = #de-DE
* #FTTP ^designation[=].value = "Föderierte Treuhandstelle/Vertrauensstelle"
* #FTTP ^designation[+].language = #en-UK
* #FTTP ^designation[=].value = "Federated Trusted Third Party"
