class RemoveAdminUserIdFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :admin_user_id, :bigint
  end
end
