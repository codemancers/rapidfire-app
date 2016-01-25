# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# create admin user
user = User.find_or_create_by!(email: "admin@example.com")
user.password = "password"
user.save!
