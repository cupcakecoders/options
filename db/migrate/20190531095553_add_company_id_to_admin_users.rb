class AddCompanyIdToAdminUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_users, :company_id, :integer
  end
end
