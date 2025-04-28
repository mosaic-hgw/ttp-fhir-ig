![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}
## Consent

### Zweck
Angepasstes FHIR Consent Profil auf Basis des offiziellen [Consent-Profils](https://ig.fhir.de/einwilligungsmanagement/stable/Consent.html) der Hl7 AG 'Einwilligungsmanagement' erweitertet um ausgewählte gICS Eigenschaften.

{{tree:Consent}}

### Suchparameter

**Unterstützt ab TTP-FHIR Gateway Version 2023.1.0**

Die Suche nach Einwilligungsinformationen ist mittels der FHIR Search-API umgesetzt. Die Rückgabe erfolgt dementsprechend in Form eines Bundles vom Typ searchset.

Die zurückgegebenen FHIR Consent-Ressourcen entsprechen dem [MII KDS Consent Profil](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Consent/IGMIIKDSModulConsent-TechnischeImplementierung-FHIRProfile-Consent.html)

Suchanfragen werden ausschließlich als GET-Requests akzeptiert. Bezüglich des Encodings der URL sei auf die Hinweise unter {{pagelink:ImplementationGuide/markdown/TechnischeGrundlagen.md}} verwiesen.

Unterstützt wird die logische UND-Verknüpfung der einzelnen Parameter gemäß [FHIR Search API](http://hl7.org/fhir/r4/search.html), nicht jedoch das logische ODER.

**Die Ergebnisse der FHIR Consent Suche sind nicht dokumenten-spezifisch**, da ein Patient unterschiedliche Einwilligungen und auch Widerrufe zu unterschiedlichen Zeitpunkten unterzeichnet haben kann. Somit ändert sich das Set von zulässigen Policies des Patienten ('Signed Policies') über die Zeit regelhaft.
**Je Signed Policy im gICS wird somit eine FHIR Consent Resource erzeugt** und dem SearchSet-Bundle beigefügt. Somit repräsentiert die **Bundle.Total**-Angabe nicht die Anzahl der vorhandenen Einwilligungen, sondern die **Anzahl der jeweiligen SignedPolicies mit Status `permit`.**

Paging entsprechend der [FHIR Search API](http://hl7.org/fhir/r4/search.html) wird ab TTP-FHIR Gateway Version 2023.1.1 unterstützt, namentlich die Parameter
* _count: (maximale) Anzahl der im Bundle enthaltenen Ressourcen
* _offset: fortlaufende Nummer der ersten im Bundle enthaltenen Ressource

Der Default-Offset ist 0. Der Default-Count ist 100. Negative Werte für _offset und _count sind nicht erlaubt.
Werden weder _count noch _offset angegeben, enthält das Bundle maximal 100 Ergebnisse (Default-Count=100, Default-Offset=0).

Die Suche erfolgt auf dem Consent-Endpoint mittels der nachfolgend beschriebenen Suchparameter.
**Die Verwendung von Pipes ('|') in GET-Requests (zur Separierung von System+Code), kann je nach Server-Konfiguration zu Fehler führen. Verwenden Sie anstelle der "|-Notation" das Äquivalent "%7C"**

**Hinweis: Die Angabe des Suchparameters "domain" ist optional. Gleichzeitig empfehlen wir die Nutzung dieses Parameters. Existiert dieser nicht im Request, werden ALLE im gICS vorhandenen Domänen durchsucht, was sich erheblich auf Laufzeiten auswirken kann.**

### Domäne
Der Suchparameter **domain** ist im Rahmen dieses Leitfadens wie folgt definiert:

{{render:https://ths-greifswald.de/fhir/SearchParameter/gics/domain}}

Er wird in der Regel gemeinsam mit weiteren Suchparametern verwendet. Beispiele siehe dort.

### Kategorie
Der Standard-Suchparameter **category** wird unterstützt (vgl. http://www.hl7.org/fhir/consent.html#search)

Beispiel 1:
```
GET [base]/Consent?domain:identifier=MIRACUM&category=2.16.840.1.113883.3.1937.777.24.2.184
```
findet alle Consent-Ressourcen, die einer beliebigen Version des MII Broad Consent (entsprechend der hier beispielhaften OID) entsprechen.

Beispiel 2:
```
GET [base]/Consent?domain:identifier=MIRACUM&category=http://fhir.de/ConsentManagement/CodeSystem/ResultType|consent-status
```
findet Consent-Ressourcen des (ggf. aus mehreren Einwilligungs-Fragebögen errechneten) Consent-Status-Typs.

### Änderungen mit dem Release 2024.3.0 
- Es wird Consent.Category *ResultType" unterstützt. Dies ist abwärtskompatibel. Default ist  *ResultType.POLICY*.
- Umstellung internes *DEFAULT-CONSENT-Profile* ist das [Consent-Profil der HL7-D AG Einwilligungsmanagement](https://simplifier.net/guide/Einwilligungsmanagement/Consent?version=current). Bisheriger Default war das gICS-Consent-Profil.
- Das gewünschte Ausgabe-Profil für Consent-Resourcen kann auf Domain und Template-Ebene mittels externalProperty *fhirForceProfileConsent* forciert werden. Mehr dazu in der dem Release beiliengenden ReadMe.

### Provision-Code
Der Suchparameter **mii-provision-provision-code**, definiert im [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

*Hinweis: Die Verundung von multiplen mii-provision-provision-code-Parametern ist im Release 2023.1.0 noch nicht möglich.*                   

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8
```

### Typ der Provision (permit)
Der Suchparameter **mii-provision-provision-type**, definiert im Rahmen des [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&mii-provision-provision-type=permit
```

### Typ der Provision einer bestimmten, durch einen Code definierten, Provision
Der [composite Suchparameter](http://www.hl7.org/fhir/r4/search.html#combining) **mii-provision-provision-code-type**, definiert im Rahmen des [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&mii-provision-provision-code-type=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8$permit
```

### Provisions-Zeitraum
Der Suchparameter **mii-provision-provision-period**, definiert im Rahmen des [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Bezüglich des Verhaltens bei der Suche in Elementen vom Datentyp period sei ausdrücklich auf den entsprechenden Abschnitt der FHIR-Spezifikation und die dortigen Beispiele zur Inklusion bzw. Exklusion von Suchergebnissen verwiesen: http://hl7.org/fhir/r4/search.html#date .

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&mii-provision-provision-period=2020-12-15
```
Bei der Verwendung von mii-provision-provision-period ist zu beachten, dass
`provision.period.start` dem **Beginn der Gültigkeit der Einwilligung** (gemäß gICS: "consentLegalDate") entspricht und
`provision.period.end` dem errechneten **Gültigkeitsende einer Einwilligungspolicy** im gICS entspricht.

Unterstützt werden bei der Suche nach FHIR Consent-Ressourcen die folgenden Period-Komparatoren:  `eq, ge, gt, le, lt, eb, sa`. Nicht unterstützt werden: `ne, ap`.

*Hinweis: Die Verundung von multiplen mii-provision-provision-period-Parametern ist im Release 2023.1.0 noch nicht möglich.*

### Provisions-Zeitraum einer bestimmten, durch einen Code definierten, Provision
Der [composite Suchparameter](http://www.hl7.org/fhir/r4/search.html#combining) **mii-provision-provision-code-period**, definiert im Rahmen des [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Beispiel:
```
GET [base]/Consent?mii-provision-provision-code-period=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8$2020-12-15
```

### Policy URI (versionsspezifischer MII Broad Consent)
Der Suchparameter **mii-policy-uri**, definiert im [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Beispiel:
```
GET [base]/Consent?domain:identifier=MII&mii-policy-uri=urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791
```

### Inkludieren der Provenance-Information
Das Inkludieren der Herkunftsinformationen zu einer Consent-Ressource ist mittels reverse Include der entsprechenden Provenance-Ressource möglich.
Die in diesem Kontext verwendeten UUIDs der Ressourcen sind volatil, d.h. es wird nicht garantiert, dass die entsprechenden Ressourcen im Anschluss an die Response unter Verwendung der betreffenden UUID abrufbar sind.
Vgl. auch entsprechendes Response-Beispiel unten.

Beispiel:
```
GET [base]/Consent?domain:identifier=MII&mii-policy-uri=urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791&_revinclude=Provenance:target
```


### Komplexere Beispiele

Hinweis: die Pipe '|' wird HTML-codiert als '%7C' verwendet.

```
GET [base]/Consent?domain:identifier=MII&mii-provision-provision-type=permit&mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3%7C2.16.840.1.113883.3.1937.777.24.5.3.8
```
findet alle Consent-Ressourcen einer Einwilligungsdomäne 'MII' mit Permit-Provision, bei denen der Provision-Code 2.16.840.1.113883.3.1937.777.24.5.3.8 (entspricht der [TFCU-Policy](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Consent/IGMIIKDSModulConsent-TechnischeImplementierung-Terminologien.html) 'MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU') gesetzt ist. Eine Beispiel-Response ist weiter unten dargestellt.

### Abfrage von Einwilligungsständen zu unterschiedlichen Zeitpunkten unter Verwendung von Period-Komparatoren

Nachfolgende Darstellung zeigt die Abfrage von dokumentierten Einwilligungspolicies (A-E), die zu unterschiedlichen Zeitpunkten beginnen und enden.

Zu unterschiedlichen Zeitpunkten (T1 - T5) werden die gültige Einwilligungspolicies mit Hilfe des FHIR Consent Search Parameters `mii-provision-provision-period` abgefragt.

Je verwendetem Komparator unterscheidet sich das erwartete Suchergebnis. Details entnehmen Sie bitte nachstehender Tabelle.


![](https://raw.githubusercontent.com/mosaic-hgw/ttp-fhir-ig/main/ImplementationGuide/media/PolicyStatus_TFCU_Consent_Suche.PNG){: align="center" width="600px"}

#### Beispiel Response (MII KDS Consent Profil)
Searchset-Bundle mit FHIR Consent-Ressource je gültiger Policy **gemäß MII KDS Consent-Profil** und Patientenbezug (SignerIdType=Pseudonym). In diesem Fall n=2.

{{xml:Resources/fsh-generated/resources/Bundle-Consent-Bundle-example-1.json}}

#### Beispiel Response (Reverse Include der Provenance)

{{xml:Resources/fsh-generated/resources/Bundle-Consent-Bundle-example-2.json}}

### Beispiel-Ressourcen FHIR Consent (angepasstes gICS-Profil)

Consent-Ressource mit mehreren Provision-Elementen (entspricht Repräsentation je Einwilligungsdokument)

{{xml:Resources/fsh-generated/resources/Consent-Consent-example-1.json}}

Consent-Ressource mit je einem Provision-Element (entspricht SignedPolicy):

{{xml:Resources/fsh-generated/resources/Consent-Consent-example-2.json}}
