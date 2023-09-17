CodeSystem: QualificacaoAnimalTerapeuta
Id: qualificacao
Title: "Qualificação de animal terapeuta"
Description:  "Vocabulário para designar as capacidades de um animal terapeuta"

* ^text.status = #generated
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Códigos para
habilidades de animais terapeutas</div>"

// URL definida com base na URL canônica do projeto

* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^valueSet = Canonical(vs-qualificacao)
* ^caseSensitive = true

* #emocional "Emocional"
    "Apoio emocional"
* #terapia "Animal para terapia"
    "Treinado para interagir com pacientes em ambiente de saúde"
* #servico "Serviço"
    "Treinados para auxiliar pessoas com deficiências físicas"
* #detector "Detector de doenças"
    "Apto a detectar doenças, por exemplo, pelo odor"
* #alerta "Alerta"
    "Apto a detectar sinais de crise e emitir alerta."