Instance: LaboratoryLogicalModel
InstanceOf: StructureDefinition
Description: "Laboratory Communication Logical Model"
Title: "Laboratory Logical Model" // user-friendly name
Usage: #definition

* insert PublisherContextInstance
* name = "LaboratoryLogicalModel" // computer ready name
* url = "http://i-tech-uw.github.io/laboratory-workflows-ig/StructureDefinition/LaboratoryLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "LaboratoryLogicalModel"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

// Systems To Map
* mapping[+].identity = "OpenELIS"
* mapping[=].name = "OpenELIS Global v2"
* mapping[+].identity = "OpenMRS"
* mapping[=].name = "OpenMRS RefApp 2.9"
* mapping[+].identity = "iSantePlus"
* mapping[=].name = "iSantePlus 2"
* mapping[+].identity = "FHIR-R4"
* mapping[=].name = "FHIR Release 4"

/**
    Definitions & Mappings
*/ 

* differential.element[+].id = "LaboratoryLogicalModel"
* differential.element[=].path = "LaboratoryLogicalModel"
* differential.element[=].definition = "LaboratoryLogicalModel"
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "OpenELIS Data Model"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "OpenMRS Data Model"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "iSantePlus Data Model"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "FHIR-R4 Mappings"

/**
 Patient
*/
* differential.element[+].id = "Patient"
* differential.element[=].path = "LaboratoryLogicalModel.Patient"
* differential.element[=].short = "Laboratory Patient Logical Model"
* differential.element[=].definition = "Logical model of Laboratory Patient"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPatient"



//Patient.id
* differential.element[+].id = "Patient.Id"
* differential.element[=].path = "LaboratoryLogicalModel.Patient.Id"
* differential.element[=].short = "Patient Logical ID"
* differential.element[=].definition = "Patient Logical ID"
* differential.element[=].type.code = #id
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient.fhirUuid"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.uuid"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.uuid"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPatient.id"

//Patient.identifier
* differential.element[+].id = "Patient.Identifier"
* differential.element[=].path = "LaboratoryLogicalModel.Patient.Identifier"
* differential.element[=].short = "An identifier for this patient."
* differential.element[=].definition = "Patient Identifier"
* differential.element[=].type.code = #Identifier
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient.nationalId"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.activeIdentifiers"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.activeIdentifiers"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPatient.identifier"

//Patient.Active
* differential.element[+].id = "Patient.Active"
* differential.element[=].path = "LaboratoryLogicalModel.Patient.Active"
* differential.element[=].short = "Patient Active Flag"
* differential.element[=].definition = "Flag for distinguishing between active and not active Patients"
* differential.element[=].type.code = #boolean
// * differential.element[=].binding.valueSet = TODO
* differential.element[=].binding.strength = #extensible
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "not Patient.voided"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "not Patient.voided"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPatient.active"

//Patient.Name
* differential.element[+].id = "Patient.Name"
* differential.element[=].path = "LaboratoryLogicalModel.Patient.Name"
* differential.element[=].short = "Patient Name"
* differential.element[=].definition = "Patient Name"
* differential.element[=].type.code = #HumanName
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient.person.firstName"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.names"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.names"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPatient.name"


//Patient.Contact
* differential.element[+].id = "Patient.Contact"
* differential.element[=].path = "LaboratoryLogicalModel.Patient.Contact"
* differential.element[=].short = "Patient Contact"
* differential.element[=].definition = "Patient Contact"
* differential.element[=].type.code =  #ContactPoint
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient.person.primaryPhone"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Person.personAttribute"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Person.personAttribute"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPatient.telecom"

//Patient.Gender
* differential.element[+].id = "Patient.Gender"
* differential.element[=].path = "LaboratoryLogicalModel.Patient.Gender"
* differential.element[=].short = "Patient Gender"
* differential.element[=].definition = "Patient Gender"
* differential.element[=].type.code =  #code
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient.gender"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.gender"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.gender"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPatient.gender"

