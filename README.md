# 📝 Projeto Notebook Lending System

Projeto simples de **Empréstimo de Notebook** (em desenvolvimento)

---

## 💻 Tecnologias usadas

- Ruby 3.3.5  
- Rails 8.0.2  
- Banco de dados com suporte SQL  

---

## 🚀 Funcionalidades

- Cadastro, listagem e edição de notebooks com atributos obrigatórios e opcionais  
- Atualização automática do status para notebooks disponíveis  
- Três status possíveis para o notebook: **disponível**, **emprestado** e **indisponível**  
- Validação de unicidade para número de série, patrimônio, marca e identificação do equipamento  

---

## ▶️ Como rodar o projeto

O projeto está deployado no Fly.io. Para acessar, clique no link:  
👉 [https://notebook-proj.fly.dev/notebooks](https://notebook-proj.fly.dev/notebooks)

### Rotas principais

| Ação                  | URL                                      |
|-----------------------|------------------------------------------|
| 📋 Listagem de notebooks | [https://notebook-proj.fly.dev/notebooks](https://notebook-proj.fly.dev/notebooks) |
| ✏️ Criar notebook novo    | [https://notebook-proj.fly.dev/notebooks/new](https://notebook-proj.fly.dev/notebooks/new)   |
| 🛠️ Editar notebook       | https://notebook-proj.fly.dev/notebooks/:id/edit  |
| 🗑️ Remover notebook      | https://notebook-proj.fly.dev/notebooks/:id/delete |

---
