class Customer < ActiveRecord::Base
  has_many :history
end