//Patient.BirthDate
* differential.element[+].id = "Patient.BirthDate"
* differential.element[=].path = "LaboratoryLogicalModel.Patient.BirthDate"
* differential.element[=].short = "Patient Date of Birth"
* differential.element[=].definition = "Patient Date of Birth"
* differential.element[=].type.code =  #date
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient.birthDateForDisplay"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.birthdate"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.birthdate"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPatient.birthDate"

//Patient.Address
* differential.element[+].id = "Patient.Address"
* differential.element[=].path = "LaboratoryLogicalModel.Patient.Address"
* differential.element[=].short = "Patient Address"
* differential.element[=].definition = "Patient Address"
* differential.element[=].type.code =  #Address
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "PersonAddress"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.addresses"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.addresses"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPatient.address"

//Patient.DeathDate
* differential.element[+].id = "Patient.DeceasedDateTime"
* differential.element[=].path = "LaboratoryLogicalModel.Patient.DeceasedDateTime"
* differential.element[=].short = "Patient Death Date"
* differential.element[=].definition = "Patient Death Date"
* differential.element[=].type.code =   #date
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.deathDate or Patient.dead"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.deathDate or Patient.dead"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPatient.deceased"

/**
 Lab Order Task
*/
* differential.element[+].id = "LabTask"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask"
* differential.element[=].short = "Laboratory Workflow Task"
* differential.element[=].definition = "A task for tracking the full lifecycle of a Laboratory Lab Order Workflow between EMRs and LISs"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Sample"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask"

//LabTask.Id
* differential.element[+].id = "LabTask.Id"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.Id"
* differential.element[=].short = "Laboratory Workflow Task Id"
* differential.element[=].definition = "Laboratory Workflow Task Logical Id Id"
* differential.element[=].type.code = #id
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Sample.fhirUuid"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.id"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.id"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.id"

//LabTask.Status
* differential.element[+].id = "LabTask.Status"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.Status"
* differential.element[=].short = "Laboratory Task Status"
* differential.element[=].definition = "Laboratory LabTask Status"
* differential.element[=].type.code = #code
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Sample.status"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.status"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.status"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.status"

//LabTask.Intent
* differential.element[+].id = "LabTask.Intent"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.Intent"
* differential.element[=].short = "Laboratory Task Intent"
* differential.element[=].definition = "Indicates the level of actionability associated with the Task"
* differential.element[=].type.code = #code
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.intent"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.intent"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.intent"

//LabTask.LabOrder
* differential.element[+].id = "LabTask.LabOrder"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.LabOrder"
* differential.element[=].short = "Laboratory Task LabOrder"
* differential.element[=].definition = "LabOrder fulfilled by this Task"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Analysis"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.basedOn"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.basedOn"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.basedOn"


//LabTask.Encounter
* differential.element[+].id = "LabTask.Encounter"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.Encounter"
* differential.element[=].short = "Laboratory Task Encounter"
* differential.element[=].definition = "Encounter during which this task originated"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.encounter"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.encounter"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.encounter"

//LabTask.Patient
* differential.element[+].id = "LabTask.Patient"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.Patient"
* differential.element[=].short = "Laboratory Task Patient"
* differential.element[=].definition = "The Patient for whom the lab order was created."
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.for"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.for"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.for"

//LabTask.Requester
* differential.element[+].id = "LabTask.Requester"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.Requester"
* differential.element[=].short = "Laboratory Task Requester"
* differential.element[=].definition = "The requester of the lab order "
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.owner"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.owner"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.owner"

//LabTask.Input
* differential.element[+].id = "LabTask.Input"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.Input"
* differential.element[=].short = "Laboratory Task Input"
* differential.element[=].definition = "Information used to perform task"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.input"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.input"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.input"

