# 📌 Mini Agenda de Contatos

## 🎯 Objetivo
Criar uma aplicação em Ruby que permita **adicionar e listar contatos** usando um arquivo CSV, executada totalmente no terminal.

---

## 📝 Escopo
- **Adicionar contato** (nome, telefone, email).  
- **Listar contatos**.  
- **Buscar contato** (opcional, se quiser dar um passo além).  
- Persistência em `contatos.csv`.  
- Uso de **ARGV** para passar comandos via terminal.  
- Um módulo simples para organizar funções.  

---

## 📂 Estrutura de Diretórios
```
mini_agenda/
├── lib/
│   └── agenda.rb        # módulo com funções básicas
├── data/
│   └── contatos.csv     # arquivo de persistência
└── main.rb              # entrada principal da aplicação
```

---

## 📋 Backlog

1. **Adicionar contato**  
   - Comando: `ruby main.rb add "Maria Silva" "85999999999" "maria@email.com"`  
   - Resultado: contato salvo em `contatos.csv`.

2. **Listar contatos**  
   - Comando: `ruby main.rb list`  
   - Resultado: exibe todos os contatos no terminal.

3. **Buscar contato (opcional)**  
   - Comando: `ruby main.rb search "Maria Silva"`  
   - Resultado: mostra contato ou mensagem "não encontrado".

---

## 📅 Cronograma

| Dia | Tarefa | Entregável |
|-----|--------|------------|
| 1   | Criar estrutura do projeto | `main.rb`, `lib/agenda.rb`, `data/contatos.csv` |
| 2   | Implementar `add` e `list` | Comandos funcionando via terminal |
| 3   | Implementar `search` (opcional) e refatorar | Projeto final pronto |

---

## ✅ Critérios de Aceitação
- O programa roda via terminal com `ruby main.rb`.  
- Saídas são claras e simples.  
- Arquivo `contatos.csv` é atualizado corretamente.  
- Código organizado em módulo.  

---

## 📌 Exemplos de Saída

### Adicionar contato
```bash
ruby main.rb add "Maria Silva" "85999999999" "maria@email.com"
```
Saída:
```
✅ Contato adicionado: Maria Silva
```

### Listar contatos
```bash
ruby main.rb list
```
Saída:
```
📒 Lista de Contatos
1. Maria Silva | 85999999999 | maria@email.com
2. João Souza  | 85988888888 | joao@email.com
```

### Buscar contato (opcional)
```bash
ruby main.rb search "Maria Silva"
```
Saída:
```
🔍 Contato encontrado: Maria Silva | 85999999999 | maria@email.com
```

---