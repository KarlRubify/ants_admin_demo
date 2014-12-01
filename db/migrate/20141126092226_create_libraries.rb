class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :image

      t.timestamps
    end
  end
end
