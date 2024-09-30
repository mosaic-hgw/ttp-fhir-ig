![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}
## Übergreifende Schnittstellen

Der FHIR-Endpunkt ([base]) für die übergreifende Schnittstelle lautet

<strong>```http[s]://\<host\>:\<port\>/ttp-fhir/fhir/dispatcher```</strong>

### Übersicht der fTTP-Operations

Nachfolgende Tabelle listet die zum aktuellen Zeitpunkt gültigen **fTTP**-Funktionalitäten ([federated Trusted Third Party](https://www.ths-greifswald.de/forscher/num/fttp-fact-sheet)).

| Operation|erforderlich für fTTP-Modul|
-- | ---
|{{pagelink:ImplementationGuide/markdown/UbergreifendeSchnittstellen-Operations-requestPsnWorkflow.md}}|Wahrscheinlichkeit|
|{{pagelink:ImplementationGuide/markdown/UbergreifendeSchnittstellen-Operations-requestPsnFromBfWorkflow.md}}|Wahrscheinlichkeit|
|{{pagelink:ImplementationGuide/markdown/UbergreifendeSchnittstellen-Operations-updateBf.md}}|Wahrscheinlichkeit|
|{{pagelink:ImplementationGuide/markdown/UbergreifendeSchnittstellen-Operations-requestTasks.md}}|Wahrscheinlichkeit/Clearing|
|{{pagelink:ImplementationGuide/markdown/UbergreifendeSchnittstellen-Operations-providePatientData.md}}|Clearing|


### Übersicht der generalisierten fTTP-Operations

| Operation                                                                                                          | Zweck                                                  |
--------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------
| {{pagelink:ImplementationGuide/markdown/UbergreifendeSchnittstellen-Operations-Operations-pseudonymizePatient.md}} | Erzeugung von Pseudonym(en) für eine Patient-Ressource |
