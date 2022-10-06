![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"} 
## Beschreibung

### Hintergrund
Die Treuhandstelle der Universitätsmedizin Greifswald stellt Open Source Lösungen in den Bereichen [Einwilligungsmanagement](https://www.ths-greifswald.de/gics), [Pseudonymisierung](https://www.ths-greifswald.de/gpas) und [Record Linkage](https://www.ths-greifswald.de/e-pix) für die datenschutzkonforme Durchführung medizinischer Forschungsvorhaben bereit. Für die Umsetzung der informationellen Gewaltenteilung hat sich der [Aufbau einer Unabhängigen Treuhandstelle](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4467617/) (a.k.a Datentreuhänder, kurz: THS, engl. TTP) bewährt. 

Die [Treuhandstellen-Werkzeuge gICS, gPAS und E-PIX](https://www.ths-greifswald.de/forscher/) setzen einheitlich auf Service-orientierte Architekturen (SOAP). Funktionalitäten lassen sich problemlos unter Zuhilfenahme eines Workflow-Managers ([Dispatcher](https://www.ths-greifswald.de/dispatcher-spezifikation-online-verfuegbar/)) orchestrieren und per REST-Interface ansteuern.

Bisherige Forschungsvorhaben (z.B. [NAKO Gesundheitsstudie](https://www.ths-greifswald.de/projekte/nako/), [DZHK e.V.](https://www.ths-greifswald.de/projekte/dzhk/), dem [MII-Konsortium MIRACUM](https://www.miracum.org/miracolix-tools/)) konnten unter Verwendung dieser Web-Services und entsprechender Integrationsarbeit vollumfänglich realisiert werden.

### Ziel 
Um sowohl bestehende Anwenderprojekte als auch künftige Nutzer bei der Umsetzung FHIR-orientierter Infrastrukturen und Prozesse zu unterstützen, soll künftig ein zusätzliches Treuhandstellen-FHIR-Gateway (kurz: TPP-FHIR Gateway) als Mittler von FHIR-spezifischen Infrastrukturkomponenten und den bestehenden THS-Werkzeugen dienen.

Weitere Details unter: {{pagelink:Kontext}}