CodeSystem: ConsentPolicyActor
Id: ConsentPolicyActorCS
Description: "Erweiterbare Kategorisierung von Konsument/Anfragesteller eines Einwilligungsumsetzungsanfrage (Enforcement) bezogen auf einen Einwilligungsbestandteil"
* insert meta-profile
* ^purpose = "Achse 'Akteur' des 'Semantic Consent Code (SCC)' zur optionalen Verwendung"
* ^caseSensitive = true
* ^content = #complete
* #TTP "TTP"
* #TTP ^designation[0].language = #de-DE
* #TTP ^designation[=].value = "Treuhandstelle/Vertrauensstelle"
* #TTP ^designation[+].language = #en-GB
* #TTP ^designation[=].value = "Trusted Third Party"
* #FTTP "FTTP"
* #FTTP ^designation[0].language = #de-DE
* #FTTP ^designation[=].value = "Föderierte Treuhandstelle/Vertrauensstelle"
* #FTTP ^designation[+].language = #en-GB
* #FTTP ^designation[=].value = "Federated Trusted Third Party"
* #RDP "RDP"
* #RDP ^designation[0].language = #de-DE
* #RDP ^designation[=].value = "Forschungsdatenplattform"
* #RDP ^designation[+].language = #en-GB
* #RDP ^designation[=].value = "Research data platform"
* #DIC "DIC"
* #DIC ^designation[0].language = #de-DE
* #DIC ^designation[=].value = "Datenintegrationszentrum"
* #DIC ^designation[+].language = #en-GB
* #DIC ^designation[=].value = "Data integration centre"
* #LIMS "LIMS"
* #LIMS ^designation[0].language = #de-DE
* #LIMS ^designation[=].value = "Laborinformationsmanagementsystem"
* #LIMS ^designation[+].language = #en-GB
* #LIMS ^designation[=].value = "Laboratory information management system"
* #BDMS "BDMS"
* #BDMS ^designation[0].language = #de-DE
* #BDMS ^designation[=].value = "Bilddatenmanagementsystem"
* #BDMS ^designation[+].language = #en-GB
* #BDMS ^designation[=].value = "Image data management system"
* #DTU "DTU"
* #DTU ^designation[0].language = #de-DE
* #DTU ^designation[=].value = "Datentransferstelle"
* #DTU ^designation[+].language = #en-GB
* #DTU ^designation[=].value = "Data transfer unit"
