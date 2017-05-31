# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :enrollment do
    course
    instructor { FFaker::Name.name }
    quarter_flexdate { "#{2015 - rand(3)}" }
    mark { ["A", "B", "P"].sample }
  end
end
