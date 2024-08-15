#### {{page-title}}

**Unterstützt ab TTP-FHIR Gateway Version 2024.3.0**

Legt eine neue Einwilligung im gICS für ein spezifisches Forschungsvorhaben (Domain) mit Opt-Out-Kontext auf Basis der übermittelten Informationen gemäß den Profil-Vorgaben der [HL7 Deutschland Arbeitsgruppe "Einwilligungsmanagement"](https://ig.fhir.de/einwilligungsmanagement/stable/) an:
- [Personenbezug](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html)

Zurückgegeben wird der auf dieser Basis errechnete strukturierte Consent im Bundle gemäß der gICS-spezifischen Profilvorgaben.

##### **Voraussetzung**
- Spezifizierte Einwilligungsdomäne muss angelegt sein
- In der Patient-Resource verwendete Angaben des Identifier.system müssen in Form von SignerIdTypes, wie z.B. 'Pseudonym','CaseId','StudyPsn' in der entsprechenden Domäne im gICS konfiguriert sein
- eventuell vorhandene IDs (UUIDs) werden während der Verarbeitung durch gICS-eigene UUIDs ersetzt.

##### **Aufruf und Rückgabe**
{{render:AddConsentOptOut}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 422: Fehlende oder falsche Patienten-Attribute.
* 404: Unbekannte Angaben in den Parametern   

##### **Beispiel**
Beispielhafter Request-Body:

{{xml:Resources/fsh-generated/resources/Parameters-Parameters-AddConsentOptOut-request-example-1.json}}

Eine beispielhafte Rückmeldung:

{{xml:Resources/fsh-generated/resources/Bundle-AddConsentOptOut-response-example-1.json}}
