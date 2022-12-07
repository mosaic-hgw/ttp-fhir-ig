![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}
#### Consent

{{tree:Consent}}

##### Zweck
Angepasstes FHIR Consent Profil auf Basis des offiziellen {{link:http://fhir.de/ConsentManagement/StructureDefinition/Consent}} erweitertet um ausgewählte gICS Eigenschaften.

##### Beispiel

Erweitertes Beispiel folgt.

Multi Provision Consent:

{{xml:Resources/fsh-generated/resources/Consent-Consent-example-1.json}}

Single Provision Consent:

{{xml:Resources/fsh-generated/resources/Consent-Consent-example-2.json}}


##### Suchparameter
Die Suche nach Einwilligungsinformationen ist mittels der FHIR Search-API umgesetzt. Die Rückgabe erfolgt dementsprechend in Form eines Bundles vom Typ searchset.

Suchanfragen werden ausschließlich als GET-Requests akzeptiert. Bezüglich des Encodings der URL sei auf die Hinweise unter {{pagelink:ImplementationGuide/markdown/TechnischeGrundlagen.md}} verwiesen.

Unterstützt wird die logische UND-Verknüpfung gemäß [FHIR Search API](http://hl7.org/fhir/r4/search.html), nicht jedoch das logische ODER.

Paging entsprechend der [FHIR Search API](http://hl7.org/fhir/r4/search.html) wird unterstützt, namentlich die link-Elemente im Bundle sowie die Parameter
* _count: (maximale) Anzahl der im Bundle enthaltenen Ressourcen
* _offset: fortlaufende Nummer der ersten im Bundle enthaltenen Ressource

Der Default-Offset ist 0.

Werden weder _count noch _offset angegeben, enthält das Bundle alle Ergebnisse.

Die reine Anzahl der Suchergebnisse ohne deren Übermittlung kann mit Hilfe des Parameters _summary=count abgefragt werden, vgl. http://www.hl7.org/fhir/r4/search.html#count .

Die Suche erfolgt auf dem Consent-Endpoint mittels der nachfolgend beschriebenen Suchparameter.

**Hinweis: Die Angabe des Suchparameters "domain" ist verpflichtend. Existiert dieser nicht im Request, wird der HTTP-Statuscode 400 zurück gegeben.**


###### Domain
Der Suchparameter **domain** ist im Rahmen dieses Leitfadens wie folgt definiert:

{{render:https://ths-greifswald.de/fhir/SearchParameter/gics/domain}}

Er wird in der Regel gemeinsam mit weiteren Suchparametern verwendet. Beispiele siehe dort.

###### Kategorie
Der Standard-Suchparameter **category** wird unterstützt (vgl. http://www.hl7.org/fhir/consent.html#search)

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&category=2.16.840.1.113883.3.1937.777.24.2.184
```
findet alle Consent-Ressourcen, die einer beliebigen Version des MII Broad Consent (entsprechend der hier beispielhaften OID) entsprechen.

###### Typ der Provision (permit, deny)
Der Suchparameter **provisionType**, definiert im Rahmen des [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&provisionType=permit
```

###### Provision-Code
Der Suchparameter **provisionCode**, definiert im [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8
```

###### Provisions-Zeitraum
Der Suchparameter **provisionPeriod**, definiert im Rahmen des [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Bezüglich des Verhaltens bei der Suche in Elementen vom Datentyp period sei ausdrücklich auf den entsprechenden Abschnitt der FHIR-Spezifikation und die dortigen Beispiele zur Inklusion bzw. Exklusion von Suchergebnissen verwiesen: http://hl7.org/fhir/r4/search.html#date .

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&provisionPeriod=2020-12-15
```
###### Policy URI (versionsspezifischer MII Broad Consent)
Der Suchparameter **policyUri**, definiert im [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

{{render:https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-policyuri}}

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&policyUri=urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791
```

###### Komplexere Beispiele

```
GET [base]/Consent?domain:identifier=MIRACUM&provisionType=permit&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.9
```
findet alle Consent-Ressourcen mit Permit-Provision, bei denen sowohl der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.8 als auch der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.9 gesetzt sind.

```
GET [base]/Consent?domain:identifier=MIRACUM&provisionType=permit&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8,provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.9
```
findet alle Consent-Ressourcen mit Permit-Provision, bei denen der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.8 ode auch der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.9 gesetzt sind.
