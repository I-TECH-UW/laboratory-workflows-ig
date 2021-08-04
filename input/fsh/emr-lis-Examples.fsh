Instance: example-laboratory-patient
InstanceOf: LaboratoryPatient 
Usage: #example 
Description: "Example Laboratory Patient"
Title:   "Laboratory Patient"
* birthDate = "1988-03-02"
* identifier.id = "5981a256-d60c-44b1-beae-9bdd2cf572f8"
* identifier.use = #official
* identifier.type.text = "iSantePlus ID"
* identifier.value = "10012R"
* identifier.extension.url = "http://i-tech-uw.github.io/laboratory-ig/StructureDefinition/laboratory-patient-identifier-location"
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


Instance: example-laboratory-task-requested
InstanceOf: LaboratoryTask 
Usage: #example 
Description: "Example Task for Requested Lab Orders"
Title:   "Lab Order Task - Requested"
* identifier.value = "88ffa7fb-0419-4097-8b45-24f0d843c5ea"
* identifier.system = "http://isanteplus.org/ext/task/identifier"   
* basedOn[+] = Reference(example-laboratory-service-request-panel)
* basedOn[=].type = "ServiceRequest"
* basedOn[+] = Reference(example-laboratory-service-request)
* basedOn[=].type = "ServiceRequest"
* status = #requested
* intent = #order
* for = Reference(example-laboratory-patient)
* authoredOn = "2021-05-20"
* owner = Reference(example-laboratory-practitioner)

Instance: example-laboratory-task-simple-requested
InstanceOf: LaboratoryTask 
Usage: #example 
Description: "Example Simple Task for Requested Lab Orders"
Title:   "Lab Order Task - Simple Requested"
* identifier.value = "88ffa7fb-0419-4097-8b45-24f0d843a5ea"
* identifier.system = "http://i-tech-uw.github.io/lab-workflow-ig/ext/task/identifier"   
* basedOn[+] = Reference(example-laboratory-service-request)
* basedOn[=].type = "ServiceRequest"
* status = #requested
* intent = #order
* for = Reference(example-laboratory-patient)
* authoredOn = "2021-02-20"
* owner = Reference(example-laboratory-practitioner)

Instance: example-laboratory-service-request
InstanceOf: LaboratoryServiceRequest
Usage: #example
Description: "Example ServiceRequest resource representing a Lab Test Order"
Title: "Laboratory ServiceRequest"
* status = #active
* intent = #order
* code.coding.system = "http://loinc.org"
* code.coding.code = #14682-9
* subject = Reference(example-laboratory-patient)

Instance: example-laboratory-service-request-1
InstanceOf: LaboratoryServiceRequest
Usage: #example
Description: "Example ServiceRequest resource representing a Lab Test Order"
Title: "Laboratory ServiceRequest 1"
* status = #active
* intent = #order
* code.coding.system = "http://loinc.org"
* code.coding.code = #14682-9
* basedOn[+] = Reference(example-laboratory-service-request-panel)
* subject = Reference(example-laboratory-patient)
* encounter = Reference(example-laboratory-encounter)

Instance: example-laboratory-service-request-2
InstanceOf: LaboratoryServiceRequest
Usage: #example
Description: "Example ServiceRequest resource representing a Lab Test Order"
Title: "Laboratory ServiceRequest 2"
* status = #active
* intent = #order
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #14682-9
* basedOn[+] = Reference(example-laboratory-service-request-panel)
* subject = Reference(example-laboratory-patient)
* encounter = Reference(example-laboratory-encounter)

Instance: example-laboratory-service-request-panel
InstanceOf: LaboratoryServiceRequest
Usage: #example
Description: "Example ServiceRequest resource representing a Lab Test Order Panel"
Title: "Laboratory ServiceRequest Panel"
* status = #active
* intent = #order
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #14682-9
* subject = Reference(example-laboratory-patient)
* encounter = Reference(example-laboratory-encounter)

Instance: example-laboratory-practitioner
InstanceOf: LaboratoryPractitioner
Usage: #example
Description: "Example Laboratory Practitioner"
Title: "Laboratory Practitioner"
* name[+].text = "Moses Mutesa"
* identifier[+].value = "1000AX"
* identifier[=].system = "http://fhir.openmrs.org/ext/provider/identifier"  

Instance: example-laboratory-encounter
InstanceOf: LaboratoryEncounter
Usage: #example
Description: "Example Laboratory Encounter"
Title: "Laboratory Encounter"
* subject = Reference(example-laboratory-patient) 
* subject.type = "Patient"
* status = #in-progress
* class.display = "inpatient encounter"  

