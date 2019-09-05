# Rapidfire Client

Welcome to Rapidfire! This is a client side implementation of the rapidfire gem which can be used for a demo or could be used to deploy as your own deployment to heroku.

The demo app is hosted on heroku [here](https://rapidfire.herokuapp.com)

**Note:** This app currently uses a particular branch(other than master) from the rapidfire gem, as version 4 has not been released yet which supports rails 6.

This app uses rails version 6.0 and bulma css. It is responsive & works nicely with mobiles too.

#### Deployments

As of now, heroku deployments are supported out of the box. You just need to click the button below and it will be automatically deployed for you.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

As heroku only allows 10000 rows for postgres in free tier, later, for larger size databases, we'll be adding deployment support for kubernetes with helm charts and an option to deploy to [Dockup](https://getdockup.com/).

#### Development

##### Docker

You can easily run this demo app on your local with docker-compose:
```bash
docker-compose up
```
By default, port 3000 is exposed, visit http://localhost:3000 or with http://rapidfire-client.test:3000 if you have something like dnsmasq setup.

If you don't prefer docker, then you could run rails server locally with a database you prefer by updating the database.yml file.

#### TODOs

1. Add helm chart for kubernetes deployments
2. Add seed file to add a default admin user
3. Create the results page using d3js
