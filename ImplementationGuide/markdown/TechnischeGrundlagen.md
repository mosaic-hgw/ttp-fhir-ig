## Technische Grundlagen

### FHIR-Endpunkte

Für die verschiedenen Bereiche werden jeweils eigene FHIR-Endpunkte eingerichtet. Diese sind:

|Bereich|\[base\] (FHIR-Endpunkt)|
|-
|Record Linkage und Identitätsmanagement|http[s]://\<host\>:\<port\>/ttp-fhir/fhir/epix|
|Pseudonymmanagement|http[s]://\<host\>:\<port\>/ttp-fhir/fhir/gpas|
|Einwilligungsmanagement|http[s]://\<host\>:\<port\>/ttp-fhir/fhir/gics|
|Workflow-basierte Verwaltung|http[s]://\<host\>:\<port\>/ttp-fhir/fhir/dispatcher|


### RESTful API

Für die RESTful API gelten grundsätzlich die [entsprechenden Maßgaben des FHIR-Standards](http://www.hl7.org/fhir/http.html).

Dies gilt insbesondere auch für das RFC-konforme Escapen bestimmter Sonderzeichen (URL-Encoding). An dieser Stelle sei ausdrücklich darauf hingewiesen, dass auch das **Pipe-Symbol "|" im Rahmen der vorliegenden Implementierung jederzeit escaped werden muss**, d.h. anstelle des "|" ist das Encoding "%7C" zu übermitteln.


### Suche

Für Such-Requests gelten ebenfalls die entsprechenden Vorgaben des FHIR-Standards (http://www.hl7.org/fhir/search.html).

Hier sei besonders auf die Vorgaben für die logische UND- bzw. ODER-Verknüpfung hingewiesen (http://www.hl7.org/fhir/search.html#combining)