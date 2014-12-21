# coding: utf-8

FactoryGirl.define do
  factory :customer do
    id SecureRandom.uuid
    name 'customer_a'
    address 'customer_address_a'

    after(:create) do |customer, evaluator|
      FactoryGirl.create(:history, customer_id: customer.id)
    end
  end
end
