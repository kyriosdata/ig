Instance: terapeuta
InstanceOf: Practitioner
Usage: #example
Description: "Um animal terapeuta não humano"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dr. Romeu</div>"

* meta.profile = Canonical(animal-terapeuta)

* identifier[0].system = $ca
* identifier[0].value = "12.22.333"

* identifier[1].system = $cat
* identifier[1].value = "crmv.codigo.123"

* name.given = "Romeu"
* photo.url = "https://images.unsplash.com/photo-1552053831-71594a27632d"

* active = true
* address.text = "Endereço do Dr. Romeu"

// Invariante impede que seja #billing
* address.use = #home
* telecom.use = #work

* qualification.code.coding.system = Canonical(QualificacaoAnimalTerapeuta)
* qualification.code.coding.code = #alerta

* extension[0].url = $at
* extension[0].valueCodeableConcept = $sct#388445009