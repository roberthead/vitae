# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attribution do
    name_last { FFaker::Name.last_name }
    name_first { FFaker::Name.first_name }
    name_middle { [nil, FFaker::Name.first_name].sample }
    citation
    editor { false }
    translator { false }
  end
end
