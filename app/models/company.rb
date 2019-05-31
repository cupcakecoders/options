class Company < ApplicationRecord
  has_many :user
  has_many :optionvalue
end
