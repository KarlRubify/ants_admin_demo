class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :size
      t.text :body
      t.integer :category_id
      t.string :image

      t.timestamps
    end
  end
end
