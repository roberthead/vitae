# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :citation do
    title { FFaker::Lorem.sentence }
    medium "Print"
  end
end
