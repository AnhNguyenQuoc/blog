FactoryBot.define do
  factory :article do 
    title { Faker::Name.unique.name}
    description { Faker::Lorem.sentence }
    link { Faker::Internet.domain_name }
  end
end
