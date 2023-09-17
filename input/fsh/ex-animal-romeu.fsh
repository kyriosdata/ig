Instance: romeu
InstanceOf: Patient
Usage: #example
Description: "Um exemplo de animal"
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dr. Romeu</div>"

* meta.profile = Canonical(animal)

* identifier[0].system = $ca
* identifier[0].value = "12.22.333"

* name.given = "Romeu"
* deceasedBoolean = false
* photo.url = "https://images.unsplash.com/photo-1552053831-71594a27632d"

* extension[0].url = $animal
* extension[0].extension[0].url = "species"
* extension[0].extension[0].valueCodeableConcept = $animal-species#canislf "Dog"
* extension[0].extension[1].url = "breed"
* extension[0].extension[1].valueCodeableConcept = $animal-breed#gret "Golden Retriever"
* extension[0].extension[2].url = "genderStatus"
* extension[0].extension[2].valueCodeableConcept = $animal-genderstatus#neutered

* address.text = "Endereço do Dr. Romeu"
* contact.name.text = "Tutora Marília"
* generalPractitioner = Reference(clinica-veterinaria)