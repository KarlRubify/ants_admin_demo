class Album < ActiveRecord::Base
  APPLY_ADMIN = true
  ACTIONS_LINK = 'view','edit','active','remove'
  TABLE_SHOW_SKIP = 'Photos'
  
  has_many :photos
  
  def view_action
    {
      button: {
        href: "/admin/photos/?album_id=#{id}",
        style: 'info',
        icon: 'photo'
      }
    }
  end

end
