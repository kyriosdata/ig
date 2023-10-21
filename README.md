# Guia de Implementação

Um exemplo feito para ilustrar as
atividades típicas de criação de um Guia de Implementação. O Guia já
pronto e publicado, conforme o padrão, encontra-se em

https://fhir.fabrica.inf.ufg.br/ig

## Importante

O cenário contemplado pelo presente guia é hipotético, isto
facilitou a criação do Guia, que não teve que contemplar
um contexto real, profissionais de saúde e outros especialistas
necessários, mas não consultados.

## Acompanhe por aqui...

- Build mais recente deve estar aqui: https://build.fhir.org/ig/kyriosdata/ig/.
- Pouco depois (o melhor possível no github pages): https://kyriosdata.github.io/ig

## Registros disponíveis

- Registrar repositório para build https://github.com/FHIR/auto-ig-builder
- O projeto pode ser encontrado aqui: https://fshschool.org/fsh-finder/
- Dashboard de build: https://fhir.github.io/auto-ig-builder/

## Publicação usando github pages

- Seja **ig** o diretório corrente (repositório)
- Gerar versão do guia no diretório **output** (_\_genonce_)
- Copiar arquivo 404.html para **output**. Este arquivo é uma estratégia para
  fazer o github pages servir páginas "não encontradas", pois orienta o navegador a consultar
  a página _Observation-x.html_ se a requisição é para _Observation/x_.
- Arquivo package-list.json também deve estar em **output**. Está na raiz com a extensão adicional .old apenas para evitar warning. Copiar para **output** sem este sufixo.
- `robocopy output docs /E`
- git add .
- git commit -am "atualização"
- git push

## Não estável...

- Acrescente o trecho abaixo no arquivo `src/main/resources/application.yml`

```
implementationguides:
  animal:
    packageUrl: https://build.fhir.org/ig/kyriosdata/ig/package.tgz
    name: br.ufg.cgis.ig
    version: 0.0.1
```
