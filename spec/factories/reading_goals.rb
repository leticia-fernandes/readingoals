FactoryBot.define do
  factory :reading_goal do
    title { "Joe" }
    number_pages { "100" }
    deadline { 10.days.from_now }
    pages_per_day { "10" }
  end
end