//LabTask.Result
* differential.element[+].id = "LabTask.Result"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.Result"
* differential.element[=].short = "Laboratory Task Result"
* differential.element[=].definition = "Lab Order Result"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.output"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.output"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.output"

//LabTask.OrderDate
* differential.element[+].id = "LabTask.OrderDate"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.OrderDate"
* differential.element[=].short = "Laboratory Task OrderDate"
* differential.element[=].definition = "Date Lab Order was authored on"
* differential.element[=].type.code = #date
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Sample.enteredDate"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.dateCreated"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.dateCreated"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.authoredOn"

//LabTask.DateModified
* differential.element[+].id = "LabTask.DateModified"
* differential.element[=].path = "LaboratoryLogicalModel.LabTask.DateModified"
* differential.element[=].short = "Laboratory Task DateModified"
* differential.element[=].definition = "Date Lab Order was modified on"
* differential.element[=].type.code = #date
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.dateChanged"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.dateChanged"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryTask.lastModified"

/**
 Lab Order
*/
* differential.element[+].id = "LabOrder"
* differential.element[=].path = "LaboratoryLogicalModel.LabOrder"
* differential.element[=].short = "Laboratory  Order Logical Model"
* differential.element[=].definition = "Logical model of a Laboratory Order"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Analysis"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "TestOrder"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "TestOrder"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryServiceRequest"


// LabOrder.Id
* differential.element[+].id = "LabOrder.Id"
* differential.element[=].path = "LaboratoryLogicalModel.LabOrder.Id"
* differential.element[=].short = "Laboratory Order Id"
* differential.element[=].definition = "Laboratory Order Logical Id"
* differential.element[=].type.code = #id
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Analysis.fhirUuid"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "TestOrder.uuid"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "TestOrder.uuid"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryServiceRequest.id"


// LabOrder.Status
* differential.element[+].id = "LabOrder.Status"
* differential.element[=].path = "LaboratoryLogicalModel.LabOrder.Status"
* differential.element[=].short = "Laboratory Order Status"
* differential.element[=].definition = "Laboratory Order Status"
* differential.element[=].type.code = #code
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Analysis.status"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Task.status"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Task.status"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryServiceRequest.status"

// LabOrder.LabTest
* differential.element[+].id = "LabOrder.LabTest"
* differential.element[=].path = "LaboratoryLogicalModel.LabOrder.LabTest"
* differential.element[=].short = "Laboratory Order LabTest"
* differential.element[=].definition = "LabTest being requested/ordered"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Analysis.test"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "TestOrder.concept"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "TestOrder.concept"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryServiceRequest.code"

// LabOrder.Patient
* differential.element[+].id = "LabOrder.Patient"
* differential.element[=].path = "LaboratoryLogicalModel.LabOrder.Patient"
* differential.element[=].short = "Laboratory Order Patient"
* differential.element[=].definition = "The subject of the lab order"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "TestOrder.patient"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "TestOrder.patient"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryServiceRequest.subject"

// LabOrder.Requester
* differential.element[+].id = "LabOrder.Requester"
* differential.element[=].path = "LaboratoryLogicalModel.LabOrder.Requester"
* differential.element[=].short = "Laboratory Order Requester"
* differential.element[=].definition = "The requester of the lab order"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Provider"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "TestOrder.orderer"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "TestOrder.orderer"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryServiceRequest.requester"

// LabOrder.Perfomer
* differential.element[+].id = "LabOrder.Perfomer"
* differential.element[=].path = "LaboratoryLogicalModel.LabOrder.Perfomer"
* differential.element[=].short = "Laboratory Order Perfomer"
* differential.element[=].definition = "The Perfomer of the lab order"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Task.owner"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Task.owner"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryServiceRequest.performer"

