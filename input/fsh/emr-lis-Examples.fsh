Instance: example-emr-lis-patient
InstanceOf: EmrLisPatient 
Usage: #example 
Description: "Example OpenMRS Patient"
Title:   "EMR-LIS Patient"
* birthDate = "1988-03-02"
* identifier.id = "5981a256-d60c-44b1-beae-9bdd2cf572f8"
* identifier.use = #official
* identifier.type.text = "iSantePlus ID"
* identifier.value = "10012R"
* identifier.extension.url = "http://i-tech-uw.github.io/emr-lis-ig/StructureDefinition/emr-lis-patient-identifier-location"
* identifier.extension.valueReference.reference = "Location/8d6c993e-c2cc-11de-8d13-0010c6dffd0f"
* identifier.extension.valueReference.type = "Location"
* identifier.extension.valueReference.display = "Unknown Location"
* gender = #female
* active = true
* name.id = "511275de-e301-44a3-95d2-28d0d3b35387"
* name.family = "Mutesa"
* name.given = "moses"
* deceasedBoolean =  false
* address.id = "d4f7c809-3d01-4032-b64d-4c22e8eccbbc"
* address.use = #home
* address.country = "haiti"


Instance: example-emr-lis-task-requested
InstanceOf: EmrLisTask 
Usage: #example 
Description: "Example Task for Requested Lab Orders and Results for EMR-LIS integration"
Title:   "EMR-LIS Requested Lab Task"
* identifier.value = "88ffa7fb-0419-4097-8b45-24f0d843c5ea"
* identifier.system = "http://isanteplus.org/ext/task/identifier"   
* basedOn[+] = Reference(example-emr-lis-service-request-1)
* basedOn[=].type = "ServiceRequest"
* basedOn[+] = Reference(example-emr-lis-service-request-2)
* basedOn[=].type = "ServiceRequest"
* status = #requested
* intent = #order
* for = Reference(example-emr-lis-patient)
* authoredOn = "2021-05-20"
* owner = Reference(example-emr-lis-practitioner)

Instance: example-emr-lis-service-request-1
InstanceOf: EmrLisServiceRequest
Usage: #example
Description: "Example ServiceRequest resource representing a EMR-LIS Lab Order"
Title: "EmrLis ServiceRequest 1"
* status = #active
* intent = #order
* code.coding.system = "http://loinc.org"
* code.coding.code = #14682-9
* basedOn[+] = Reference(example-emr-lis-service-request-profile)
* subject = Reference(example-emr-lis-patient)
* encounter = Reference(example-emr-lis-encounter)
* encounter.type = "Encounter"

Instance: example-emr-lis-service-request-2
InstanceOf: EmrLisServiceRequest
Usage: #example
Description: "Example ServiceRequest resource representing EMR-LIS Lab Order"
Title: "BW PIMS ServiceRequest 1"
* status = #active
* intent = #order
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #14682-9
* basedOn[+] = Reference(example-emr-lis-service-request-profile)
* subject = Reference(example-emr-lis-patient)
* encounter = Reference(example-emr-lis-encounter)
* encounter.type = "Encounter" 

Instance: example-emr-lis-service-request-profile
InstanceOf: EmrLisServiceRequest
Usage: #example
Description: "Example ServiceRequest resource representing EMR-LIS Lab Order"
Title: "EMR-LIS PIMS ServiceRequest Profile"
* status = #active
* intent = #order
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #14682-9
* subject = Reference(example-emr-lis-patient)
* encounter = Reference(example-emr-lis-encounter)
* encounter.type = "Encounter"

Instance: example-emr-lis-practitioner
InstanceOf: EmrLisPractitioner
Usage: #example
Description: "Example Emrs-LIS Practitioner"
Title: "EMR-LIS Practitioner"
* name[+].text = "Moses Mutesa"
* identifier[+].value = "1000AX"
* identifier[=].system = "http://fhir.openmrs.org/ext/provider/identifier"  

Instance: example-emr-lis-encounter
InstanceOf: EmrLisEncounter
Usage: #example
Description: "Example EMR-LIS Encounter"
Title: "EMR-LIS Encounter"
* subject = Reference(example-emr-lis-patient) 
* subject.type = "Patient"
* status = #in-progress
* class.display = "inpatient encounter"  

Instance: example-emr-lis-observation
InstanceOf: EmrLisObservation
Usage: #example
Description: "Example EmrLis Observation"
Title: "EMR-LIS Observation"
* identifier.system = "https://isanteplusdemo.com/openmrs/ws/fhir2/" 
* identifier.value = "ebf83ba0-9d3c-497f-9aa0-d839ec506202"
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #22748-8
* valueQuantity.value = 55.0
* valueQuantity.unit = "UI/L"
* valueQuantity.code = #88
* subject = Reference(example-emr-lis-patient)
* subject.type = "Patient"
* status = #final
* performer = Reference(example-emr-lis-practitioner)
* effectiveDateTime = "2011-03-04T08:30:00+11:00"

Instance: example-emr-lis-diagnostic-report
InstanceOf: EmrLisDiagnosticReport
Usage: #example
Description: "Example EMR-LIS DiagnosticReport"
Title: "EMR-LIS DiagnosticReport"
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #22748-8
* category.coding[+].system = "http://loinc.org"
* category.coding[=].code = #22748-8
* effectiveDateTime = "2011-03-04T08:30:00+11:00"
* subject.reference = "example-emr-lis-patient" 
* subject.type = "Patient"
* result = Reference(example-emr-lis-observation)
* result.type = "Observation"
* status = #final

Instance: example-emr-lis-composition
InstanceOf: EmrLisLabComposition
Usage: #example
Description: "Example Lab Order Composition"
Title: "Example EMR-LIS Lab Composition"
* title = "EMR-LIS Lab Composition"
* type = #document
* subject = Reference(example-emr-lis-patient)
* date = "2021-06-06"
* status = #final
* author = Reference(example-emr-lis-practitioner)
* section[labTask].entry[+] = Reference(example-emr-lis-task-requested)
* section[labOrders].entry[+] = Reference(example-emr-lis-service-request-profile)
* section[labOrders].entry[+] = Reference(example-emr-lis-service-request-1)
* section[labOrders].entry[+] = Reference(example-emr-lis-service-request-2)

Instance: example-emr-lis-bundle
InstanceOf: Bundle
Usage: #example
Description: "Example Full EMR-LIS Lab Bundle"
Title: "Example EMR-LIS Lab Bundle"
* type = #document
* entry[+].resource = example-emr-lis-composition
* entry[+].resource = example-emr-lis-patient
* entry[+].resource = example-emr-lis-practitioner
* entry[+].resource = example-emr-lis-task-requested
* entry[+].resource = example-emr-lis-service-request-profile
* entry[+].resource = example-emr-lis-service-request-1
* entry[+].resource = example-emr-lis-service-request-2