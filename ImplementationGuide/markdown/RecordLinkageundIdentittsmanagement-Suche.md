#### {{page-title}}

**Unterstützt ab TTP-FHIR Gateway Version 2.2.0**

Die Suche nach E-PIX-Personen bzw. den zugeordneten Patienten-Identitäten ist mittels der FHIR Search-API umgesetzt. Die Rückgabe erfolgt dementsprechend in Form eines Bundles vom Typ searchset.

Suchanfragen werden ausschließlich als GET-Requests akzeptiert. Bezüglich des Encodings der URL sei auf die Hinweise unter {{pagelink:ImplementationGuide/markdown/TechnischeGrundlagen.md}} verwiesen.

Unterstützt wird die logische UND-Verknüpfung gemäß [FHIR Search API](http://hl7.org/fhir/r4/search.html), nicht jedoch das logische ODER.

Paging entsprechend der [FHIR Search API](http://hl7.org/fhir/r4/search.html) wird ab TTP-FHIR Gateway Version 2023.1.1 unterstützt, namentlich die Parameter
* _count: (maximale) Anzahl der im Bundle enthaltenen Ressourcen
* _offset: fortlaufende Nummer der ersten im Bundle enthaltenen Ressource

Der Default-Offset ist 0. Der Default-Count ist 100. Negative Werte für _offset und _count sind nicht erlaubt.
Werden weder _count noch _offset angegeben, enthält das Bundle maximal 100 Ergebnisse (Default-Count=100, Default-Offset=0).

Die Default-Sortierung im Bundle ist nach Person.id aufsteigend.

Eine PDQ/MPI Suche in Kombination mit Paging wird nicht unterstützt.

Die Suche erfolgt auf dem Person-Endpoint mittels der folgenden Suchparameter der Person-Ressource bzw. der referenzierten Patient-Ressourcen (Chaining):

* organization: enthält die E-PIX-Domäne
* identifier: Identifikator der Person (MPI, z.B. https://ths-greifswald.de/fhir/epix/identifier/MPI%7C0011000000011)
* Chained Suchparameter auf Patient (patient.xxx): birthdate, family, gender, given (vgl. [FHIR-Spezifikation](http://www.hl7.org/fhir/r4/patient.html#search)).

**Hinweis: Die Angabe des Suchparameters "organization" ist verpflichtend. Existiert dieser nicht im Request, wird der HTTP-Statuscode 400 zurück gegeben.**

Mit Hilfe der Include-Funktionalität der FHIR-Suche wird auch die gleichzeitige Rückgabe von Person- und Patient-Ressourcen unterstützt.

Eine direkte Suche auf dem Patient-Endpunkt des Servers wird nicht unterstützt und resultiert im HTTP-Statuscode 403.

Etwaige lokale Identifier einer Identität (Patient) sind nicht Teil der Suchergebnismenge von Personen (Person). Die Person verweist jedoch auf die einzelnen Identitäten. Der Einzelaufruf der Identitäten ermöglicht dann das Ermitteln der zugeordneten lokalen Identifier.

##### **Beispiele**

Suche E-PIX-Personen (FHIR: Person) sowie zugeordnete Identitäten (FHIR: Patient) zu einer bestimmten Domäne:

`
GET [base]/Person?organization:identifier=MIRACUM&_include=Person:link
`

Suche E-PIX-Personen sowie zugeordnete Identitäten zu einer bestimmten MPI-ID:

`
GET [base]/Person?organization:identifier=MIRACUM&identifier=https://ths-greifswald.de/fhir/epix/identifier/MPI%7C1001000000066&_include=Person:link
`

Suche E-PIX-Personen sowie zugeordnete Identitäten zu bestimmten identifizierenden Patientendaten:

`
GET [base]/Person?organization:identifier=MIRACUM&patient.family=Mustermann&patient.given=Max&_include=Person:link
`

Suche auf 10 Ergebnisse beschränkt und ab der 11. Ressource der Ergebnisliste:
`
GET [base]/Person?organization:identifier=MIRACUM&_include=Person:link&_count=10&_offset=10
`
