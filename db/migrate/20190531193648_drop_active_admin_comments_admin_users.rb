class DropActiveAdminCommentsAdminUsers < ActiveRecord::Migration[5.2]
  def change
    drop_table :active_admin_comments
    drop_table :admin_users, force: :cascade
  end
end
