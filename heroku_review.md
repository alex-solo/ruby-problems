# Configuring an application for deployment to Heroku

* Prevent application from reloading in production

```ruby
require "sinatra/reloader" if development?
```

* Add Ruby version to Gemfile
* Configure application to use production server (Puma instead of WEBrick)

```ruby
ruby "2.4.0"

group :production do
  gem "puma"
end
```

* Run `bundle install` after making changes to Gemfile

* Create `config.ru` file in root directory
  * tells the server how to start the application (which commands to  run to start the application)

```ruby
require "./book_viewer"
run Sinatra::Application
```

* Create a file called `Procfile` in the root of the project with:
  * Procfile is used by Heroku to determine which processes to run when you use the app
  * Used by Heroku to also determine the web server on which your app runs and port number used by the server to run your app
  * simplified approach used here, usually a separate config file for Puma is used

```ruby
web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
```

* Test the Procfile locally by using `heroku local`
* Visit localhost:5000 to test your application

# Creating Heroku Application

* Create a Heroku application using `heroku apps:create $NAME`, where $NAME is the application name you wish to use.
  * or `heroku create` and Heroku will assign a generic name

* `git push heroku master`

