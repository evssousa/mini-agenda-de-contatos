# 📌 Sprint – Projeto "Mini Agenda de Contatos" (Terminal/CLI)

## 🎯 Objetivo
Criar uma aplicação **linha de comando em Ruby** que permita gerenciar contatos (CRUD básico) utilizando **arquivos CSV e módulos**, aplicando os conceitos do módulo 2 do curso.

---

## 📝 Escopo do Projeto
- Aplicação **executada exclusivamente no terminal**.
- Interação via **argumentos (`ARGV`)**:
  - `ruby main.rb add "Nome" "Telefone" "Email"`
  - `ruby main.rb list`
  - `ruby main.rb search "Nome"`
  - `ruby main.rb update "Nome" "NovoTelefone" "NovoEmail"`
  - `ruby main.rb delete "Nome"`
- Saída sempre formatada no terminal (ex: tabela simples ou texto organizado).
- Persistência dos dados em arquivo `.csv`.
- Uso de **módulos** para separar responsabilidades:
  - `Agenda` (operações principais).
  - `CSVHelper` (manipulação de arquivos).
  - `Validator` (validação de email/telefone).
- Operações básicas com arquivos (ler, escrever, apagar).
- Organização em diretórios (`/lib`, `/data`).

---

## 📂 Estrutura de Diretórios
```
mini_agenda/
├── lib/
│   ├── agenda.rb        # módulo principal com funções CRUD
│   ├── contato.rb       # classe ou struct de contato
│   └── csv_helper.rb    # módulo para manipulação de CSV
├── data/
│   └── contatos.csv     # arquivo de persistência
├── main.rb              # entrada principal da aplicação (CLI)
└── README.md            # documentação de uso
```

---

## 📋 Backlog da Sprint (versão CLI)

### **Histórias de Usuário**
1. **Como usuário**, quero adicionar um contato via terminal para armazenar informações.  
   - Critério: comando `ruby main.rb add "Nome" "Telefone" "Email"` adiciona no `contatos.csv`.

2. **Como usuário**, quero listar todos os contatos no terminal.  
   - Critério: comando `ruby main.rb list` exibe tabela com todos os contatos.

3. **Como usuário**, quero buscar um contato pelo nome via terminal.  
   - Critério: comando `ruby main.rb search "Nome"` retorna contato ou mensagem "não encontrado".

4. **Como usuário**, quero atualizar um contato existente via terminal.  
   - Critério: comando `ruby main.rb update "Nome" "NovoTelefone" "NovoEmail"` altera dados no CSV.

5. **Como usuário**, quero remover um contato via terminal.  
   - Critério: comando `ruby main.rb delete "Nome"` remove contato do CSV.

---

## ⚙️ Requisitos Técnicos
- Ruby >= 3.0.
- Uso de `CSV` para manipulação de dados.
- Uso de `ARGV` para argumentos de linha de comando.
- Uso de `File` para operações de arquivo.
- Criação de pelo menos um módulo próprio além do `CSV`.

---

## 📅 Cronograma da Sprint (5 dias)

| Dia | Tarefa | Entregável |
|-----|--------|------------|
| 1   | Setup do projeto e estrutura de diretórios | Projeto inicial com `main.rb`, `lib/`, `data/` |
| 2   | Implementar `add` e `list` | Comandos funcionando via terminal |
| 3   | Implementar `search` e `update` | Busca e atualização funcionando |
| 4   | Implementar `delete` e testes básicos | Remoção funcionando |
| 5   | Refatorar com módulos, escrever README | Projeto final documentado |

---

## ✅ Critérios de Aceitação
- Todos os comandos devem ser executados via terminal com `ruby main.rb`.
- Saídas devem ser claras e formatadas (não apenas texto solto).
- Dados persistidos corretamente em `contatos.csv`.
- Código modularizado em arquivos separados.
- README explica como instalar e usar via terminal.

---

## 📌 Exemplos de Saída no Terminal

### 1. **Adicionar contato**
Comando:
```bash
ruby main.rb add "Maria Silva" "85999999999" "maria@email.com"
```
Saída:
```
✅ Contato adicionado com sucesso!
Nome: Maria Silva | Telefone: 85999999999 | Email: maria@email.com
```

---

### 2. **Listar contatos**
Comando:
```bash
ruby main.rb list
```
Saída:
```
📒 Lista de Contatos
--------------------------------------------
1. Nome: Maria Silva | Telefone: 85999999999 | Email: maria@email.com
2. Nome: João Souza  | Telefone: 85988888888 | Email: joao@email.com
--------------------------------------------
Total de contatos: 2
```

---

### 3. **Buscar contato**
Comando:
```bash
ruby main.rb search "Maria Silva"
```
Saída (quando encontrado):
```
🔍 Contato encontrado:
Nome: Maria Silva | Telefone: 85999999999 | Email: maria@email.com
```

Saída (quando não encontrado):
```
⚠️ Nenhum contato encontrado com o nome: Maria Silva
```

---

### 4. **Atualizar contato**
Comando:
```bash
ruby main.rb update "Maria Silva" "85977777777" "maria.nova@email.com"
```
Saída:
```
✏️ Contato atualizado com sucesso!
Nome: Maria Silva | Telefone: 85977777777 | Email: maria.nova@email.com
```

---

### 5. **Remover contato**
Comando:
```bash
ruby main.rb delete "João Souza"
```
Saída:
```
🗑️ Contato removido com sucesso: João Souza
```

Se não existir:
```
⚠️ Não foi possível remover. Contato "João Souza" não encontrado.
```

---

## 🎯 Observações
- Todas as mensagens são **curtas, claras e amigáveis**.  
- Ícones/emojis ajudam a diferenciar ações (opcional, mas deixa mais intuitivo).  
- O CSV é atualizado a cada operação, garantindo persistência.  