class Item < ActiveRecord::Base
  APPLY_ADMIN = true
  TABLE_SHOW = {key: 'image', label: 'Avatar', sort: false}, {key: 'name', label: 'karl'}, 'size', {key: 'category_id', label: 'Category', sort: false}, {key: 'pdf', label: 'PDF', sort: false}, 'test'
  ACTIONS_LINK = 'edit', 'remove'#,'modify_link'
  SEARCH_FOR = 'name', 'body'
  
  IMAGE_STYLE_THUMB = 'thumb'
  
  # FORM_INPUT_SKIP = 'name', 'size', 'image'
  FORM_INPUT_NESTED_SKIP = 'lines'
    #
  # CREATE_DISABLED = true
  # EDIT_DISABLED = true
  # ACTIVE_DISABLED = true
  
  HTML_BUTTON_DELETE = '<i class="fa fa-times"></i>'
  
  # TABLE_SHOW_SKIP = 'Category'
  
  belongs_to :category
  belongs_to :box
  
  has_many :lines, dependent: :destroy
  accepts_nested_attributes_for :lines, :allow_destroy => true
  
  has_attached_file :image, :styles => { :medium => '300x300>', :thumb => '100x100>' }, :default_url => '/images/:style/missing.png'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :pdf
  # validates_attachment_content_type :pdf, :content_type => ['application/pdf']
  
  def represent_text
    name
  end
  
  def modify_link_action
    {
      href: "/admin/item/#{id}/modify_link",
      type: "button",
      style: "info",
      icon: "pencil-square"
    }
  end

  def test_show
    id
  end
  
  # def self.load_all
#     where('id > 6')
#   end
#
#   def self.load_select_box
#     where('id > 6')
#   end
#

end
#
#
# APPLY_ADMIN = true
# # TABLE_SHOW = 'name', 'size', 'body'
# # ACTIONS_LINK = 'demo', 'remove', 'edit', 'active'
# TITLE = 'Karl Nguyen'
# SEARCH_FOR = 'name', 'body'
#   #
# # CREATE_DISABLED = true
# # EDIT_DISABLED = true
# # ACTIVE_DISABLED = true
#
# # HTML_BUTTON_DELETE = 'remove'
#
# # TABLE_SHOW_SKIP = 'Category'
#
# belongs_to :category
# belongs_to :box
#
# def represent_text
#   name
# end
#
#
#  def self.select_box
#
#  to_s
#
#
#
#  def demo
#    '<a href='#'>#{id}</a>'
#  end
#
#
#
#  # TABLE_SHOW_SKIP = 'Items'
#  ACTIONS = []
#
#
#  has_many :items
#
#
#  window.waiting(true)
#  window.blur(true)