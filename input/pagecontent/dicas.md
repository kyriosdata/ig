### Notas

Notas podem ser inseridas no início da página ou ao final.
No início o conteúdo deve estar em um arquivo como
**OperationDefinition-qualification-intro.md** para uma
instância de OperationDefinition cujo identificador é **qualification**.

Ao final o conteúdo deve ser depositado em um arquivo como
**OperationDefinition-qualification-notes.md**.

### NPM Package

A publicação do presente guia foi realizada no registro
https://fhir.org/guides/registry/. Para tal, conforme as 
orientações em https://github.com/FHIR/ig-registry, foram realizados dois passos.

Primeiro foi produzido o seguinte conteúdo, disponível no
diretório **ig** do repositório empregado para criação 
do guia: https://github.com/kyriosdata/profiling. 

```
{
  "name": "Animal terapeuta (não humano)",
  "category": "Research",
  "npm-name": "animal.terapeuta",
  "description": "Cadastro de animais terapeutas visando a facilidade de localização deles pelas habilidades.",
  "authority": "CGIS (UFG)",
  "country": "br",
  "history": "https://kyriosdata.github.io/profiling/history.html",
  "language": ["pt"],
  "canonical": "https://kyriosdata.github.io/profiling",
  "ci-build": "https://kyriosdata.github.io/profiling",
  "editions": [
    {
      "name": "Releases",
      "ig-version": "0.1.0",
      "package": "animal.terapeuta#0.1.0",
      "fhir-version": ["4.0.1"],
      "url": "https://kyriosdata.github.io/profiling"
    }
  ]
}```

Segundo e último. Requisitado o acréscimo desta informação via pull request,
conforme [aqui](https://github.com/FHIR/ig-registry/pull/212#event-10378476168). Neste link também se observa que a requisição foi aprovada. 

Após estes passos pode-se localizar o presente guia no registro

