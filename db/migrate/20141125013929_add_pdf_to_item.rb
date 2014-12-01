class AddPdfToItem < ActiveRecord::Migration
  def change
    add_column :items, :pdf, :string
  end
end
