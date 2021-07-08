Instance: EmrLisLogicalModel
InstanceOf: StructureDefinition
Description: "EMR-LIS Communication Logical Model"
Title: "EMR-LIS Logical Model" // user-friendly name
Usage: #definition

* insert PublisherContextInstance
* name = "EmrLisLogicalModel" // computer ready name
* url = "http://i-tech-uw.github.io/emr-lis-ig/StructureDefinition/EmrLisLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "EmrLisLogicalModel"
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

* differential.element[+].id = "EmrLisLogicalModel"
* differential.element[=].path = "EmrLisLogicalModel"
* differential.element[=].definition = "EmrLisLogicalModel"
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = ""

/**
 Patient
*/
* differential.element[+].id = "Patient"
* differential.element[=].path = "EmrLisLogicalModel.Patient"
* differential.element[=].short = "EMR-LIS Patient Logical Model"
* differential.element[=].definition = "Logical model of EMR-LIS Patient"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient"


//Patient.id
* differential.element[+].id = "Patient.Id"
* differential.element[=].path = "EmrLisLogicalModel.Patient.Id"
* differential.element[=].short = "Patient Logical ID"
* differential.element[=].definition = "Patient Logical ID"
* differential.element[=].type.code = #id
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.uuid"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.uuid"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient.id"

//Patient.identifier
* differential.element[+].id = "Patient.Identifier"
* differential.element[=].path = "EmrLisLogicalModel.Patient.Identifier"
* differential.element[=].short = "An identifier for this patient."
* differential.element[=].definition = ""
* differential.element[=].type.code = #Identifier
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.activeIdentifiers"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.activeIdentifiers"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient.identifier"

//Patient.Active
* differential.element[+].id = "Patient.Active"
* differential.element[=].path = "EmrLisLogicalModel.Patient.Active"
* differential.element[=].short = "Patient Active Flag"
* differential.element[=].definition = "Flag for distinguishing between active and not active Patients"
* differential.element[=].type.code = #boolean
// * differential.element[=].binding.valueSet = TODO
* differential.element[=].binding.strength = #extensible
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "not Patient.voided"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "not Patient.voided"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient.active"

//Patient.name
* differential.element[+].id = "Patient.Name"
* differential.element[=].path = "EmrLisLogicalModel.Patient.Name"
* differential.element[=].short = "Patient Name"
* differential.element[=].definition = "Patient Name"
* differential.element[=].type.code = #HumanName
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.names"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.names"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient.name"


//Patient.Contact
* differential.element[+].id = "Patient.Contact"
* differential.element[=].path = "EmrLisLogicalModel.Patient.Contact"
* differential.element[=].short = "Patient Contact"
* differential.element[=].definition = "Patient Contact"
* differential.element[=].type.code =  #ContactPoint
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Person.personAttribute"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Person.personAttribute"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient.telecom"

//Patient.Gender
* differential.element[+].id = "Patient.Gender"
* differential.element[=].path = "EmrLisLogicalModel.Patient.Gender"
* differential.element[=].short = "Patient Gender"
* differential.element[=].definition = "Patient Gender"
* differential.element[=].type.code =  #code
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.gender"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.gender"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient.gender"

//Patient.BirthDate
* differential.element[+].id = "Patient.BirthDate"
* differential.element[=].path = "EmrLisLogicalModel.Patient.BirthDate"
* differential.element[=].short = "Patient Date of Birth"
* differential.element[=].definition = "Patient Date of Birth"
* differential.element[=].type.code =  #date
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.birthdate"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.birthdate"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient.birthDate"

//Patient.Address
* differential.element[+].id = "Patient.Address"
* differential.element[=].path = "EmrLisLogicalModel.Patient.Address"
* differential.element[=].short = "Patient Address"
* differential.element[=].definition = "Patient Address"
* differential.element[=].type.code =  #Address
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.addresses"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.addresses"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient.address"

//Patient.DeathDate
* differential.element[+].id = "Patient.DeceasedDateTime"
* differential.element[=].path = "EmrLisLogicalModel.Patient.DeceasedDateTime"
* differential.element[=].short = "Patient Death Date"
* differential.element[=].definition = "Patient Death Date"
* differential.element[=].type.code =   #date
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "Patient.deathDate or Patient.dead"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "Patient.deathDate or Patient.dead"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient.deceased"

/**
 Lab Order Task
*/
* differential.element[+].id = "LabTask"
* differential.element[=].path = "EmrLisLogicalModel.LabTask"
* differential.element[=].short = "EMR-LIS Workflow Task"
* differential.element[=].definition = "A task for tracking the full lifecycle of a EMR-LIS Lab Order Workflow between EMRs and LISs"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisTask"

//LabTask.id
* differential.element[+].id = "LabTask.id"
* differential.element[=].path = "EmrLisLogicalModel.LabTask.id"
* differential.element[=].short = "EMR-LIS Workflow Task Id"
* differential.element[=].definition = "EMR-LIS Workflow Task Id"
* differential.element[=].type.code = #id
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.id"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.id"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisTask.id"

//LabTask.for
* differential.element[+].id = "LabTask.Patient"
* differential.element[=].path = "EmrLisLogicalModel.LabTask.Patient"
* differential.element[=].short = "EMR-LIS Task Patient"
* differential.element[=].definition = "The Patient for whom the lab order was created."
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.for"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.for"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisTask.for"

//LabTask.status
* differential.element[+].id = "LabTask.status"
* differential.element[=].path = "EmrLisLogicalModel.LabTask.Status"
* differential.element[=].short = "EMR-LIS LabTask Status"
* differential.element[=].definition = "EMR-LIS LabTask Status"
* differential.element[=].type.code = #code
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TO DO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "FhirTask.status"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "FhirTask.status"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisTask.status"
