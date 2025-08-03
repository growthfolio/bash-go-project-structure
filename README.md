# 🛠️ Bash Go Project Structure Generator

## 🎯 Objetivo de Aprendizado
Scripts Bash desenvolvidos para estudar **automação de desenvolvimento** e **padronização de projetos Go**. Implementa geração automática de estruturas arquiteturais como **Clean Architecture**, **Hexagonal**, **Microservices** e **CQRS**, promovendo consistência e produtividade.

## 🛠️ Tecnologias Utilizadas
- **Linguagem:** Bash Script
- **Automação:** Shell scripting
- **Arquiteturas:** Clean, Hexagonal, MVC, CQRS, Microservices
- **Distribuição:** GitHub Raw URLs
- **Padrões:** Project scaffolding, Template generation

## 🚀 Demonstração
```bash
# Execução direta do repositório
bash <(curl -s https://raw.githubusercontent.com/growthfolio/bash-go-project-structure/main/scripts/create-project.sh)

# Resultado: Estrutura completa gerada
meu-projeto-go/
├── cmd/
├── internal/
├── pkg/
├── api/
└── scripts/
```

## 📁 Arquiteturas Disponíveis

### 1. **Clean Architecture**
```
project/
├── cmd/                    # Entry points
├── internal/
│   ├── domain/            # Business entities
│   ├── usecase/           # Business logic
│   ├── repository/        # Data access
│   └── delivery/          # Controllers
├── pkg/                   # Shared packages
└── migrations/            # Database migrations
```

### 2. **Hexagonal Architecture**
```
project/
├── cmd/
├── internal/
│   ├── core/              # Business core
│   ├── ports/             # Interfaces
│   └── adapters/          # External adapters
└── pkg/
```

### 3. **Microservices Structure**
```
project/
├── services/
│   ├── user-service/
│   ├── order-service/
│   └── payment-service/
├── shared/
└── docker-compose.yml
```

## 💡 Principais Aprendizados

### 🔧 Shell Scripting Avançado
- **Funções modulares:** Reutilização de código
- **Validação de entrada:** Tratamento de inputs do usuário
- **Manipulação de arquivos:** Criação automática de estruturas
- **Controle de fluxo:** Condicionais e loops para automação

### 🏗️ Padronização de Projetos
- **Template generation:** Criação consistente de projetos
- **Best practices:** Aplicação de padrões arquiteturais
- **Developer experience:** Redução de setup manual
- **Scalability:** Estruturas preparadas para crescimento

### 📦 Distribuição de Ferramentas
- **Remote execution:** Execução via curl/bash
- **Version control:** Versionamento de scripts
- **Documentation:** Instruções claras de uso
- **Cross-platform:** Compatibilidade com diferentes sistemas

## 🧠 Conceitos Técnicos Estudados

### 1. **Script Modularização**
```bash
# Função para criar estrutura Clean Architecture
create_clean_architecture() {
    local project_name=$1
    
    mkdir -p "$project_name"/{cmd,internal/{domain,usecase,repository,delivery},pkg,migrations}
    
    # Gerar arquivos base
    generate_main_file "$project_name"
    generate_dockerfile "$project_name"
}
```

### 2. **Template Engine Simples**
```bash
# Substituição de variáveis em templates
generate_from_template() {
    local template_file=$1
    local output_file=$2
    local project_name=$3
    
    sed "s/{{PROJECT_NAME}}/$project_name/g" "$template_file" > "$output_file"
}
```

### 3. **Validação e Error Handling**
```bash
# Validação de entrada do usuário
validate_project_name() {
    if [[ ! "$1" =~ ^[a-zA-Z0-9_-]+$ ]]; then
        echo "❌ Nome do projeto inválido!"
        exit 1
    fi
}
```

## 🚧 Desafios Enfrentados
1. **Cross-platform compatibility:** Diferentes shells e sistemas
2. **Template management:** Organização de múltiplos templates
3. **User experience:** Interface intuitiva via terminal
4. **Error handling:** Tratamento robusto de falhas
5. **Maintenance:** Atualização de templates e padrões

## 📚 Recursos Utilizados
- [Advanced Bash Scripting Guide](https://tldp.org/LDP/abs/html/)
- [Go Project Layout](https://github.com/golang-standards/project-layout)
- [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [Hexagonal Architecture](https://alistair.cockburn.us/hexagonal-architecture/)

## 📈 Próximos Passos
- [ ] Adicionar mais arquiteturas (Event Sourcing, DDD)
- [ ] Implementar templates customizáveis
- [ ] Adicionar geração de CI/CD pipelines
- [ ] Criar interface web para geração
- [ ] Implementar validação de estruturas
- [ ] Adicionar suporte a diferentes linguagens

## 🔗 Projetos Relacionados
- [Go PriceGuard API](../go-priceguard-api/) - Exemplo de Clean Architecture
- [Go Antifraud MS](../go-antifraud-ms/) - Microserviço estruturado
- [CryptoTool](../CryptoTool/) - Projeto Go bem estruturado

---

**Desenvolvido por:** Felipe Macedo  
**Contato:** contato.dev.macedo@gmail.com  
**GitHub:** [FelipeMacedo](https://github.com/felipemacedo1)  
**LinkedIn:** [felipemacedo1](https://linkedin.com/in/felipemacedo1)

> 💡 **Reflexão:** Este projeto demonstrou o poder da automação no desenvolvimento. A criação de ferramentas que aceleram o setup de projetos não apenas economiza tempo, mas também garante consistência e aplicação de boas práticas arquiteturais.