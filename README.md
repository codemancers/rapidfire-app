# Demo application for Rapidfire Gem
  Rapidfire gem can be found [here](https://github.com/code-mancers/rapidfire)

# Setup

Runs on Ruby version 2.2.2

```
$ git clone git@github.com:code-mancers/rapidfire-demo
$ cd rapidfire-demo

$ # if you are using mysql, replace Gemfile entry 'pg' to 'mysql2'
$ # create a database.yml file in config folder

$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:admin:create

```

To log in, the path is http://localhost:3000/session