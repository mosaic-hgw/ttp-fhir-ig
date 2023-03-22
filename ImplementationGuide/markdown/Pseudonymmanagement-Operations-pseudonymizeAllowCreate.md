#### pseudonymizeAllowCreate

##### **Suche und ggf. Erzeugung von Pseudonymen**
Generierung **je eines** Pseudonyms für **eine Liste von 1-n Originalwerten** und eine spezifische Domäne sofern es noch nicht vorhanden ist. Sofern die Zuordnung Originalwert und Domäne bereits bekannt ist, wird das zugeordnete vorhandene Pseudonym zurückgegeben.

##### **Voraussetzung**
Die angegebene Pseudonym-Domäne muss in gPAS konfiguriert sein.

##### **Aufruf und Rückgabe**
{{render:PseudonymizeAllowCreate}}

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/gpas/$pseudonymizeAllowCreate`

Der Funktionsaufruf liefert ein ParameterSet bestehend aus multiplen benannten Parametern zurück:
1. target = die genutzte Ziel-Domäne (Teil des Requests)
2. original = der zu pseudonymisierende Werte (Teil des Requests)
3. pseudonym = das erzeugte Pseudonym.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-PseudonymizeAllowCreate-request-example-1.json}}

Eine beispielhafte Rückmeldung kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-PseudonymizeAllowCreate-response-example-1.json}}
