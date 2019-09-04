namespace :db do
  namespace :admin do
    ADMIN_EMAIL = "admin@example.com"

    desc "Creates Admin for Rapidfire demo"
    task create: :environment do
      User.create!(email: ADMIN_EMAIL, password: "password")
    end

    desc "Destroys created Admin"
    task destroy: :environment do
      User.where(email: ADMIN_EMAIL).destroy_all
    end
  end
end
