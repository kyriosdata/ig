Profile: AnimalTerapeuta
Parent: Practitioner
Id: animal-terapeuta
Title: "Animal terapeuta"
Description: "Animal não humano que contribui com assistência à saúde"

* . ^short = "O animal não humano que participa de assistência à saúde"

* ^status = #active

* ^text.status = #generated
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Animal terapeuta</div>"

// P1 e P2
// (passo 1) Especificar a lógica de slicing

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice conforme identifier.code"

// (passo 2) Definir os slices, neste caso, deve existir exatamente um
// identificador junto ao MAPA (Ministério da Agricultura e Pecuária)
// e pelo menos um outro no CRMV (Conselho Regional de Medicina Veterinária).
// Este último deve estar ativo (em uso). 

// Lembre-se de que nosso cenário é hipotético e as decisões
// podem estar até mesmo incorretas. Mesmo assim não prejudicam
// o foco na construção do Guia de Implementação.

* identifier contains mapa 1..1 and crmv 1..
* identifier ^short = "Identificadores do animal terapeuta"

// (passo 3) Restringir o conteúdo do slice

* identifier[mapa].system = $ca
* identifier[crmv].system = $cat

* identifier[mapa] ^short = "O identificador fornecido pelo MAPA"
* identifier[crmv] ^short = "O identificador fornecido pelo CRMV"
* identifier[mapa].system ^short = "O nome único do identificador gerado pelo MAPA"
* identifier[crmv].system ^short = "O nome único do identificador gerado pelo CRMV"

// P3
* active 1..1
* active ^short = "Indica se o presente registro está ativo"

// P4
* name 1..
* name ^short = "O nome pelo qual o animal é conhecido"

// P5
* telecom 1.. 
* telecom ^short = "Contato com quem está próximo, cuida ou responde pelo animal"

// P6
* address 1..
* address ^short = "Endereço onde se localiza o animal"

// P7
* qualification 1..
* qualification.code.coding.code from ValoresQualificacaoAnimalTerapeuta (required)
* qualification ^short = "Identifica as capacidades do animal"

* qualification.code.coding.code ^short = "O código que identifica a qualificação do animal"

// P8
* photo 1..
* photo ^short = "Imagem do animal terapeuta"

// Elementos não incluídos no modelo de informação:
// gender, birthDate e communication.
// Estratégia mais flexível, elementos não vetados,
// exceto comunicação com o animal. 

// Convém reiterar, não se trata de uma "escolha"
// de livre arbítrio de quem está elaborando o guia, 
// conforme sugerem os comentários acima. Em cenário
// real profissionais da veterinária e outros iriam
// estabelecer o que deve ser registrado. 

* communication 0..0

* extension contains 
    $at named especie 1..1 MS

* extension ^short = "Informação adicional exigida para animal terapeuta"

* extension[especie] ^short = "A espécie do animal"
* extension[especie].valueCodeableConcept from $vs-animal-species (required)
* extension[especie].value[x] ^short = "O código que identifica a espécie do animal"

// Invariante (restrição)

* obeys endereco-nao-financeiro