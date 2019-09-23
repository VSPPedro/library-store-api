FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author
    isbn { "#{Faker::Number.number(digits: 9)}-1" }
    price { Faker::Number.decimal(l_digits: 2) }
    short_description { Faker::Lorem.paragraph }
  end
end
