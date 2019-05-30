class RemoveStringFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :string, :string
  end
end
