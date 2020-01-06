FactoryBot.define do
  factory :reading_goal do
    title { Faker::Book.title }
    number_pages { Faker::Number.positive }
    deadline { Faker::Date.between(from: 2.days.ago, to: Date.today) }
    pages_per_day { Faker::Number.positive }
  end
end