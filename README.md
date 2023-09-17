# Guia de Implementação

Um exemplo feito para ilustrar as
atividades típicas de criação de um Guia de Implementação.

## Importante

O cenário contemplado pelo presente guia é hipotético, isto
facilitou a criação do Guia, que não teve que contemplar
um contexto real, profissionais de saúde e outros especialistas
necessários, mas não consultados.

## Para fazer...

- Nao ocorre carga correta do pacote conforme configurado abaixo em application.yml com
```
implementationguides:
    ##    example from registry (packages.fhir.org)
      animal:
        packageUrl: https://kyriosdata.github.io/profiling/package.tgz
        name: at
        version: 0.1.1
``` 

## Publicação usando github pages

- Seja **ig** o diretório corrente
- Gerar versão do guia no diretório **output** (_\_genonce_)
- Copiar arquivo 404.html para **output**. Este arquivo é uma estratégia para
  fazer o github pages servir páginas "não encontradas", pois orienta o navegador a consultar
  a página _Observation-x.html_ se a requisição é para _Observation/x_.
- Arquivo package-list.json também deve estar em **output**. Está na raiz com a extensão adicional .old apenas para evitar warning. Copiar para **output** sem este sufixo.
- Ir para diretório temporário 
- git clone https://github.com/kyriosdata/profiling
- cd profiling
- git checkout gh-pages
- (windows) robocopy ig\output . /E
- git add .
- git commit -am "atualização"
- git push
- Não se pode excluir o que não está no diretório output, caso contrário, será removido .git
- Adicionar, realizar o commit e push.
