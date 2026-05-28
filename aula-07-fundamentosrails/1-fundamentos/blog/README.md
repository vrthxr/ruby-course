# Blog - Rails Fundamentals

Learning project built while studying the fundamentals of Ruby on Rails. Part of a structured Ruby on Rails course.

## What this covers

- Rails app structure (MVC)
- Routing (`config/routes.rb`) — `root`, `get`, named routes
- Controllers and instance variables passed to views
- ERB templates and basic view logic (`<% %>`, `<%= %>`)
- Layouts and partials (`_navbar.html.erb`)
- Bootstrap integration via CDN (navbar, list-group, accordion)

## Current state

No database yet — data is hardcoded in the controllers as plain Ruby arrays. Two routes exist:

| Route | Controller#Action | What it shows |
|-------|-------------------|---------------|
| `/` | `home#index` | List of posts |
| `/student` | `student#index` | List of students with accordion |

## Stack

- **Ruby** 3.2.3
- **Rails** 8.1
- **SQLite** (configured, not used yet)
- **Hotwire** (Turbo + Stimulus) — default, not yet exercised
- **Propshaft** asset pipeline
- **Bootstrap** 5 via CDN

## Running locally

```powershell
bundle install          # install gems
rails db:prepare        # create and migrate the database
rails server            # start the server at http://localhost:3000
```

