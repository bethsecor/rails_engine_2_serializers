FactoryGirl.define do
  factory :merchant do
    sequence(:name) { |n| "merchant_#{n}"}
    created_at "2012-03-27 14:54:09 UTC"
    updated_at "2012-03-27 14:54:09 UTC"

    factory :merchant_with_items do
      transient do
        item_count 2
      end

      after(:create) do |evaluator, merchant|
        create_list(:item, evaluator.item_count, merchant: merchant)
      end
    end
  end

  factory :item do
    sequence(:name) { |n| "item_#{n}"}
    merchant
    unit_price 1000.00
    created_at "2012-03-27 14:54:09 UTC"
    updated_at "2012-03-27 14:54:09 UTC"
  end
end