// LabOrder.OrderDate
* differential.element[+].id = "LabOrder.OrderDate"
* differential.element[=].path = "LaboratoryLogicalModel.LabOrder.OrderDate"
* differential.element[=].short = "Laboratory Order OrderDate"
* differential.element[=].definition = "Date Lab Order was authored on"
* differential.element[=].type.code = #date
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "TestOrder.effectiveEndDate"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "TestOrder.effectiveEndDate"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryServiceRequest.authoredOn"


/**
 Lab Result
*/
* differential.element[+].id = "LabResult"
* differential.element[=].path = "LaboratoryLogicalModel.LabResult"
* differential.element[=].short = "Result for Lab Orders"
* differential.element[=].definition = "Result for Lab Orders"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Analysis"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryDiagnosticReport"

// LabResult.Id
* differential.element[+].id = "LabResult.Id"
* differential.element[=].path = "LaboratoryLogicalModel.LabResult.Id"
* differential.element[=].short = "LabResult Logical Id"
* differential.element[=].definition = "LabResult Logical Id"
* differential.element[=].type.code = #id
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Analysis.fhirUuid"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.uuid"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.uuid"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryDiagnosticReport.id"

// LabResult.Status
* differential.element[+].id = "LabResult.Status"
* differential.element[=].path = "LaboratoryLogicalModel.LabResult.Status"
* differential.element[=].short = "LabResult Status"
* differential.element[=].definition = "LabResult Status"
* differential.element[=].type.code = #code
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Analysis.status"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.status"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.status"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryDiagnosticReport.status"

// LabResult.LabTest
* differential.element[+].id = "LabResult.LabTest"
* differential.element[=].path = "LaboratoryLogicalModel.LabResult.LabTest"
* differential.element[=].short = "Lab Test for LabResult"
* differential.element[=].definition = "Lab Test for LabResult"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Analysis.test"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.concept"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.concept"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryDiagnosticReport.code"

// LabResult.Category
* differential.element[+].id = "LabResult.Category"
* differential.element[=].path = "LaboratoryLogicalModel.LabResult.Category"
* differential.element[=].short = "LabResult Category"
* differential.element[=].definition = "LabResult Category"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryDiagnosticReport.category"

// LabResult.Encounter
* differential.element[+].id = "LabResult.Encounter"
* differential.element[=].path = "LaboratoryLogicalModel.LabResult.Encounter"
* differential.element[=].short = "LabResult Encounter"
* differential.element[=].definition = "Encounter during which this LabResult originated"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.encounter"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.encounter"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryDiagnosticReport.encounter"

// LabResult.Patient
* differential.element[+].id = "LabResult.Patient"
* differential.element[=].path = "LaboratoryLogicalModel.LabResult.Encounter"
* differential.element[=].short = "LabResult Patient"
* differential.element[=].definition = "The subject to whom the  LabResult belongs"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.person"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.person"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryDiagnosticReport.subject"

// LabResult.DateCreated
* differential.element[+].id = "LabResult.DateCreated"
* differential.element[=].path = "LaboratoryLogicalModel.LabResult.DateCreated"
* differential.element[=].short = "LabResult DateCreated"
* differential.element[=].definition = "Date Lab result was Created"
* differential.element[=].type.code = #date
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.dateCreated"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.dateCreated"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryDiagnosticReport.effectiveDateTime"

// LabResult.Observation
* differential.element[+].id = "LabResult.Observation"
* differential.element[=].path = "LaboratoryLogicalModel.LabResult.DateCreated"
* differential.element[=].short = "LabResult Observation"
* differential.element[=].definition = "Observation for the LabResult"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Result"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.groupMembers"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.groupMembers"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryDiagnosticReport.result"

/**
 Observation
*/
* differential.element[+].id = "Observation"
* differential.element[=].path = "LaboratoryLogicalModel.Observation"
* differential.element[=].short = "Observation for Lab Orders"
* differential.element[=].definition = "Observation for Lab Order Results"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Result"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryObservation"

