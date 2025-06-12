CodeSystem: ConsentStatus
Id: ConsentStatusCS
Description: " consent states are used to depict the participant’s will. Therefore, documentation should allow different status values. Further details from https://doi.org/10.1186/s12967-020-02457-y"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^caseSensitive = true
* ^content = #complete
* #ACCEPTED "ACCEPTED"
* #ACCEPTED ^designation[0].use = $DesignationUse#consent
* #ACCEPTED ^designation[=].value = "Ja"
* #ACCEPTED ^designation[+].use = $DesignationUse#refusal
* #ACCEPTED ^designation[=].value = "Einwilligen"
* #ACCEPTED ^designation[+].use = $DesignationUse#withdrawal
* #ACCEPTED ^designation[=].value = "Erneut einwilligen"
* #ACCEPTED_OPT_OUT "ACCEPTED_OPT_OUT"
* #ACCEPTED_OPT_OUT ^designation[0].use = $DesignationUse#consent
* #ACCEPTED_OPT_OUT ^designation[=].value = "Ja (Opt-Out)"
* #DECLINED "DECLINED"
* #DECLINED ^designation[0].use.system = "https://ths-greifswald.de/fhir/CodeSystem/gics/DesignationUse"
* #DECLINED ^designation[=].use = $DesignationUse#consent
* #DECLINED ^designation[=].value = "Nein"
* #DECLINED ^designation[+].use.system = "https://ths-greifswald.de/fhir/CodeSystem/gics/DesignationUse"
* #DECLINED ^designation[=].use = $DesignationUse#refusal
* #DECLINED ^designation[=].value = "Ja"
* #UNKNOWN "UNKNOWN"
* #NOT_ASKED "NOT ASKED"
* #NOT_ASKED ^designation[0].use.system = "https://ths-greifswald.de/fhir/CodeSystem/gics/DesignationUse"
* #NOT_ASKED ^designation[=].use = $DesignationUse#consent
* #NOT_ASKED ^designation[=].value = "Nicht gefragt"
* #NOT_ASKED ^designation[+].use.system = "https://ths-greifswald.de/fhir/CodeSystem/gics/DesignationUse"
* #NOT_ASKED ^designation[=].use = $DesignationUse#refusal
* #NOT_ASKED ^designation[=].value = "Nicht gefragt"
* #NOT_ASKED ^designation[+].use.system = "https://ths-greifswald.de/fhir/CodeSystem/gics/DesignationUse"
* #NOT_ASKED ^designation[=].use = $DesignationUse#withdrawal
* #NOT_ASKED ^designation[=].value = "Nicht gefragt"
* #NOT_CHOSEN "NOT CHOSEN"
* #NOT_CHOSEN ^designation[0].use.system = "https://ths-greifswald.de/fhir/CodeSystem/gics/DesignationUse"
* #NOT_CHOSEN ^designation[=].use = $DesignationUse#consent
* #NOT_CHOSEN ^designation[=].value = "Überspringen"
* #NOT_CHOSEN ^designation[+].use.system = "https://ths-greifswald.de/fhir/CodeSystem/gics/DesignationUse"
* #NOT_CHOSEN ^designation[=].use = $DesignationUse#refusal
* #NOT_CHOSEN ^designation[=].value = "Nicht gefragt"
* #NOT_CHOSEN ^designation[+].use.system = "https://ths-greifswald.de/fhir/CodeSystem/gics/DesignationUse"
* #NOT_CHOSEN ^designation[=].use = $DesignationUse#withdrawal
* #NOT_CHOSEN ^designation[=].value = "Nein"
* #WITHDRAWN "WITHDRAWN"
* #WITHDRAWN ^designation[0].use.system = "https://ths-greifswald.de/fhir/CodeSystem/gics/DesignationUse"
* #WITHDRAWN ^designation[=].use = $DesignationUse#withdrawal
* #WITHDRAWN ^designation[=].value = "Ja"
* #INVALIDATED "INVALIDATED"
* #REFUSED "REFUSED"
* #EXPIRED "EXPIRED"
* #OBJECTED "OBJECTED"
* #OBJECTED ^designation[0].use = $DesignationUse#consent
* #OBJECTED ^designation[=].value = "Widersprechen"
