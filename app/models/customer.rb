class Customer < ActiveRecord::Base
  has_one :history
end