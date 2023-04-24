![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}
## Consent

{{tree:Consent}}

## Zweck
Angepasstes FHIR Consent Profil auf Basis des offiziellen {{link:http://fhir.de/ConsentManagement/StructureDefinition/Consent}} erweitertet um ausgewählte gICS Eigenschaften.

## Beispiel

Consent-Ressource mit mehreren Provision-Elementen (entspricht Repräsentation je Einwilligungsdokument)

{{xml:Resources/fsh-generated/resources/Consent-Consent-example-1.json}}

Consent-Ressource mit je einem Provision-Element (entspricht SignedPolicy):

{{xml:Resources/fsh-generated/resources/Consent-Consent-example-2.json}}


## Suchparameter

**Unterstützt ab TTP-FHIR Gateway Version 2023.1.0**

Die Suche nach Einwilligungsinformationen ist mittels der FHIR Search-API umgesetzt. Die Rückgabe erfolgt dementsprechend in Form eines Bundles vom Typ searchset.

Suchanfragen werden ausschließlich als GET-Requests akzeptiert. Bezüglich des Encodings der URL sei auf die Hinweise unter {{pagelink:ImplementationGuide/markdown/TechnischeGrundlagen.md}} verwiesen.

Unterstützt wird die logische UND-Verknüpfung gemäß [FHIR Search API](http://hl7.org/fhir/r4/search.html), nicht jedoch das logische ODER.
                
**Die Ergebnisse der FHIR Consent Suche sind nicht dokumenten-spezifisch**, da ein Patient unterschiedliche Einwilligungen und auch Widerrufe zu unterschiedlichen Zeitpunkten unterzeichnet haben kann. Somit ändert sich das Set von zulässigen Policies des Patienten ('Signed Policies') über die Zeit regelhaft.
**Je Signed Policy im gICS wird somit eine FHIR Consent Resource erzeugt** und dem SearchSet-Bundle beigefügt. Somit repräsentiert die **Bundle.Total**-Angabe nicht die Anzahl der vorhandenen Einwilligungen, sondern die **Anzahl der jeweiligen SignedPolicies mit Status `permit`.**

<!--
Paging entsprechend der [FHIR Search API](http://hl7.org/fhir/r4/search.html) wird unterstützt, namentlich die link-Elemente im Bundle sowie die Parameter
* _count: (maximale) Anzahl der im Bundle enthaltenen Ressourcen
* _offset: fortlaufende Nummer der ersten im Bundle enthaltenen Ressource

Der Default-Offset ist 0.

Werden weder _count noch _offset angegeben, enthält das Bundle alle Ergebnisse.

Die reine Anzahl der Suchergebnisse ohne deren Übermittlung kann mit Hilfe des Parameters _summary=count abgefragt werden, vgl. http://www.hl7.org/fhir/r4/search.html#count .
-->

Die Suche erfolgt auf dem Consent-Endpoint mittels der nachfolgend beschriebenen Suchparameter.

**Hinweis: Die Angabe des Suchparameters "domain" ist optional. Gleichzeitig empfehlen wir die Nutzung dieses Parameters. Existiert dieser nicht im Request, werden ALLE im gICS vorhandenen Domänen durchsucht, was sich erheblich auf Laufzeiten auswirken kann.**

### Domäne
Der Suchparameter **domain** ist im Rahmen dieses Leitfadens wie folgt definiert:

{{render:https://ths-greifswald.de/fhir/SearchParameter/gics/domain}}

Er wird in der Regel gemeinsam mit weiteren Suchparametern verwendet. Beispiele siehe dort.

### Kategorie
Der Standard-Suchparameter **category** wird unterstützt (vgl. http://www.hl7.org/fhir/consent.html#search)

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&category=2.16.840.1.113883.3.1937.777.24.2.184
```
findet alle Consent-Ressourcen, die einer beliebigen Version des MII Broad Consent (entsprechend der hier beispielhaften OID) entsprechen.

### Typ der Provision (permit, deny)
Der Suchparameter **provisionType**, definiert im Rahmen des [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&provisionType=permit
```

### Provision-Code
Der Suchparameter **provisionCode**, definiert im [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8
```

### Provisions-Zeitraum
Der Suchparameter **provisionPeriod**, definiert im Rahmen des [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Bezüglich des Verhaltens bei der Suche in Elementen vom Datentyp period sei ausdrücklich auf den entsprechenden Abschnitt der FHIR-Spezifikation und die dortigen Beispiele zur Inklusion bzw. Exklusion von Suchergebnissen verwiesen: http://hl7.org/fhir/r4/search.html#date .

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&provisionPeriod=2020-12-15
```
Bei der Verwendung von provisionPeriod ist zu beachten, dass 
`provision.period.start` dem **Beginn der Gültigkeit der Einwilligung** (gemäß gICS: "consentLegalDate") entspricht und 
`provision.period.end` dem errechneten **Gültigkeitsende einer Einwilligungspolicy** im gICS entspricht.

Unterstützt werden bei der Suche nach FHIR Consent-Ressourcen die folgenden Period-Komparatoren:  `eq, ge, gt, le, lt, eb, sa`. Nicht unterstützt werden: `ne, ap`.

#### Abfrage von Einwilligungsständen zu unterschiedlichen Zeitpunkten unter Verwendung von Period-Komparatoren

Nachfolgende Darstellung zeigt die Abfrage von dokumentierten Einwilligungspolicies (A-E), die zu unterschiedlichen Zeitpunkten beginnen und enden.

Zu unterschiedlichen Zeitpunkten (T1 - T5) werden die gültige Einwilligungspolicies mit Hilfe des FHIR Consent Search Parameters `provisionPeriod` abgefragt.

Je verwendetem Komparator unterscheidet sich das erwartete Suchergebnis. Details entnehmen Sie bitte nachstehender Tabelle.
                  

![](https://raw.githubusercontent.com/mosaic-hgw/ttp-fhir-ig/main/ImplementationGuide/media/PolicyStatus_TFCU_Consent_Suche.PNG){: align="center" width="500px"}




### Policy URI (versionsspezifischer MII Broad Consent)
Der Suchparameter **policyUri**, definiert im [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

{{render:https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-policyuri}}

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&policyUri=urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791
```

### Komplexere Beispiele

```
GET [base]/Consent?domain:identifier=MIRACUM&provisionType=permit&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.9
```
findet alle Consent-Ressourcen mit Permit-Provision, bei denen sowohl der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.8 als auch der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.9 gesetzt sind.

```
GET [base]/Consent?domain:identifier=MIRACUM&provisionType=permit&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8,provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.9
```
findet alle Consent-Ressourcen mit Permit-Provision, bei denen der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.8 ode auch der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.9 gesetzt sind.


