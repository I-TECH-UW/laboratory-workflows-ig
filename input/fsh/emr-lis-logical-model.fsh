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
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient"

* differential.element[+].id = "Patient.Active"
* differential.element[=].path = "EmrLisLogicalModel.Patient.Active"
* differential.element[=].short = "Patient Active Flag"
* differential.element[=].definition = "Flag for distinguishing between active and not active Patients"
* differential.element[=].type.code = #CodeableConcept
// * differential.element[=].binding.valueSet = TODO
* differential.element[=].binding.strength = #extensible
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisPatient.active"

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
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisTask"

* differential.element[+].id = "LabTask.Patient"
* differential.element[=].path = "EmrLisLogicalModel.LabTask.Patient"
* differential.element[=].short = "EMR-LIS Patient"
* differential.element[=].definition = "The Patient for whom the lab order was created."
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "OpenELIS"
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "OpenMRS"
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "iSantePlus"
* differential.element[=].mapping[=].map = "TODO"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "EmrLisTask.for"
