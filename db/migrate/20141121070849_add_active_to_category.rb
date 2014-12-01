class AddActiveToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :active, :boolean, default: false
  end
end
