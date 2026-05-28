# Todolist — Ruby on Rails

![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/Rails-CC0000?style=for-the-badge&logo=rubyonrails&logoColor=white)

---

## About

A Rails exercise focused on controllers and RESTful routing. Built from scratch as part of my jr backend studies.

## What was built

- Controllers with all 7 RESTful actions (`index`, `show`, `new`, `create`, `edit`, `update`, `destroy`)
- Nested routes using `resources` with `member` blocks
- JSON responses via `render json:`
- CSRF disabled for API requests with `protect_from_forgery`

## Routes

| Verb | Route | Action |
|---|---|---|
| `GET` | `/posts` | `index` |
| `GET` | `/posts/:id` | `show` |
| `POST` | `/posts` | `create` |
| `PATCH` | `/posts/:id` | `update` |
| `DELETE` | `/posts/:id` | `destroy` |
| `GET` | `/posts/:id/comments` | `comments` |
| `POST` | `/posts/:id/create_comment` | `create_comment` |

## Getting started

```bash
git clone https://github.com/vrthxr/aulas-ruby
cd aula-07-fundamentosrails/3-exercicios/controller-todolist-exercicio/todolist
bundle install
rails server
```
