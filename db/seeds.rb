# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company = Company.create!(
                name:  "s",
                website: "https://www.github.com",
                address: "fff",
                size:"1-50",
                founded:"1970",
                revenue:"500",
                synopsis:"hello"

)
company.users.create!(name:  "admin",
             email: "admin@admin.com",
             password:              "password",
             password_confirmation: "password",
             admin: true,
             realtor: true,
             hunter: true,
             phone: "1234567890",
             method: "text",
             company_id: 1

)

