# coding: utf-8

FactoryGirl.define do
  factory :history_a, class: History do
    id SecureRandom.uuid
    customer_id { attributes_for(:customer_a)[:id] }
    check_day '2014-01-01'
    meter '1515.2'
  end

  factory :history_b, class: History do
    id SecureRandom.uuid
    customer_id { attributes_for(:customer_b)[:id] }
    check_day '2014-01-01'
    meter '5316.2'
  end
end
