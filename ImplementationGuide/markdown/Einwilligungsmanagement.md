![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}
## Einwilligungsmanagement


Der FHIR-Endpunkt ([base]) für das Einwilligungsmanagement ist

<strong>```http[s]://\<host\>:\<port\>/ttp-fhir/fhir/gics```</strong>

Die Bereitstellung von Einwilligungs- und Widerrufsinhalten durch das Gateway erfolgt primär auf Basis der in der [AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/Home.html) spezifizierten Profile und Extensions.

Um alle für gICS relevanten Informationen per FHIR lesend bereitstellen zu können wurden zusätzlich gICS-bezogene Profile und Extensions erstellt, die kompatibel zu den Arbeiten der AG Einwilligungsmanagement sind.

<p align="center">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

### Übersicht der verfügbaren Operations

{{index:ImplementationGuide-markdown-Einwilligungsmanagement-Operations}}
