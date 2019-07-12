class Company < ApplicationRecord
  has_many :user
  has_many :option_values
end
