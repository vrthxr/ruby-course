# Rails Course — MVC Study

A study repository focused on Ruby on Rails fundamentals, with emphasis on the **MVC pattern (Model, View, Controller)** and database persistence with **ActiveRecord**.

---

## Goal

Build the knowledge required to work as a junior back-end developer, understanding how Rails organizes business logic, data persistence, and communication between application layers.

---

## What I'm learning

### Model
- ORM and the ActiveRecord pattern
- Migrations and database structure
- Validations
- Model associations (`has_many`, `belongs_to`, etc.)
- Querying with ActiveRecord (`where`, `find`, `includes`, etc.)

### View
- ERB templates
- Layouts and partials
- Helpers

### Controller
- Routing (`config/routes.rb`)
- Actions and the request/response cycle
- `params` and strong parameters
- `before_action` and filters

---

## Stack

| | |
|---|---|
| Language | Ruby 3.2 |
| Framework | Rails 8.1 |
| Database | PostgreSQL |

---

## Running locally

```bash
# Install dependencies
bundle install

# Set up the database
rails db:create
rails db:migrate

# Start the server
rails s
# visit http://localhost:3000
```

---

## Notes

Personal study notes with the most important commands and concepts covered so far — ActiveRecord queries, CRUD operations, and more.

[View notes](NOTES.md)

---

## Context

This repository follows my video course studies. Each learning stage may be on a separate branch as the content progresses.
