# coding: utf-8

FactoryGirl.define do
  factory :customer_a, class: Customer do
    id SecureRandom.uuid
    name 'customer_a'
    address 'customer_address_a'
  end

  factory :customer_b, class: Customer do
    id SecureRandom.uuid
    name 'customer_b'
    address 'customer_address_b'
  end
end
