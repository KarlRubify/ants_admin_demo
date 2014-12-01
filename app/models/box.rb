class Box < ActiveRecord::Base
  APPLY_ADMIN = true
  TITLE = "Karl Nguyen"
  # TABLE_SHOW_SKIP = "Items"
  ACTIONS = []
  
  
  has_many :items
  
  def to_s
    name
  end
  
  def represent_text
    name
  end


end
