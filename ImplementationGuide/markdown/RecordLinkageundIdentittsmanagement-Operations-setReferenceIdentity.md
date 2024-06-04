#### {{page-title}}
**Konzeptarbeit. Noch nicht implementiert**

##### **Zweck**
Ändert die Referenz-Identität einer vorhandenen Person (MPI-Eintrag), d.h. diejenigen Daten einer Person, die primäre Gültigkeit haben sollen.

##### **Voraussetzung**
Die angegebenen Parameter zur Spezifikation der Matching-Domäne, Quelle der Personeninformation (Patient.meta.source), MPI-ID und Referenz-Identität müssen im E-PIX vorhanden sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$setReferenceIdentity`

Der Funktionsaufruf liefert eine Parameters-Ressource zurück.

{{render:SetReferenceIdentity}}

Der Parameter "mpiPerson" enthält eine Person-Ressource entsprechend dem allgemeinen Person-Profil. Die Angabe link.assurance='level4' kennzeichnet hierbei die Referenz-Identität:

{{tree:Person}}

Der Parameter "identity" enthält eine Patient-Ressource entsprechend dem allgemeinen Patient-Profil:

{{tree:Patient}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Attribute.

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-SetReferenceIdentity-request-example-1.json}}

Beispielhafte Response:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-SetReferenceIdentity-response-example-1.json}}
