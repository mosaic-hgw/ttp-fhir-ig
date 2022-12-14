#### **{{link:AllPolicyStatesForPerson}}**

##### **Voraussetzung**
- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentifier existieren
- **Unterstützt ab TTP FHIR Gateway Version 2.1.0 (gICS 2.13.4)**

##### **Aufruf und Rückgabe**
{{render:AllPolicyStatesForPerson}}

##### **Beispiel**
Beispielhafter Request-Body:

{{xml:Resources/fsh-generated/resources/Parameters-AllPolicyStatesForPerson-request-example-1.json}}

Beispielhafte Rückmeldung:

{{xml:Resources/fsh-generated/resources/Bundle-AllPolicyStatesForPerson-response-example-1.json}}

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Leere Ergebnismenge trotz gültiger Parameter|200 Ok|
