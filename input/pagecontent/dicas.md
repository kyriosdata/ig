### Auto builder

Durante o desenvolvimento de um guia é natural que seja
divulgado o trabalho em andamento. Isto é oferecido
pelo [Auto-builder](https://github.com/FHIR/auto-ig-builder). Veja
como configurar neste link.

Observação, o nome do _branch_ deve ser _master_. Quando se cria
repositórios no Github o padrão corrente é _main_. Neste caso,
terá que renomear para _master_.

O resultado pode ser
acessado em [https://build.fhir.org/ig/kyriosdata/ig/](https://build.fhir.org/ig/kyriosdata/ig/).

### Ferramentas

O conjunto de ferramentas abaixo é suficiente para produzir os artefatos que fazem parte de um Guia de Implementação e, adicionalmente, gerar o portal correspondente.

- Editor de FHIR Shorthand (fsh). A sugestão é o [Visual Code](https://code.visualstudio.com/) e as extensões FHIR Shorthand ([aqui](https://marketplace.visualstudio.com/items?itemName=MITRE-Health.vscode-language-fsh)) e FHIR Tools ([aqui](https://marketplace.visualstudio.com/items?itemName=Yannick-Lagger.vscode-fhir-tools#:~:text=Vscode%2Dfhir%2Dtools%20is%20an,with%20the%20permission%20of%20HL7.)).
- Plataformas utilizadas: (a) [Node.js](https://nodejs.org/en) (inclui _npm_) e (b) Java, pelo menos a versão 17 ([aqui](https://adoptium.net/)).
- Apache Maven ([aqui](https://maven.apache.org/))
- Instalar Sushi (`npm install -g fsh-sushi`)
- Clientes para montagem e execução de requisições http(s): [httpie](https://httpie.io/cli) para linha de comandos e [Postman](https://www.postman.com/) aplicativo gráfico.
- Instalar Ruby e Jekyll (veja [aqui](https://jekyllrb.com/docs/installation/#guides)).
- Instalar FHIRPath (`npm install -g fhirpath`). Documentação de uso [aqui](https://github.com/hl7/fhirpath.js/).
- Instalar o validador (_validator_cli.jar_). Documentação de uso [aqui](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator).
- Instalar o IG Publisher ([publisher](https://github.com/HL7/fhir-ig-publisher)). Documentação de uso [aqui](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).

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
repositório empregado para criação
do guia: https://github.com/kyriosdata/ig.

````
{
  "name": "Animal (não humano) terapeuta",
  "category": "Research",
  "npm-name": "animal.terapeuta",
  "description": "Cadastro de animais terapeutas visando a localização pelas habilidades.",
  "authority": "CGIS (UFG)",
  "country": "br",
  "history": "https://fhir.fabrica.inf.ufg.br/ig/history.html",
  "language": ["pt"],
  "canonical": "https://fhir.fabrica.inf.ufg.br/ig",
  "ci-build": "https://build.fhir.org/ig/kyriosdata/ig/",
  "editions": [
    {
      "name": "Releases",
      "ig-version": "0.0.1",
      "package": "animal.terapeuta#0.0.1",
      "fhir-version": ["4.0.1"],
      "url": "https://fhir.fabrica.inf.ufg.br/ig"
    }
  ]
}
```

Segundo e último. Requisitado o acréscimo desta informação via pull request,
conforme [aqui](https://github.com/FHIR/ig-registry/pull/212#event-10378476168). Neste link também se observa que a requisição foi aprovada.

Após estes passos pode-se localizar o presente guia no registro

````
