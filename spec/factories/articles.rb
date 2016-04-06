FactoryGirl.define do
  factory :article do
    title 'a' * 50
    body 'a' * 1000
  end
end
