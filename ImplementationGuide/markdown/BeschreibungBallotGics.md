![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}

Stand 31.01.2024

### Einleitung

Infrastrukturen für vernetzte medizinische Forschung sollen die Datenbestände der einzelnen Klinika für gemeinsame Verbundforschung verfügbar machen und somit die Bearbeitung komplexer und längsschnittlicher medizinischer Fragestellungen anhand von Daten aus der Patientenversorgung ermöglichen.

Die dafür notwendige Erhebung, Verarbeitung und Nutzung von medizinischen Forschungsdaten erfordert im Regelfall vom Betroffenen eine zweckbezogene informierte Einwilligung, den sogenannten Informed Consent (IC) (vgl. Art. 6-11 DSGVO). Im Kontext stetig wachsender nationaler und internationaler Forschungsinitiativen, wie der [Medizininformatik-Initiative (MII)](https://www.medizininformatik-initiative.de/) und dem [Netzwerk Universitätsmedizin (NUM)](https://www.netzwerk-universitaetsmedizin.de/), ist ein zuverlässiges und effizientes Verfahren zur digitalen Verwaltung von Einwilligungen und Widerrufen unabdingbar.

Zu diesem Zweck hat die [Treuhandstelle der Universitätsmedizin Greifswald](https://www.ths-greifswald.de) den [gICS®](https://www.ths-greifswald.de/gics) (Generic Informed Consent Service) als Open Source Lösung im Bereich des Einwilligungsmanagements entwickelt und stellt diese für eine datenschutzkonforme Durchführung medizinischer Forschungsvorhaben bereit.

Ausgewählte Forschungsvorhaben und eine Vielzahl von MII-Standorten in Deutschland setzen den gICS bereits zur Verwaltung von Einwilligungen und Widerrufen ein. gICS® verfügt über eine FHIR-Facade (TTP-FHIR Gateway), um Einwilligungsinhalte und Einwilligungsstände gemäß den Vorgaben der [HL7-Deutschland Arbeitsgruppe für Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/) abfragbar per FHIR-Endpunkt bereitzustellen. Seit [Mai 2023](https://www.ths-greifswald.de/gics/releasenotes) ist der gICS zusätzlich kompatibel zum [MII-Kerndatensatzmodul Consent](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Consent/IGMIIKDSModulConsent.html), indem die Suche nach FHIR-Consent Ressourcen nach Vorgaben der MII Taskforce 'Consent Umsetzung' in Bezug auf zu verwendende Suchparameter (Schnittstelle) und erforderliche Profilvorgaben des Kerndatensatz Consent (Format) unterstützt wird.  

### FHIR Implementierungsleitfaden für das Einwilligungsmanagement gICS
Der hier vorgelegte Leitfaden beschreibt, wie die nötigen fachlichen Operationen zur *Realisierung ausgewählter gICS-Funktionalitäten* auf Basis von HL7 FHIR technisch abgebildet wurden. Erforderliche FHIR-Operations, Profile, Extensions und Terminologien werden in Form des TTP-FHIR Gateway seit 2021 kontinuierlich weiterentwickelt und wurden bereits [publiziert](https://doi.org/10.21203/rs.3.rs-1053445/v1).

### Abschluss des offiziellen Kommentierungsverfahrens im Januar 2024

Das offizielle Kommentierungsverfahren des FHIR Implementierungsleitfadens für gICS wurde am 20. Nov. 2023 angekündigt.
Das Abstimmungsverfahren startete am 11. Dezember 2023 und endete am 21. Januar 2024.

Alle per Github und E-Mail eingereichten Kommentare und Hinweise wurden geprüft, bewertet und zu großen Teilen umgesetzt.
Die kommentierenden Personen haben in jedem Fall eine entsprechende inhaltliche Rückmeldung zu offenen Punkten und Fragen erhalten.

Vielen Dank an alle Teilnehmer des Kommentierungsverfahrens und für die geleistete Unterstützung.