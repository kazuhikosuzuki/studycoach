FactoryBot.define do
  factory :meeting do
    category {Faker::Team.name}
    start_time{'2020-02-01 15:00:00'}
    finish_time{'2020-02-01 15:00:00'}

    association :user
    
  end
end
