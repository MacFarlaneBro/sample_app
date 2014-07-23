namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "admin",
                 email: "doug.brodie@masteradviser.co.uk",
                 password: "Now is the time for all good men",
                 password_confirmation: "Now is the time for all good men",
                 admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name: name,
                   email: email, 
                   password: password,
                   password_confirmation: password)
    end
  end
end
