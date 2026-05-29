# Rails Course — Aprofundando View

Study module focused on the **View** layer of the MVC pattern in Ruby on Rails — how Rails renders responses, shares data between controller and template, and organizes reusable interface components.

---

## Goal

Understand how Rails connects controller logic to HTML output through ERB templates, layouts, partials, and helpers — building the foundation for a clean separation between business logic and presentation.

---

## What I'm learning

### ERB Templates
- Embedding Ruby inside HTML with `<%= %>` and `<% %>`
- Iterating over collections to render lists
- Passing data from controller to view via instance variables (`@produtos`)

### Layouts and Partials
- Application layout (`app/views/layouts/application.html.erb`)
- `yield` and how Rails injects view content into the layout
- Extracting reusable pieces with partials (`_partial.html.erb`)

### Helpers
- Built-in Rails helpers (`link_to`, `form_tag`, etc.)
- Custom helpers in `app/helpers/`

### Controller → View communication
- Instance variables set in controller actions are available in the corresponding view
- `session` for persisting state across requests
- `before_action` to share setup logic across multiple actions

---

## Stack

| | |
|---|---|
| Language | Ruby 3.x |
| Framework | Rails 8.x |
| Database | SQLite (development) |

---

## Running locally

```bash
# Install dependencies
bundle install

# Start the server
rails s
# visit http://localhost:3000
```

---

## Context

Fifth module of my Rails fundamentals video course. Previous modules covered Model (ActiveRecord) and Controller (routing, params, filters). This module closes the MVC loop by focusing on the View layer.
