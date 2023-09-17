Instance: qualification
InstanceOf: OperationDefinition
Title: "Definição de busca por qualificação de animal terapeuta"
Description: "Definição da operação de busca por qualificação de animal terapeuta"
Usage: #definition

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Busca por qualificação</div>"

// URL definida com base na URL canônica do projeto

* version = "1.0.0"

* name = "LocalizaAnimalTerapeutaPorQualificacao"
* status = #active
* kind = #operation
* date = "2023-09-06T09:29:23+11:00"
* publisher = "CGIS (UFG) - Treinamento em FHIR"
* experimental = true
* code = #qualification
* system = false
* type = true
* instance = true
* comment = "Detalha a operação de busca, baseada na qualificação, por animal que contribui com assistência à saúde."
* resource = #Practitioner

* parameter[0].name = #code
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "O código da qualificação de interesse"
* parameter[0].type = #code
* parameter[0].binding.strength = #required
* parameter[0].binding.valueSet = Canonical(ValoresQualificacaoAnimalTerapeuta)

* parameter[1].name = #return
* parameter[1].use = #out
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "Instâncias de Practitioner referente a animais que possuem a qualificação indicada."
* parameter[1].type = #Bundle
