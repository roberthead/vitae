# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attribution do
    name_last { Faker::Name.last_name }
    name_first { Faker::Name.first_name }
    name_middle { [nil, Faker::Name.first_name].sample }
    citation
    editor { false }
    translator { false }
  end
end
