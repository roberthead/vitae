# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :annotation do
    citation
    body_html "I read <emphasis>this</emphasis> article."
  end
end
