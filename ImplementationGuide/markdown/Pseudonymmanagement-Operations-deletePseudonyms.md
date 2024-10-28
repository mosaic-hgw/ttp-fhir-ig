#### deletePseudonyms
**Unterstützt ab TTP-FHIR Gateway Version 2024.2.0**

Löscht eine gegebene Liste von 1-n Einträgen (identifiziert durch den Originalwert) in der angegebenen Domäne, sofern die Konfiguration dieser Domäne dies erlaubt.

##### **Voraussetzung**
Die angegebene Pseudonym-Domäne muss in gPAS konfiguriert und der angegebene Originalwert in dieser Domäne bereits vorhanden sein.

##### **Aufruf und Rückgabe**
{{render:DeletePseudonyms}}

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/gpas/$deletePseudonyms`

Der Funktionsaufruf liefert ein ParameterSet bestehend aus multiplen benannten Parametern zurück:
1. original = der zu pseudonymisierende Werte (Teil des Requests)
2. target = die genutzte Ziel-Domäne (Teil des Requests)
3. result-code = Ergebnisstatus (Erfolg oder Fehler).

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.
* 500: Löschen von Pseudonymen in der Domain (target) nicht gestattet.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-DeletePseudonyms-request-example-1.json}}

Eine beispielhafte Rückmeldung kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-DeletePseudonyms-response-example-1.json}}

Auftretende Fehler (z.B. angegebenes Pseudonym ist unbekannt) werden im Einzelnen entsprechend per Coding vom Typ [Issue-Type](http://hl7.org/fhir/issue-type) signalisiert.
