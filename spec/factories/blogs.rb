FactoryGirl.define do
  factory :blog do
    title 'test用の記事だよ（ファクトリーガール産）'
    text 'testです'
  end

  trait :title_nil do
    title nil
  end

  trait :text_nil do
    text nil
  end

  trait :title_over do
    title 'a' * 51
  end

  trait :text_over do
    text 'a' * 1001
  end
end
