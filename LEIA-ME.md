# Estrutura de Projetos Go com Bash

Este repositório contém scripts Bash para automatizar a criação de várias estruturas de projetos Go. Você pode rapidamente gerar estruturas como Arquitetura Limpa, MVC, Monolítica, Hexagonal, Microsserviços e CQRS, garantindo consistência e reduzindo o esforço manual no setup inicial.

## Como Usar Diretamente do Repositório Remoto

Você pode executar o script diretamente deste repositório sem precisar cloná-lo. Siga os passos abaixo:

1. Abra o terminal e navegue até o diretório onde deseja criar o projeto Go.
2. Execute o seguinte comando para baixar e executar o script:

   ```bash
   bash <(curl -s https://raw.githubusercontent.com/felipemacedo1/bash-go-project-structure/main/scripts/create-project.sh)
   ```

3. O script solicitará que você insira o nome do projeto e escolha uma arquitetura. Basta inserir o nome do projeto e selecionar o número correspondente à arquitetura desejada.

## Arquiteturas Disponíveis

Você pode gerar estruturas de projetos Go para as seguintes arquiteturas:

1. **Arquitetura Limpa**: Encoraja uma clara separação entre domínio, casos de uso e infraestrutura.
2. **Estrutura de Microsserviços**: Para sistemas modulares que operam de forma independente e se comunicam via APIs.
3. **Estrutura Hexagonal**: Foca em desacoplar a lógica de negócios dos recursos externos.
4. **Estrutura MVC**: Segue o padrão clássico de Model-View-Controller.
5. **Estrutura Monolítica**: Uma arquitetura unificada onde todos os componentes estão integrados.
6. **Estrutura CQRS**: Segrega operações de leitura e escrita em modelos distintos.

## Estrutura de Diretórios Criada

O script gera uma estrutura de diretórios de acordo com a arquitetura selecionada, que inclui (mas não se limita a) os seguintes diretórios:

- **cmd/**: O ponto de entrada da aplicação.
- **internal/**: Para a lógica de negócios e módulos principais.
- **pkg/**: Contém pacotes compartilhados que podem ser usados em outros projetos.
- **api/**: Abriga os arquivos relacionados à API.
- **migrations/**: Para gerenciar migrações de banco de dados.
- **scripts/**: Scripts utilitários para Docker, Makefile, etc.

## Exemplo

Para criar um novo projeto Go chamado `meu-app-go`:

1. Execute o script usando:
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/felipemacedo1/bash-go-project-structure/main/scripts/create-project.sh)
   ```

2. Insira `meu-app-go` quando solicitado o nome do projeto.

3. Selecione a arquitetura desejada a partir da lista apresentada.

A estrutura de diretórios será criada dentro de uma pasta chamada `meu-app-go`.

## Customização e Contribuição

Sinta-se à vontade para modificar o script ou a estrutura gerada de acordo com as necessidades do seu projeto. Contribuições, sugestões ou relatos de problemas são bem-vindos—abra uma issue ou envie um pull request para contribuir.

---

