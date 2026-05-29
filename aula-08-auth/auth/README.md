# Rails Course — Authentication

Study module focused on **authentication** in Ruby on Rails — how to identify users, store passwords securely, and protect actions behind a login. Built on top of a simple Articles CRUD that serves as the resource to be protected.

---

## Goal

Understand how Rails handles user authentication from the ground up — secure password storage, sessions, login/logout flow, and restricting access to certain actions — before reaching for higher-level gems.

---

## What I'm learning

### Secure passwords
- `has_secure_password` and the `bcrypt` gem
- Why passwords are hashed (one-way) and never stored in plain text

### Sessions
- `session` for persisting the logged-in user across requests
- Login and logout flow

### Protecting actions
- `before_action` to require authentication
- Redirecting unauthenticated users

### Base resource
- Articles scaffold (CRUD) used as the protected resource

---

## Stack

| | |
|---|---|
| Language | Ruby 3.2 |
| Framework | Rails 8.1 |
| Database | PostgreSQL |

---

## Running locally

```powershell
# Install dependencies
bundle install

# Set up the database
rails db:create
rails db:migrate

# Start the server
rails s
# visit http://localhost:3000
```

> **Windows + PostgreSQL 18 note:** `config/initializers/pg_sync.rb` forces the `pg` gem to use libpq's synchronous connection. The gem's default async connect breaks against PostgreSQL 18 on Windows ("server closed the connection unexpectedly"). Remove it once the gem or Postgres fixes the async path.

---

## Current state

Only the Articles scaffold exists so far — authentication is being added on top of it. There is no `User` model or login flow yet.

---

## Context

Eighth module of my Rails studies. Previous modules covered the full MVC cycle (Model, Controller, View). This module moves into authentication, starting from Rails' built-in tools rather than a gem like Devise.