//Observation.Id
* differential.element[+].id = "Observation.Id"
* differential.element[=].path = "LaboratoryLogicalModel.Observation.Id"
* differential.element[=].short = "Observation Logical Id"
* differential.element[=].definition = "Observation Logical Id"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Result.fhirUuid"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.uuid"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.uuid"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryObservation.id"

//Observation.identifier
* differential.element[+].id = "Observation.Identifier"
* differential.element[=].path = "LaboratoryLogicalModel.Observation.Identifier"
* differential.element[=].short = "An identifier for this Observation"
* differential.element[=].definition = "Observation Identifier"
* differential.element[=].type.code = #Identifier
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Result.fhirUuid"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryObservation.identifier"

//Observation.Status
* differential.element[+].id = "Observation.Status"
* differential.element[=].path = "LaboratoryLogicalModel.Observation.Status"
* differential.element[=].short = "Observation Status"
* differential.element[=].definition = "Observation Status"
* differential.element[=].type.code = #code
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Result.analysis.status"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.status"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.status"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryObservation.status"

//Observation.Encounter
* differential.element[+].id = "Observation.Encounter"
* differential.element[=].path = "LaboratoryLogicalModel.Observation.Encounter"
* differential.element[=].short = "Observation Encounter"
* differential.element[=].definition = "Encounter during which this Observation originated"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.encounter"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.encounter"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryObservation.encounter"

// Observation.Patient
* differential.element[+].id = "Observation.Patient"
* differential.element[=].path = "LaboratoryLogicalModel.Observation.Encounter"
* differential.element[=].short = "Observation Patient"
* differential.element[=].definition = "The subject to whom the  Observation belongs"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Patient"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.person"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.person"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryObservation.subject"

// Observation.LabTest
* differential.element[+].id = "Observation.LabTest"
* differential.element[=].path = "LaboratoryLogicalModel.Observation.LabTest"
* differential.element[=].short = "Lab Test for Observation"
* differential.element[=].definition = "Lab Test for Observation"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.concept"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.concept"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryObservation.code"

// Observation.Value
* differential.element[+].id = "Observation.Value"
* differential.element[=].path = "LaboratoryLogicalModel.Observation.Value"
* differential.element[=].short = "Value  for Observation"
* differential.element[=].definition = "Value for Observation"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Result.value"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.value[x]"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.value[x]"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryObservation.value[x]"

// Observation.Component
* differential.element[+].id = "Observation.Component"
* differential.element[=].path = "LaboratoryLogicalModel.Observation.LabTest"
* differential.element[=].short = "Component for Observation"
* differential.element[=].definition = "Component for Observation"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Obs.groupMembers"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Obs.groupMembers"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryObservation.component"

/**
 Encounter
*/
* differential.element[+].id = "Encounter"
* differential.element[=].path = "LaboratoryLogicalModel.Encounter"
* differential.element[=].short = "Encounter during which Lab Oders are Created"
* differential.element[=].definition = "Encounter during which Lab Oders are Created"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Encounter"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Encounter"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryEncounter"


// Encounter.Id
* differential.element[+].id = "Encounter.Id"
* differential.element[=].path = "LaboratoryLogicalModel.Encounter.Id"
* differential.element[=].short = "Encounter Logical Id"
* differential.element[=].definition = "Encounter Logical Id"
* differential.element[=].type.code = #id
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Encounter.uuid"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Encounter.uuid"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryEncounter.id"

// Encounter.Status
* differential.element[+].id = "Encounter.Status"
* differential.element[=].path = "LaboratoryLogicalModel.Encounter.Status"
* differential.element[=].short = "Encounter Status"
* differential.element[=].definition = "Encounter Status"
* differential.element[=].type.code = #code
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Encounter.status"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Encounter.status"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryEncounter.status"

