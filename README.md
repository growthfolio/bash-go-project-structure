
# Estrutura de Projetos Go em Bash

Este repositório contém scripts Bash para automatizar a criação de diversas estruturas de projetos Go. Você pode gerar rapidamente estruturas como Clean Architecture, MVC, Monolith, Hexagonal, Microservices e CQRS, garantindo consistência e reduzindo o esforço manual no processo de configuração.

## Como Usar Diretamente do Repositório Remoto

Você pode executar o script diretamente deste repositório sem precisar cloná-lo. Siga estes passos:

1. Abra o terminal e navegue até o diretório onde deseja criar seu projeto Go.
2. Execute o seguinte comando para baixar e executar o script:

   ```bash
   bash <(curl -s https://raw.githubusercontent.com/growthfolio/bash-go-project-structure/main/scripts/create-project.sh)
   ```

3. O script pedirá para você inserir o nome do projeto desejado e escolher uma arquitetura. Insira o nome do projeto e selecione o número correspondente à arquitetura.

## Arquiteturas Disponíveis

Você pode gerar estruturas de projetos Go para as seguintes arquiteturas:

1. **Clean Architecture**: Enfatiza uma separação clara entre domínio, casos de uso e infraestrutura.
2. **Microservices Structure**: Para sistemas modulares que operam de forma independente e se comunicam via APIs.
3. **Hexagonal Structure**: Foca no desacoplamento da lógica central de negócios das dependências externas.
4. **MVC Structure**: Segue o padrão clássico de Model-View-Controller.
5. **Monolith Structure**: Uma arquitetura unificada onde todos os componentes estão integrados.
6. **CQRS Structure**: Separa operações de leitura e escrita em modelos distintos.

## Estrutura de Diretórios Criada

O script gerará uma estrutura de diretórios personalizada para a arquitetura selecionada, incluindo (mas não se limitando a) os seguintes diretórios:

- **cmd/**: O ponto de entrada para sua aplicação.
- **internal/**: Para a lógica de negócios principal e módulos.
- **pkg/**: Contém pacotes compartilhados que podem ser usados por outros projetos.
- **api/**: Armazena arquivos relacionados à API.
- **migrations/**: Para gerenciamento de migrações de banco de dados.
- **scripts/**: Scripts utilitários para Docker, Makefile, etc.

## Exemplo

Para criar um novo projeto Go chamado `meu-app-go`:

1. Execute o script usando:
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/growthfolio/bash-go-project-structure/main/scripts/create-project.sh)
   ```

2. Insira `meu-app-go` quando solicitado o nome do projeto.

3. Escolha a arquitetura desejada na lista.

A estrutura de diretórios será criada em uma pasta chamada `meu-app-go`.

## Personalização e Contribuição

Sinta-se à vontade para modificar o script ou a estrutura gerada de acordo com as necessidades específicas do seu projeto. Contribuições, sugestões ou relatórios de bugs são bem-vindos—abra uma issue ou envie um pull request para contribuir.

---
