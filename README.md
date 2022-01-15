# Getting Started with Rails

1. install/update if needed :
   - ruby
   - sqlite3
   - node
   - yarn
   - rails

2. => generator : `$ rails new blog`

### creating the first route (./config/routes.rb)
   Routes are rules written in a Ruby DSL (Domain-Specific Language)
   Controllers are Ruby classes, and their public methods are actions
   Views are templates, usually written in a mixture of HTML and Ruby
   => generator: `bin/rails generate controller Articles index --skip-routes` (route already created manually)
