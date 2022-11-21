![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}
## Workflow-basierte Verwaltung

Der FHIR-Endpunkt ([base]) für die Workflow-basierte Verwaltung lautet

<strong>```http[s]://\<host\>:\<port\>/ttp-fhir/fhir/dispatcher```</strong>

### Übersicht der fTTP-Operations

Nachfolgende Tabelle listet die zum aktuellen Zeitpunkt gültigen **fTTP**-Funktionalitäten ([federated Trusted Third Party](https://www.ths-greifswald.de/forscher/num/fttp-fact-sheet)) des REST-basierten TTP-FHIR Gateway.

| TTP FHIR Gateway (REST)|fTTP-Modul| fTTP-Funktionalität|
--- | ---
|{{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung-Operations-requestPsnWorkflow.md}}|Wahrscheinlichkeit|x|
|{{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung-Operations-requestPsnFromBfWorkflow.md}}|Wahrscheinlichkeit|x|
|{{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung-Operations-requestTasks.md}}|Clearing|x|
|{{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung-Operations-providePatientData.md}}|Clearing|x|
