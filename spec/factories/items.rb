FactoryBot.define do 
  factory :item do
    name { Faker::Artist.name}
    done { false } 
    todo_id { nil }
  end
end
