class CreateOptionValues < ActiveRecord::Migration[5.2]
  def change
    create_table :option_values do |t|
      t.integer :options_price
      t.datetime :date
      t.integer :company_id

      t.timestamps
    end
  end
end
