class Photo < ActiveRecord::Base
  APPLY_ADMIN = true
  MODEL_STYLE = 'library'
  
  belongs_to :album
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  def self.load_all(current_user, params)
    where(album_id: params[:album_id])
  end

end
