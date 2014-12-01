class Category < ActiveRecord::Base
  APPLY_ADMIN = true
  
  # TABLE_SHOW_SKIP = "Items"
  # ACTIONS_LINK = "demo", 'remove', 'edit'
  
  has_many :items
  
  def demo
    "<a href='#'>#{id}</a>"
  end

  
  def to_s
    name
  end
  
  # def self.select_box
#     p "================"
#     all
#   end

  
end
