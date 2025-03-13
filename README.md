# sinatra-template

Use this repository to create new Sinatra apps. 

Optionally, to use `ActiveRecord` for database operations, add to the `app.rb`:

```ruby
require "sinatra/activerecord"
```

And in the `config/environment.rb` file add this code block:

```ruby
configure do
  # setup a database connection
  set(:database, { adapter: "sqlite3", database: "db/development.sqlite3" })
end
```
#test <script src="https://gist.github.com/bellarosewilson/01760c510220386c7a28d61767714973.js"></script>
