FactoryGirl.define do
  factory :admin_user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email){ |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
    admin true
  end

  factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email){ |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
  end
end
