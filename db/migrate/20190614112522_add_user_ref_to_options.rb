class AddUserRefToOptions < ActiveRecord::Migration[5.2]
  def change
    add_reference :options, :user, foreign_key: true
  end
end