Instance: example-laboratory-observation
InstanceOf: LaboratoryObservation
Usage: #example
Description: "Example Laboratory Observation"
Title: "Laboratory Observation"
* identifier.system = "https://isanteplusdemo.com/openmrs/ws/fhir2/" 
* identifier.value = "ebf83ba0-9d3c-497f-9aa0-d839ec506202"
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #22748-8
* valueQuantity.value = 55.0
* valueQuantity.unit = "UI/L"
* valueQuantity.code = #88
* subject = Reference(example-laboratory-patient)
* subject.type = "Patient"
* status = #final
* performer = Reference(example-laboratory-practitioner)
* effectiveDateTime = "2011-03-04T08:30:00+11:00"

Instance: example-laboratory-diagnostic-report
InstanceOf: LaboratoryDiagnosticReport
Usage: #example
Description: "Example Laboratory DiagnosticReport"
Title: "Laboratory DiagnosticReport"
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #22748-8
* category.coding[+].system = "http://loinc.org"
* category.coding[=].code = #22748-8
* effectiveDateTime = "2011-03-04T08:30:00+11:00"
* subject.reference = "example-laboratory-patient" 
* subject.type = "Patient"
* result = Reference(example-laboratory-observation)
* result.type = "Observation"
* status = #final

Instance: example-laboratory-simple-composition
InstanceOf: LaboratoryLabComposition
Usage: #example
Description: "Example Single Lab Order Composition"
Title: "Laboratory Single Order Composition"
* title = "Laboratory Single Order Composition"
* type = #document
* subject = Reference(example-laboratory-patient)
* date = "2021-06-08"
* status = #final
* author = Reference(example-laboratory-practitioner)
* section[labTask].entry[+] = Reference(example-laboratory-task-requested)
* section[labOrders].entry[+] = Reference(example-laboratory-service-request)

Instance: example-laboratory-simple-bundle
InstanceOf: Bundle
Usage: #example
Description: "Example Single Test Laboratory Bundle"
Title: "Single Test Laboratory Bundle"
* type = #document
* entry[+].resource = example-laboratory-simple-composition
* entry[+].resource = example-laboratory-patient
* entry[+].resource = example-laboratory-practitioner
* entry[+].resource = example-laboratory-task-simple-requested
* entry[+].resource = example-laboratory-service-request

Instance: example-laboratory-simple-bundle-transaction
InstanceOf: Bundle
Usage: #example
Description: "Example Single Test Laboratory Transaction Bundle"
Title: "Single Test Laboratory Bundle - Transaction"
* type = #transaction
* entry[+].resource = example-laboratory-simple-composition
* entry[=].request.method = "PUT"
* entry[=].request.url = "Composition/example-laboratory-simple-composition"
* entry[+].resource = example-laboratory-patient
* entry[=].request.method = "PUT"
* entry[=].request.url = "Patient/example-laboratory-patient"
* entry[+].resource = example-laboratory-practitioner
* entry[=].request.method = "PUT"
* entry[=].request.url = "Practitioner/example-laboratory-practitioner"
* entry[+].resource = example-laboratory-task-simple-requested
* entry[=].request.method = "PUT"
* entry[=].request.url = "Task/example-laboratory-task-simple-requested"
* entry[+].resource = example-laboratory-service-request
* entry[=].request.method = "PUT"
* entry[=].request.url = "ServiceRequest/example-laboratory-service-request"

Instance: example-laboratory-composition
InstanceOf: LaboratoryLabComposition
Usage: #example
Description: "Example Laboratory Composition"
Title: "Laboratory Composition"
* title = "Laboratory Composition"
* type = #document
* subject = Reference(example-laboratory-patient)
* date = "2021-06-06"
* status = #final
* author = Reference(example-laboratory-practitioner)
* section[labTask].entry[+] = Reference(example-laboratory-task-requested)
* section[labOrders].entry[+] = Reference(example-laboratory-service-request-panel)
* section[labOrders].entry[+] = Reference(example-laboratory-service-request-1)
* section[labOrders].entry[+] = Reference(example-laboratory-service-request-2)

Instance: example-laboratory-bundle
InstanceOf: Bundle
Usage: #example
Description: "Example Full Laboratory Bundle"
Title: "Laboratory Bundle"
* type = #document
* entry[+].resource = example-laboratory-composition
* entry[+].resource = example-laboratory-patient
* entry[+].resource = example-laboratory-practitioner
* entry[+].resource = example-laboratory-task-requested
* entry[+].resource = example-laboratory-service-request-panel
* entry[+].resource = example-laboratory-service-request-1
* entry[+].resource = example-laboratory-service-request-2

Instance: example-transaction-response-bundle
InstanceOf: Bundle
Usage: #example
Description: "Example Full Laboratory Bundle"
Title: "Laboratory Bundle"
* type = #transaction-response
* link[+].relation = #self
* link[=].url = "responding.server.org/fhir"
* entry[+].response = {"status": "201 Created", "location": Reference(example-laboratory-composition)}
