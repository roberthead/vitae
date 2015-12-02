# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :annotation do
    citation
    body_html "I read <em>this</em> article."
  end
end
