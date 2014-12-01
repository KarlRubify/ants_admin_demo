class Library < ActiveRecord::Base
  APPLY_ADMIN = true
  
  MODEL_STYLE = "library"
  
  # LAYOUT_INDEX_STYLE = "library"
  
  IMAGE_STYLE_MEDIUM = 'medium'
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
