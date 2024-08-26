
# Estrutura de Projetos Go com Bash

Este repositório contém scripts Bash para automatizar a criação de várias estruturas de projetos Go, incluindo arquitetura limpa, MVC, monolito, hexagonal, microsserviços e arquiteturas CQRS.

## Como Usar Diretamente do Repositório Remoto

Você pode usar o script diretamente deste repositório sem precisar cloná-lo primeiro. Siga os passos abaixo:

1. Abra o terminal e navegue até o diretório onde deseja criar seu projeto Go.

2. Execute o seguinte comando, substituindo `nome-do-seu-projeto` pelo nome desejado para o seu projeto e selecionando a arquitetura desejada pelo número:

   ```bash
   bash <(curl -s https://raw.githubusercontent.com/felipemacedo1/bash-go-project-structure/main/scripts/create-project.sh)
   ```

3. O script solicitará que você insira o nome do projeto e selecione a arquitetura desejada pelo número. A estrutura de diretórios da arquitetura selecionada será criada no diretório atual.

## Arquiteturas Disponíveis

O script permite criar estruturas de projeto para as seguintes arquiteturas:

1. Arquitetura Limpa
2. Estrutura de Microsserviços
3. Estrutura Hexagonal
4. Estrutura MVC
5. Estrutura Monolítica
6. Estrutura CQRS

## Estrutura de Diretórios Criada

Dependendo da arquitetura selecionada, o script criará uma estrutura de diretórios que inclui alguns ou todos os seguintes:

- cmd/
- internal/
- pkg/
- api/
- migrations/
- scripts/

## Exemplo

Se você quiser criar um projeto chamado `meu-app-go`, siga as instruções:

1. Execute o script:
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/felipemacedo1/bash-go-project-structure/main/scripts/create-project.sh)
   ```

2. Insira `meu-app-go` como o nome do projeto quando solicitado.

3. Selecione a arquitetura desejada inserindo o número correspondente.

Isso criará a estrutura de diretórios dentro de uma pasta chamada `meu-app-go`.

## Informações Adicionais

Sinta-se à vontade para personalizar o script ou a estrutura gerada para atender às necessidades do seu projeto. Se você encontrar algum problema ou tiver sugestões, por favor, abra uma issue ou contribua para o repositório.
