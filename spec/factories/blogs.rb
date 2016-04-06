FactoryGirl.define do
  factory :blog do
    title 'a' * 50
    body 'a' * 1000
  end
end
