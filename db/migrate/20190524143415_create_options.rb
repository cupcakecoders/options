class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.integer :number_of_options
      t.integer :cumulative_options
      t.datetime :options_issued
      t.datetime :vesting_start
      t.datetime :vesting_end
      t.string :user_id

      t.timestamps
    end
  end
end
