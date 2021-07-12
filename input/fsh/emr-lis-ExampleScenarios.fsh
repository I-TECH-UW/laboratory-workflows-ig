// Based on:
// https://github.com/hl7-be/riziv-inami/blob/master/input/scenarios/ExampleScenario-scenario-allergy.xml

Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: scenario-lab-order-fsh
InstanceOf: ExampleScenario
Usage: #definition
* url = "i-tech-uw.github.io/fhir/riziv/ExampleScenario/scenario-lab-order-fsh"
* version = "0.1.0"
* name = "Lab Order Scenario"
* status = #draft
* experimental = true
* date = "2019-09-11T00:00:00.000+01:00"
* publisher = "I-TECH-UW"
* contact.telecom.system = #url
* contact.telecom.value = "https://github.com/i-tech-uw"
* jurisdiction = $m49.htm#056
* actor[0].actorId = "OrderCreator"
* actor[=].type = #person
* actor[=].name = "Order Creator (Care Provider)"
* actor[+].actorId = "OrderRepository"
* actor[=].type = #entity
* actor[=].name = "Order Repository"
* actor[+].actorId = "SPEC"
* actor[=].type = #person
* actor[=].name = "Order Reciever (Laboratory Technician)"
* instance[0].resourceId = "lab-order-bundle.v0"
* instance[=].resourceType = #Bundle
* instance[=].name = "Lab Order Bundle for Placed Lab Order"
* instance[+].resourceId = "lab-order-bundle.v1"
* instance[=].resourceType = #Bundle
* instance[=].name = "Lab Order Bundle - Order Accepted"
* instance[+].resourceId = "lab-order-bundle.v2"
* instance[=].resourceType = #Bundle
* instance[=].name = "Lab Order Bundle - Results Added"
* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"
* process.title = "Laboratory Ordering Use Case"
* process.description = "See OpenHIE Architecture V3 Section 4.5"
* process.preConditions = "The patient visits their GP and shows signs of illness. The GP will order a set of tests to be performed."
* process.postConditions = "The patient's lab order is persisted in the Order Repository, and includes an updated status of `Completed` and order results."
* process.step[0].operation.name = "Create a new Laboratory Test Order"
* process.step[=].operation.number = "1"
* process.step[=].operation.initiator = "OrderCreator"
* process.step[=].operation.receiver = "OrderRepository"
* process.step[=].operation.response.resourceId = "lab-order-bundle.v0"
* process.step[+].operation.name = "Accept Lab Order"
* process.step[=].operation.number = "2"
* process.step[=].operation.initiator = "OrderReciever"
* process.step[=].operation.receiver = "OrderRepository"
* process.step[=].operation.request.resourceId = "lab-order-bundle.v1"
* process.step[+].operation.name = "Update Lab Order with Results"
* process.step[=].operation.number = "3"
* process.step[=].operation.initiator = "OrderReciever"
* process.step[=].operation.receiver = "OrderRepository"
* process.step[=].operation.request.resourceId = "lab-order-bundle.v2"
* process.step[+].operation.name = "Update Lab Order with Results"
* process.step[=].operation.number = "4"
* process.step[=].operation.initiator = "OrderRepository"
* process.step[=].operation.receiver = "OrderCreator"
* process.step[=].operation.request.resourceId = "lab-order-bundle.v2"