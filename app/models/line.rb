class Line < ActiveRecord::Base
  belongs_to :item
  APPLY_ADMIN = true
  TABLE_SHOW = 'name'
  
  FORM_INPUT_SKIP = "item_id"
  
  # CREATE_DISABLED = true
  
  def represent_text
    name
  end
end
