![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}
## Schrittweises Vorgehen

Das TTP FHIR Gateway wird schrittweise umgesetzt.

### Version 1.0 (Q4 2020)
Die erste Ausbaustufe des Gateway umfasst die Anbindung ausgewählter gPAS-Funktionalitäten zur domänenspezifischen Generierung neuer Pseudonyme und zur Abfrage von Mappings von Pseudonym- und Originalwerten jeweils für Einzelwert und Listen.

Weitere Details unter:
- {{pagelink:ImplementationGuide/markdown/Pseudonymmanagement.md}}

### Version 2.0 (Q2 2021)
Die zweite Ausbaustufe des Gateway umfasst:
- die Anbindung ausgewählter gICS-Funktionalitäten zur FHIR-konformen Bereitstellung der gICS-Inhalte als FHIR-Ressourcen im Rahmen der Arbeiten des Netzwerks Universitätsmedizin (NUM), so wie in der [AG Einwilligungsmanagement](https://simplifier.net/Einwilligungsmanagement) abgestimmt
- die Anbindung ausgewählter Dispatcher-Funktionalitäten für
die Komponente "**fTTP - Wahrscheinlichkeit**" und "**fTTP - Eindeutigkeit (Clearing)**" im Rahmen der Arbeiten des Netzwerks Universitätsmedizin (NUM)
- Vereinheitlichung der Pseudonymisierungsfunktionalitäten auf POST unter Verwendung von Parameters

Weitere Details unter:
- {{pagelink:ImplementationGuide/markdown/Einwilligungsmanagement.md}}
- {{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung.md}}
- {{pagelink:ImplementationGuide/markdown/Pseudonymmanagement,md}}

### Version 2.2.0 (Q4 2022)
Die nächste Ausbaustufe des Gateway umfasst:
- die Anbindung ausgewählter E-PIX-Funktionalitäten zum FHIR-konformen **Anlegen, Aktualisieren und Suchen von Personen** unter Berücksichtigung des Identitätenkonzeptes des E-PIX.

Weitere Details unter:
- {{pagelink:ImplementationGuide/markdown/RecordLinkageundIdentittsmanagement.md}

### Version 2.3.0 (Q1 2023) - AUSBLICK
Die nächste Ausbaustufe des Gateway umfasst:
- die Anbindung weiterer gICS-Funktionalitäten (u.a. Anlegen von Consenten per FHIR, Paging und verbesserte Validierung von Consent-Ressourcen)
- die Anbindung weiterer E-PIX-Funktionalitäten zur Auflösung von doppelten Einträgen per FHIR.
