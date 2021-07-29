Profile: LaboratoryLabComposition
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: laboratory-composition
Title: "Laboratory Order Composition"
Description: "This composition packages information needed to facilitate lab order communication between clinical systems in Botswana."
* subject 1..1      //there must be a subject
* subject only Reference(LaboratoryPatient)
* author 1..1
* author only Reference(LaboratoryPractitioner)

//discriminator for the sections - slice on the section code...
* section ^slicing.discriminator.type = #type
* section ^slicing.discriminator.path = "entry"
* section ^slicing.rules = #open

* section contains 
    labTask 1..1 and
    labOrders 0..1 and 
    labResults 0..1

* section 1..*
* section.section 0..0          //can't have sub sections
* section.emptyReason 0..0  

* section[labTask].title = "Lab Task"
* section[labTask].entry only Reference(LaboratoryTask)
* section[labTask].entry MS

* section[labOrders].title = "Lab Orders"
* section[labOrders].entry only Reference(LaboratoryServiceRequest)
* section[labOrders].entry MS

* section[labResults].title = "Results"
* section[labResults].entry only Reference(LaboratoryDiagnosticReport)
* section[labResults].entry MS