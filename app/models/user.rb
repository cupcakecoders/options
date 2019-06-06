class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_save { self.email = email.downcase }
  has_many :option
  belongs_to :company, optional: true

  # is_admin could kind of work as a column in the db, so it's ok to make as a method here.
  #begin def is_admin?
    #if role == "admin"
      #return current_user.is_admin?
    #else
      #return nil
    #end
  #end

  def is_admin?
    if user_signed_in? && role == "admin"
      true
    else
      false
    end
  end
end
