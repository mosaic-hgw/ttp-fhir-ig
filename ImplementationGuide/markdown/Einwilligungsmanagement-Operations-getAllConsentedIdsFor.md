#### **{{link:GetAllConsentedIdsFor}}**

<p align="left">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

##### **Voraussetzung**

- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentifierType existieren
- Die spezifizierte Policy muss innerhalb einer gültigen Einwilligung referenziert werden
- Bei Nutzung alternativer PolicyCodeSysteme müssen nötige fhirPolicyCodes innerhalb von gICS per ExternalProperty der Policies definiert worden sein ([Beispiel](https://www.ths-greifswald.de/gics/templates/mii/1.6.f))


##### **Aufruf und Rückgabe**
{{render:GetAllConsentedIdsFor}}

Der Parameter config enthält eine verschachtelte Parameters-Ressource entsprechend dem Config-Profil:

{{tree:Config}}

##### **Beispiel**
Beispielhafter Request-Body:

{{xml:Resources/fsh-generated/resources/Parameters-GetAllConsentedIdsFor-request-example-1.json}}



Beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/Parameters-GetAllConsentedIdsFor-response-example-1.json}}

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Leere Ergebnismenge trotz gültiger Parameter|200 Ok|
