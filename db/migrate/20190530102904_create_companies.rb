class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :address1
      t.string :string
      t.string :address2
      t.string :town
      t.string :postcode
      t.string :country
      t.integer :telephone_number
      t.references :user, foreign_key: true
      t.references :admin_user, foreign_key: true
      t.references :option_value, foreign_key: true

      t.timestamps
    end
  end
end
