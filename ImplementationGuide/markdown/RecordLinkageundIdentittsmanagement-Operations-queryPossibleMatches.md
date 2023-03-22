#### {{page-title}}

##### **Zweck**
Matchende Identitäts-Informationen sowie zugehörige Meta-Informationen ausgeben.

##### **Voraussetzung**
Der angegebene Parameter zur Spezifikation der Matching-Domäne muss im E-PIX konfiguriert sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$queryPossibleMatches`

Paging wird mittels der optionalen In-Parameter _offset und _count sowie der optionalen Out-Parameter prev, self und next realisiert. Die Paging-Mechanismen folgen den Vorgaben unter http://www.hl7.org/fhir/r4/search.html - allerdings ist der komplexe Out-Parameter 'match' der Bezug für die Zählung.

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus einem oder mehreren Multi-Part-Parametern zurück.

{{render:QueryPossibleMatches}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-QueryPossibleMatches-request-example-1.json}}

Beispielhafte Response:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-QueryPossibleMatches-response-example-1.json}}
