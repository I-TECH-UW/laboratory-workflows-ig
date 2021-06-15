Profile: EmrLisServiceRequest
Parent: ServiceRequest
Id: emr-lab-service-request
Title: "EMR-LIS Service Request"
Description: "A service request created by an EMR representing an order for an LIS system"
* code 1..1
* code.coding 1..*
// TODO: Figure out how to slice on system, and make sure at least one is LOINC
* code.coding from EmrLisOrderCodeVS
* subject only Reference(EmrLisPatient)
* encounter 1..1
* encounter only Reference(EmrLisEncounter)
