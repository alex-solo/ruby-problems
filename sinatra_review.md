# Starting Sinatra projects...

* Create a new directory and set up a file structure
```ruby
.
├── Gemfile
├── Gemfile.lock
├── public
│   └── stylesheet.css
├── sample_app.rb
├── test
│   └── sample_app_test.rb
└── views
    ├── index.erb
    └── layout.erb
```

* Create a Gemfile

```ruby
# Gemfile
source "https://rubygems.org"

gem "sinatra"
gem "sinatra-contrib"
```

* Create your application file

```ruby
# sample.rb
require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index
end
```

* Run `bundle install` in terminal
* Start your application in terminal with `bundle exec ruby sample.rb`
