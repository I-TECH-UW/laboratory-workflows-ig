Profile: LaboratoryServiceRequest
Parent: ServiceRequest
Id: laboratory-service-request
Title: "Laboratory Service Request"
Description: "A service request created by an EMR representing an order for an LIS system"
* code 1..1
* code.coding 1..*
// TODO: Figure out how to slice on system, and make sure at least one is LOINC
* code.coding from LaboratoryOrderCodeVS
* subject only Reference(LaboratoryPatient)
* encounter 1..1
* encounter only Reference(LaboratoryEncounter)
