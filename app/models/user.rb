class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_save { self.email = email.downcase }
  has_many :option
  accepts_nested_attributes_for :option
  belongs_to :company, optional: true


  # is_admin could kind of work as a column in the db, so it's ok to make as a method here.

  def is_admin?
    if role == "admin"
      true
    else
      false
    end
  end

  def is_employee?
    if role != "admin"
      true
    else
      false
    end
  end

end
