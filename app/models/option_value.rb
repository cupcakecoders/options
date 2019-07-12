class OptionValue < ApplicationRecord
  belongs_to :company, optional: true
  
end
