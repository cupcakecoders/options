class RemoveUserIdFromOptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :options, :user_id, :string
  end
end
