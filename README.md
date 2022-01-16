# Getting Started with Rails

1. install/update if needed :

   - ruby
   - sqlite3
   - node
   - yarn
   - rails

2. => generator : `rails new blog`

### creating the first route (./config/routes.rb)
Routes are rules written in a Ruby DSL (Domain-Specific Language)
Controllers are Ruby classes, and their public methods are actions
Views are templates, usually written in a mixture of HTML and Ruby
=> generator: `bin/rails generate controller Articles index --skip-routes` (route already created manually)

### generating a model / DB migrations

=> generator : `bin/rails generate model Article title:string body:text`

note: Migrations are used to alter the structure of an application's database. In Rails applications, migrations are written in Ruby so that they can be database-agnostic
table structure / data type:

- `t.id` is automaticaly created
- `t.title` String
- `t.body` Text
- `t.timestamps` creates two extra columns : `create_at` and `updated_at`
  run the migration with `bin/rails db:migrate`

implement all CRUD operation on the resource :article

### add a second Model

=> generator : `bin/rails generate model Comment commenter:string body:text article:references`
run the migration with `bin/rails db:migrate`
=> generator : `bin/rails generate controller Comments`

refactoring using Partials to render forms


