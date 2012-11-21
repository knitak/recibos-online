namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Shop.create!(name: "Loja",
                 address: "Rua 1",
                 postalcode: "0000-001")
    99.times do |n|
      name  = Faker::Name.name
      address = "Loja #{n+1}"
      postalcode  = "0000-00#{n+1}"
      Shop.create!(name: name,
                   address: address,
                   postalcode: postalcode)
    end
  end
end