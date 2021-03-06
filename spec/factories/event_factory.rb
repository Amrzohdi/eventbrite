FactoryBot.define do
  factory :event do
    name 'event name'
    association :venue
    association :user
    start_date {DateTime.now.yesterday }
    end_date {DateTime.now}
  end
end
