namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Florian Sahling",
                         email: "admin@om-apps.de",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)
  end
end