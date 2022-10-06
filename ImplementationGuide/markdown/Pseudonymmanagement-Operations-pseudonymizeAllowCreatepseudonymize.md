#### pseudonymize

##### **Suche von Pseudonymen**
Abfrage **je eines** Pseudonym-Wertes für eine gegebene **Liste von 1-n Originalwerten** und eine spezifische Domäne.

<p align="center">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2020/11/pseudonymize.png">
</p>

##### **Voraussetzung**
Die angegebene Pseudonym-Domäne muss in gPAS konfiguriert und der angegebene Originalwert in dieser Domäne bereits vorhanden sein.

##### **Aufruf und Rückgabe**
{{render:Pseudonymize}}

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/gpas/$pseudonymize`

Der Funktionsaufruf liefert ein ParameterSet bestehend aus multiplen benannten Parametern zurück:
1. original = der zu pseudonymisierende Werte (Teil des Requests)
2. target = die genutzte Pseudonymisierungsdomäne (Teil des Requests)
3. pseudonym = das erzeugte Pseudonym.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-Pseudonymize-request-example-1.json}}

Eine beispielhafte Rückmeldung kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-Pseudonymize-response-example-1.json}}

Auftretende Fehler (z.B. angegebenes Pseudonym ist unbekannt) werden im Einzelnen entsprechend per Coding vom Typ [Issue-Type](http://hl7.org/fhir/issue-type) signalisiert.

{{xml:Resources/fsh-generated/resources/Parameters-Parameters-Pseudonymize-response-example-2.json}}

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende oder fehlende Parameter|400 Bad Request|
