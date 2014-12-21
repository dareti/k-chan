# coding: utf-8

FactoryGirl.define do
  factory :history do
    id SecureRandom.uuid
    check_day '2014-01-01'
    meter '1517.2'
  end
end
