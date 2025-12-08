
# Mini Agenda de Contatos

Aplicação simples de linha de comando para gerenciar contatos usando **CSV**.

---

## Comandos

### Adicionar contato
```bash
ruby main.rb add "Nome" "Telefone" "Email"
```

### Listar contatos
```bash
ruby main.rb list
```

### Buscar contato
```bash
ruby main.rb search "Nome"
```

---

## Estrutura
```
mini_agenda/
├── lib/agenda.rb
├── data/contatos.csv
└── main.rb
```

---

## Requisitos
- Ruby 3.0+
- Biblioteca padrão `CSV`

---

## Saídas esperadas
- `add`: ✅ Contato adicionado: Nome
- `list`: 📒 Lista de Contatos
- `search`: 🔍 Contato encontrado ou ⚠️ Não encontrado
```