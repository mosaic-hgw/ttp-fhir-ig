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

<!--
Paging entsprechend der [FHIR Search API](http://hl7.org/fhir/r4/search.html) wird unterstützt, namentlich die link-Elemente im Bundle sowie die Parameter
* _count: (maximale) Anzahl der im Bundle enthaltenen Ressourcen
* _offset: fortlaufende Nummer der ersten im Bundle enthaltenen Ressource

Der Default-Offset ist 0.

Werden weder _count noch _offset angegeben, enthält das Bundle alle Ergebnisse.

Die reine Anzahl der Suchergebnisse ohne deren Übermittlung kann mit Hilfe des Parameters _summary=count abgefragt werden, vgl. http://www.hl7.org/fhir/r4/search.html#count .
-->

Die Suche erfolgt auf dem Consent-Endpoint mittels der nachfolgend beschriebenen Suchparameter.
**Die Verwendung von Pipes ('|') in GET-Requests (zur Separierung von System+Code), kann je nach Server-Konfiguration zu Fehler führen. Verwenden Sie anstelle der "|-Notation" das Äquivalent "%7C"**

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

### Typ der Provision (permit)
Der Suchparameter **provisionType**, definiert im Rahmen des [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

Beispiel:
```
GET [base]/Consent?domain:identifier=MIRACUM&provisionType=permit
```

### Provision-Code
Der Suchparameter **provisionCode**, definiert im [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

*Hinweis: Die Verundung von multiplen provisionCode-Parametern ist im Release 2023.1.0 noch nicht möglich.*                   

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

*Hinweis: Die Verundung von multiplen provisionPeriod-Parametern ist im Release 2023.1.0 noch nicht möglich.*

### Policy URI (versionsspezifischer MII Broad Consent)
Der Suchparameter **policyUri**, definiert im [Implementierungsleitfaden Consent der MII](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent/TechnischeImplementierung/FHIRProfile/Consent.guide.md?version=current), wird unterstützt.

{{render:https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-policyuri}}

Beispiel:
```
GET [base]/Consent?domain:identifier=MII&policyUri=urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791
```

### Komplexere Beispiele

Hinweis: die Pipe '|' wird HTML-codiert als '%7C' verwendet.

```
GET [base]/Consent?domain:identifier=MII&provisionType=permit&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3%7C2.16.840.1.113883.3.1937.777.24.5.3.8
```
findet alle Consent-Ressourcen einer Einwilligungsdomäne 'MII' mit Permit-Provision, bei denen der Provision-Code 2.16.840.1.113883.3.1937.777.24.5.3.8 (entspricht der [TFCU-Policy](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Consent/IGMIIKDSModulConsent-TechnischeImplementierung-Terminologien.html) 'MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU') gesetzt ist. Eine Beispiel-Response ist weiter unten dargestellt.

<!--
```
GET [base]/Consent?domain:identifier=MIRACUM&provisionType=permit&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8&provisionCode=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.9
```
findet alle Consent-Ressourcen mit Permit-Provision, bei denen der Provision-Code 2.16.840.1.113883.3.1937.777.24.5.3.8 ode auch der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.9 gesetzt sind.

-->

### Abfrage von Einwilligungsständen zu unterschiedlichen Zeitpunkten unter Verwendung von Period-Komparatoren

Nachfolgende Darstellung zeigt die Abfrage von dokumentierten Einwilligungspolicies (A-E), die zu unterschiedlichen Zeitpunkten beginnen und enden.

Zu unterschiedlichen Zeitpunkten (T1 - T5) werden die gültige Einwilligungspolicies mit Hilfe des FHIR Consent Search Parameters `provisionPeriod` abgefragt.

Je verwendetem Komparator unterscheidet sich das erwartete Suchergebnis. Details entnehmen Sie bitte nachstehender Tabelle.


![](https://raw.githubusercontent.com/mosaic-hgw/ttp-fhir-ig/main/ImplementationGuide/media/PolicyStatus_TFCU_Consent_Suche.PNG){: align="center" width="600px"}

#### Beispiel Response (MII KDS Consent Profil)
Searchset-Bundle mit FHIR Consent-Ressource je gültiger Policy **gemäß MII KDS Consent-Profil** und Patientenbezug (SignerIdType=Pseudonym). In diesem Fall n=2.

```
<Bundle xmlns="http://hl7.org/fhir">
    <id value="bb5d75c9-c55f-403b-b231-3561150020a8"/>
    <meta>
        <lastUpdated value="2023-04-28T11:01:33.912+02:00"/>
    </meta>
    <type value="searchset"/>
    <total value="2"/>
    <link>
        <relation value="self"/>
        <url value="http://server:8080/ttp-fhir/fhir/gics/Consent?provisionCode=urn%3Aoid%3A2.16.840.1.113883.3.1937.777.24.5.3%7C2.16.840.1.113883.3.1937.777.24.5.3.8"/>
    </link>
    <entry>
        <fullUrl value="http://server:8080/ttp-fhir/fhir/gics/Consent/23db88b1-6e47-4907-8d9f-3fb4b2e97630"/>
        <resource>
            <Consent xmlns="http://hl7.org/fhir">
                <id value="23db88b1-6e47-4907-8d9f-3fb4b2e97630"/>
                <meta>
                    <lastUpdated value="2023-04-27T16:13:49.367+02:00"/>
                    <profile value="https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"/>
                </meta>
                <extension url="http://fhir.de/ConsentManagement/StructureDefinition/DomainReference">
                    <extension url="domain">
                        <valueReference>
                            <reference value="ResearchStudy/91e74202-4a7b-43ba-a9b9-4017634c9540"/>
                        </valueReference>
                    </extension>
                    <extension url="status">
                        <valueCoding>
                            <system value="http://hl7.org/fhir/publication-status"/>
                            <code value="active"/>
                        </valueCoding>
                    </extension>
                </extension>
                <status value="active"/>
                <scope>
                    <coding>
                        <system value="http://terminology.hl7.org/CodeSystem/consentscope"/>
                        <code value="research"/>
                    </coding>
                </scope>
                <category>
                    <coding>
                        <system value="http://loinc.org"/>
                        <code value="57016-8"/>
                    </coding>
                </category>
                <category>
                    <coding>
                        <system value="https://www.medizininformatik-initiative.de/fhir/modul-consent/CodeSystem/mii-cs-consent-consent_category"/>
                        <code value="2.16.840.1.113883.3.1937.777.24.2.184"/>
                    </coding>
                </category>
                <patient>
                    <reference value="Patient/d2850872-1e98-47a5-b345-62f133833094"/>
                    <display value="Pseudonym dic_1H51T"/>
                </patient>
                <dateTime value="2023-04-27T00:00:00+02:00"/>
                <organization>
                    <display value="MII"/>
                </organization>
                <sourceReference>
                    <reference value="QuestionnaireResponse/4ec9a105-1818-4c92-9986-2821d5bab565"/>
                </sourceReference>
                <policy>
                    <uri value="urn:oid:2.16.840.1.113883.3.1937.777.24.2.184"/>
                </policy>
                <policyRule>
                    <coding>
                        <system value="https://ths-greifswald.de/fhir/CodeSystem/gics/Policy/MII"/>
                        <code value="MDAT_wissenschaftlich_nutzen_EU_DSGVO_konform"/>
                        <display value="Bereitstellung umcodierter medizinischer Daten (MDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"/>
                    </coding>
                </policyRule>
                <provision>
                    <type value="permit"/>
                    <period>
                        <start value="2023-04-27T00:00:00+02:00"/>
                        <end value="2053-04-27T00:00:00+02:00"/>
                    </period>
                    <code>
                        <coding>
                            <system value="https://ths-greifswald.de/fhir/CodeSystem/gics/Policy/MII"/>
                            <code value="MDAT_wissenschaftlich_nutzen_EU_DSGVO_konform"/>
                            <display value="Bereitstellung umcodierter medizinischer Daten (MDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"/>
                        </coding>
                    </code>
                    <code>
                        <coding>
                            <system value="urn:oid:2.16.840.1.113883.3.1937.777.24.5.3"/>
                            <code value="2.16.840.1.113883.3.1937.777.24.5.3.8"/>
                            <display value="MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU"/>
                        </coding>
                    </code>
                </provision>
            </Consent>
        </resource>
    </entry>
    <entry>
        <fullUrl value="http://server:8080/ttp-fhir/fhir/gics/Consent/fab23c8e-6a94-49da-acfd-4df51098ca22"/>
        <resource>
            <Consent xmlns="http://hl7.org/fhir">
                <id value="fab23c8e-6a94-49da-acfd-4df51098ca22"/>
                <meta>
                    <lastUpdated value="2023-04-27T16:23:37.048+02:00"/>
                    <profile value="https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"/>
                </meta>
                <extension url="http://fhir.de/ConsentManagement/StructureDefinition/DomainReference">
                    <extension url="domain">
                        <valueReference>
                            <reference value="ResearchStudy/91e74202-4a7b-43ba-a9b9-4017634c9540"/>
                        </valueReference>
                    </extension>
                    <extension url="status">
                        <valueCoding>
                            <system value="http://hl7.org/fhir/publication-status"/>
                            <code value="active"/>
                        </valueCoding>
                    </extension>
                </extension>
                <status value="active"/>
                <scope>
                    <coding>
                        <system value="http://terminology.hl7.org/CodeSystem/consentscope"/>
                        <code value="research"/>
                    </coding>
                </scope>
                <category>
                    <coding>
                        <system value="http://loinc.org"/>
                        <code value="57016-8"/>
                    </coding>
                </category>
                <category>
                    <coding>
                        <system value="https://www.medizininformatik-initiative.de/fhir/modul-consent/CodeSystem/mii-cs-consent-consent_category"/>
                        <code value="2.16.840.1.113883.3.1937.777.24.2.184"/>
                    </coding>
                </category>
                <patient>
                    <reference value="Patient/854f8281-50be-4848-b99d-7ae0aa0da9a0"/>
                    <display value="Pseudonym dic_R3M0V3"/>
                </patient>
                <dateTime value="2023-04-27T11:10:54+02:00"/>
                <organization>
                    <display value="MII"/>
                </organization>
                <sourceReference>
                    <reference value="QuestionnaireResponse/69886267-43c8-4e46-9301-8c44c9f2f6d9"/>
                </sourceReference>
                <policy>
                    <uri value="urn:oid:2.16.840.1.113883.3.1937.777.24.2.184"/>
                </policy>
                <policyRule>
                    <coding>
                        <system value="https://ths-greifswald.de/fhir/CodeSystem/gics/Policy/MII"/>
                        <code value="MDAT_wissenschaftlich_nutzen_EU_DSGVO_konform"/>
                        <display value="Bereitstellung umcodierter medizinischer Daten (MDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"/>
                    </coding>
                </policyRule>
                <provision>
                    <type value="permit"/>
                    <period>
                        <start value="2023-04-27T11:10:54+02:00"/>
                        <end value="2053-04-27T11:10:54+02:00"/>
                    </period>
                    <code>
                        <coding>
                            <system value="https://ths-greifswald.de/fhir/CodeSystem/gics/Policy/MII"/>
                            <code value="MDAT_wissenschaftlich_nutzen_EU_DSGVO_konform"/>
                            <display value="Bereitstellung umcodierter medizinischer Daten (MDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"/>
                        </coding>
                    </code>
                    <code>
                        <coding>
                            <system value="urn:oid:2.16.840.1.113883.3.1937.777.24.5.3"/>
                            <code value="2.16.840.1.113883.3.1937.777.24.5.3.8"/>
                            <display value="MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU"/>
                        </coding>
                    </code>
                </provision>
            </Consent>
        </resource>
    </entry>    
</Bundle>
```
### Beispiel-Ressourcen FHIR Consent (angepasste gICS-Profil)

Consent-Ressource mit mehreren Provision-Elementen (entspricht Repräsentation je Einwilligungsdokument)

{{xml:Resources/fsh-generated/resources/Consent-Consent-example-1.json}}

Consent-Ressource mit je einem Provision-Element (entspricht SignedPolicy):

{{xml:Resources/fsh-generated/resources/Consent-Consent-example-2.json}}
