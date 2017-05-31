# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    title { FFaker::Lorem.words(5).join(' ') }
    college "Southern Oregon University"
  end
end
