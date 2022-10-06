#### dePseudonymize

##### **Suche von Originalwerten**
Abfrage **je eines** Originalwertes für **eine Liste von 1-n Pseudonymen** und eine spezifische Domäne.

<p align="center">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2020/11/depseudonymize.png">
</p>

##### **Voraussetzung**
Die angegebene Pseudonym-Domäne muss in gPAS konfiguriert und das angegebene Pseudonym in dieser Domäne bereits vorhanden sein.


##### **Aufruf und Rückgabe**
{{render:DePseudonymize}}

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/gpas/$dePseudonymize`

Der Funktionsaufruf liefert ein ParameterSet bestehend aus multiplen benannten Parametern zurück:
1. target = die genutzte Pseudonymisierungsdomäne (Teil des Requests)
2. pseudonym = das angefragte Pseudonym (Teil des Requests)
3. original = der ermittelte Originalwert

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Parameters-DePseudonymize-request-example-1}}

Eine beispielhafte Rückmeldung kann wie folgt aussehen:
{{xml:Parameters-DePseudonymize-response-example-1}}

Auftretende Fehler (z.B. angegebenes Pseudonym ist unbekannt) werden im Einzelnen entsprechend per Coding vom Typ [Issue-Type](http://hl7.org/fhir/issue-type) signalisiert.
{{xml:Parameters-Pseudonymize-response-example-1}}

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende oder fehlende Parameter|400 Bad Request|
