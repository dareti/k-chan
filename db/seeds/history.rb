# coding: utf-8

FactoryGirl.define do
  factory :history_a_1, class: History do
    id SecureRandom.uuid
    customer_id { attributes_for(:customer_a)[:id] }
    check_day '2014-01-01'
    meter '1515.2'
  end

  factory :history_a_2, class: History do
    id SecureRandom.uuid
    customer_id { attributes_for(:customer_a)[:id] }
    check_day '2014-02-03'
    meter '1545.2'
  end

  factory :history_a_3, class: History do
    id SecureRandom.uuid
    customer_id { attributes_for(:customer_a)[:id] }
    check_day '2014-03-01'
    meter '1575.2'
  end

  factory :history_b_1, class: History do
    id SecureRandom.uuid
    customer_id { attributes_for(:customer_b)[:id] }
    check_day '2014-01-01'
    meter '5316.2'
  end

  factory :history_b_2, class: History do
    id SecureRandom.uuid
    customer_id { attributes_for(:customer_b)[:id] }
    check_day '2014-02-05'
    meter '5356.2'
  end
end
