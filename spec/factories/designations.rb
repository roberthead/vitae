# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :designation do
    course nil
    subject_code "MyString"
    course_number "MyString"
  end
end
