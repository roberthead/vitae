FactoryGirl.define do
  factory :work do
    title { FFaker::Lorem.words([1,2,3,4,5].sample) }
    subtitle { [nil, FFaker::Lorem.words([1,2,3,4,5].sample)].sample }
    creation_flexdate "2015"
  end
end
