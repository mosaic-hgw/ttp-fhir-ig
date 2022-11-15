CodeSystem: ConsentPolicyPurpose
Id: ConsentPolicyPurposeCS
Description: "Erweiterbare Konkretisierung und/oder Eingrenzung des Anwendungskontext und/oder Geltungsbereich einer ConsentPolicy (Warum/Wofür/Woher/Wohin/Für wen/Wie/...)"
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentPolicyPurpose"
* ^purpose = "Dritte Achse 'Kontext' des 'Semantic Consent Code (SCC)' zur Verwendung als Consent.provision.purpose"
* ^caseSensitive = true
* ^content = #complete
* #health_state "health_state"
* #health_state  ^designation[0].language = #de-DE
* #health_state  ^designation[=].value = "des Gesundheitszustandes"
* #health_state  ^designation[+].language = #en-UK
* #health_state  ^designation[=].value = "the state of health"
* #general_practitioner "general_practitioner"
* #general_practitioner  ^designation[0].language = #de-DE
* #general_practitioner  ^designation[=].value = "des Hausarztes"
* #general_practitioner  ^designation[+].language = #en-UK
* #general_practitioner  ^designation[=].value = "from/to the general practitioner /family doctor"
* #physician "physician"
* #physician  ^designation[0].language = #de-DE
* #physician  ^designation[=].value = "des Arztes"
* #physician  ^designation[+].language = #en-UK
* #physician  ^designation[=].value = "from/to the physician"
* #CRO "CRO"
* #CRO  ^designation[0].language = #de-DE
* #CRO  ^designation[=].value = "von/an eine Contract Research Organization und oder eine klinische Koordinierungsstelle (KKS)"
* #CRO  ^designation[+].language = #en-UK
* #CRO  ^designation[=].value = "from/to a clinical research organization"
* #third_parties "third_parties"
* #third_parties  ^designation[0].language = #de-DE
* #third_parties  ^designation[=].value = "an Dritte /mit Dritten Forschungspartner(n)"
* #third_parties  ^designation[+].language = #en-UK
* #third_parties  ^designation[=].value = "to third parties /with third party research partner(s)"
* #EU_GDPR_LEVEL "EU_GDPR_LEVEL"
* #EU_GDPR_LEVEL  ^designation[0].language = #de-DE
* #EU_GDPR_LEVEL  ^designation[=].value = "an Länder mit EU Datenschutzniveau"
* #EU_GDPR_LEVEL  ^designation[+].language = #en-UK
* #EU_GDPR_LEVEL  ^designation[=].value = "to countries with EU data protection level"
* #non_EU_GDPR_LEVEL "non_EU_GDPR_LEVEL"
* #non_EU_GDPR_LEVEL  ^designation[0].language = #de-DE
* #non_EU_GDPR_LEVEL  ^designation[=].value = "an Länder ohne EU Datenschutzniveau"
* #non_EU_GDPR_LEVEL  ^designation[+].language = #en-UK
* #non_EU_GDPR_LEVEL  ^designation[=].value = "to countries without EU data protection level"
* #industry "industry"
* #industry  ^designation[0].language = #de-DE
* #industry  ^designation[=].value = "an Partner aus dem Bereich der Industrie"
* #industry  ^designation[+].language = #en-UK
* #industry  ^designation[=].value = "to partners from the industrial sector"
* #health_records "health_records"
* #health_records  ^designation[0].language = #de-DE
* #health_records  ^designation[=].value = "durch Übertrag in/aus (elektronischen) Krankenunterlagen/Patientenakten"
* #health_records  ^designation[+].language = #en-UK
* #health_records  ^designation[=].value = "by transfer to/from (electronic) health records"
* #monitoring "monitoring"
* #monitoring  ^designation[0].language = #de-DE
* #monitoring  ^designation[=].value = "im Rahmen eines Monitoring"
* #monitoring  ^designation[+].language = #en-UK
* #monitoring  ^designation[=].value = "as part of a monitoring"
* #non_profit "non_profit"
* #non_profit  ^designation[0].language = #de-DE
* #non_profit  ^designation[=].value = "an Partner aus Non-Profit-Organisationen"
* #non_profit  ^designation[+].language = #en-UK
* #non_profit  ^designation[=].value = "to partners from non-profit organisations"
* #pharma "pharma"
* #pharma  ^designation[0].language = #de-DE
* #pharma  ^designation[=].value = "an eine am Sponsoring beteiligte Pharmafirma"
* #pharma  ^designation[+].language = #en-UK
* #pharma  ^designation[=].value = "to a pharmaceutical company involved in the sponsorship"
* #project_specific "project_specific"
* #project_specific  ^designation[0].language = #de-DE
* #project_specific  ^designation[=].value = "im Rahmen des spezifischen Vorhabens/Projektes oder der spezifischen Studie"
* #project_specific  ^designation[+].language = #en-UK
* #project_specific  ^designation[=].value = "for a  specific research project or study"
* #project_participation "project_participation"
* #project_participation  ^designation[0].language = #de-DE
* #project_participation  ^designation[=].value = "über die Teilnahme der betroffenen Person am spezifischen Vorhaben/Projekt oder einer spezifischen Studie"
* #project_participation  ^designation[+].language = #en-UK
* #project_participation  ^designation[=].value = "on the participation of the data subject in the specific project or a specific study"
* #death "death"
* #death  ^designation[0].language = #de-DE
* #death  ^designation[=].value = "im Falle des Todes der betroffenen Person"
* #death  ^designation[+].language = #en-UK
* #death  ^designation[=].value = "in the event of the death of the person concerned"
* #timely_unrestricted "timely_unrestricted "
* #timely_unrestricted  ^designation[0].language = #de-DE
* #timely_unrestricted  ^designation[=].value = "ohne zeitliche Einschränkung"
* #timely_unrestricted  ^designation[+].language = #en-UK
* #timely_unrestricted  ^designation[=].value = " without timely restriction"
* #timely_restricted "timely_restricted"
* #timely_restricted  ^designation[0].language = #de-DE
* #timely_restricted  ^designation[=].value = "mit zeitlicher Einschränkung"
* #timely_restricted  ^designation[+].language = #en-UK
* #timely_restricted  ^designation[=].value = "with timely restriction"
* #once "once"
* #once  ^designation[0].language = #de-DE
* #once  ^designation[=].value = "einmalig"
* #once  ^designation[+].language = #en-UK
* #once  ^designation[=].value = "once"
* #databases "databases"
* #databases  ^designation[0].language = #de-DE
* #databases  ^designation[=].value = "Informationen anderer Datenbanken"
* #databases  ^designation[+].language = #en-UK
* #databases  ^designation[=].value = "information from other databases"
* #additional_collection "additional_collection"
* #additional_collection  ^designation[0].language = #de-DE
* #additional_collection  ^designation[=].value = "Erhebung zusätzlicher [PERSPEKTIVE]"
* #additional_collection  ^designation[+].language = #en-UK
* #additional_collection  ^designation[=].value = "collection of additional [PERSPECTIVE]"
* #additional_studies "additional_studies"
* #additional_studies  ^designation[0].language = #de-DE
* #additional_studies  ^designation[=].value = "Informationen zu neuen Vorhaben/Projekten oder Studien"
* #additional_studies  ^designation[+].language = #en-UK
* #additional_studies  ^designation[=].value = "information on new projects or studies"
* #additional_findings "additional_findings"
* #additional_findings  ^designation[0].language = #de-DE
* #additional_findings  ^designation[=].value = "Mitteilung von Zusatz- oder Nebenbefunden"
* #additional_findings  ^designation[+].language = #en-UK
* #additional_findings  ^designation[=].value = "notification of additional or incidental findings"
* #HI "HI"
* #HI  ^designation[0].language = #de-DE
* #HI  ^designation[=].value = "von/an Krankenversicherungen"
* #HI  ^designation[+].language = #en-UK
* #HI  ^designation[=].value = "from/to health insurances"
* #PI "PI"
* #PI  ^designation[0].language = #de-DE
* #PI  ^designation[=].value = "von/an Rentenversicherungen"
* #PI  ^designation[+].language = #en-UK
* #PI  ^designation[=].value = "from/to pension insurances"
* #results "results"
* #results  ^designation[0].language = #de-DE
* #results  ^designation[=].value = "Mitteilung von Forschungsergebnissen"
* #results  ^designation[+].language = #en-UK
* #results  ^designation[=].value = "communication of research results"
* #significant "significant"
* #significant  ^designation[0].language = #de-DE
* #significant  ^designation[=].value = "[KONTEXT] mit erheblicher Bedeutung"
* #significant  ^designation[+].language = #en-UK
* #significant  ^designation[=].value = "[CONTEXT] with considerable significance"
* #quality_assurance "quality_assurance "
* #quality_assurance  ^designation[0].language = #de-DE
* #quality_assurance  ^designation[=].value = "zu Zwecken der Qualitätssicherung"
* #quality_assurance  ^designation[+].language = #en-UK
* #quality_assurance  ^designation[=].value = "for quality assurance purposes"
* #scientific "scientific"
* #scientific  ^designation[0].language = #de-DE
* #scientific  ^designation[=].value = "im wissenschaftlichen Kontext"
* #scientific  ^designation[+].language = #en-UK
* #scientific  ^designation[=].value = "in a scientific context"
