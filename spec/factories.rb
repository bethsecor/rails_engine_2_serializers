FactoryGirl.define do
  factory :merchant do
    sequence(:name) { |n| "merchant_#{n}"}
    created_at "2012-03-27 14:54:09 UTC"
    updated_at "2012-03-27 14:54:09 UTC"
  end
end
