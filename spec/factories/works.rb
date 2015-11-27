FactoryGirl.define do
  factory :work do
    title { Faker::Lorem.words([1,2,3,4,5].sample) }
    subtitle { [nil, Faker::Lorem.words([1,2,3,4,5].sample)].sample }
    attribution "Robert Emerson Head"
    creation_flexdate "2015"
  end
end