// Encounter.Patient
* differential.element[+].id = "Encounter.Patient"
* differential.element[=].path = "LaboratoryLogicalModel.Encounter.Patient"
* differential.element[=].short = "Encounter Patient"
* differential.element[=].definition = "Encounter Patient"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Encounter.patient"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Encounter.patient"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryEncounter.subject"


// Encounter.Provider
* differential.element[+].id = "Encounter.Provider"
* differential.element[=].path = "LaboratoryLogicalModel.Encounter.Provider"
* differential.element[=].short = "Encounter Provider"
* differential.element[=].definition = "Encounter Provider"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Encounter.participant"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Encounter.participant"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryEncounter.serviceProvider"

// Encounter.Location
* differential.element[+].id = "Encounter.Location"
* differential.element[=].path = "LaboratoryLogicalModel.Encounter.Location"
* differential.element[=].short = "Encounter Location"
* differential.element[=].definition = "Encounter Location"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Encounter.location"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Encounter.location"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryEncounter.location"


/**
 Requester
*/
* differential.element[+].id = "Requester"
* differential.element[=].path = "LaboratoryLogicalModel.Requester"
* differential.element[=].short = "Lab Order Requester"
* differential.element[=].definition = "Lab Order Requester"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Provider"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Provider"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Provider"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPractitioner"

//Requester.Id
* differential.element[+].id = "Requester.Id"
* differential.element[=].path = "LaboratoryLogicalModel.Requester.Id"
* differential.element[=].short = "Requester Logical ID"
* differential.element[=].definition = "Requester Logical ID"
* differential.element[=].type.code = #id
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Provider.fhirUuid"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Provider.uuid"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Provider.uuid"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPractitioner.id"

//Requester.Identifier
* differential.element[+].id = "Requester.Identifier"
* differential.element[=].path = "LaboratoryLogicalModel.Requester.Identifier"
* differential.element[=].short = "Requester Identifier"
* differential.element[=].definition = "Requester Identifier"
* differential.element[=].type.code = #Identifier
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Provider.identifier"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Provider.identifier"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPractitioner.identifier"


//Requester.Name
* differential.element[+].id = "Requester.Name"
* differential.element[=].path = "LaboratoryLogicalModel.Requester.Name"
* differential.element[=].short = "Requester Name"
* differential.element[=].definition = "Patient Name"
* differential.element[=].type.code = #HumanName
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "Provider.person.firstName"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Provider.names"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Provider.name"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPractitioner.name"

//Requester.Gender
* differential.element[+].id = "Requester.Gender"
* differential.element[=].path = "LaboratoryLogicalModel.Requester.Gender"
* differential.element[=].short = "Requester Gender"
* differential.element[=].definition = "Requester Gender"
* differential.element[=].type.code =  #code
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Provider.gender"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Provider.gender"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPractitioner.gender"

//Requester.BirthDate
* differential.element[+].id = "Requester.BirthDate"
* differential.element[=].path = "LaboratoryLogicalModel.Requester.BirthDate"
* differential.element[=].short = "Requester Date of Birth"
* differential.element[=].definition = "Requester Date of Birth"
* differential.element[=].type.code =  #date
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Provider.birthdate"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Provider.birthdate"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPractitioner.birthDate"

//Requester.Address
* differential.element[+].id = "Requester.Address"
* differential.element[=].path = "LaboratoryLogicalModel.Requester.Address"
* differential.element[=].short = "Requester Address"
* differential.element[=].definition = "Requester Address"
* differential.element[=].type.code =  #Address
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Provider.address"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Provider.address"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPractitioner.address"

//Requester.Active
* differential.element[+].id = "Requester.Active"
* differential.element[=].path = "LaboratoryLogicalModel.Requester.Active"
* differential.element[=].short = "Requester Active Flag"
* differential.element[=].definition = "Flag for distinguishing between active and not active Requester"
* differential.element[=].type.code = #boolean
* differential.element[=].binding.strength = #extensible
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "not Patient.retired"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "not Patient.retired"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "LaboratoryPractitioner.active"

