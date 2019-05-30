class RemoveCumulativeOptionsFromOptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :options, :cumulative_options, :integer
  end
end
