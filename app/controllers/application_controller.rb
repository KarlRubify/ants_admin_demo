class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  private
  def current_logined
    authenticate_user!
  end

  def sign_out_link
    "/users/sign_out"
  end

  def ants_admin_main_menu
    menu = []
    
    menu << {
      "text"=> "Dashboard",
      "active"=> "ants_admin#dashboard",
      "icon"=>"dashboard",
      "url"=>"/admin"
    }
    
    menu << {
      "text"=>"Libraries",
      "active"=>"library",
      "icon"=>"file-photo-o",
      "url"=>"/admin/library"
    }
             
    menu << {
      "text"=>"Item",
      "active"=>"item",
      "icon"=>"circle-thin",
      "url"=>"/admin/item"
    }
             
    menu << {
      "text"=>"Line",
      "active"=>"line",
      "icon"=>"navicon",
      "url"=>"/admin/line"
    }
    
    menu << {
      "text"=>"Categories",
      "note"=>{
        "text"=>"+",
        "color"=>"aqua"
      },
      "active"=>"category",
      "icon"=>"th",
      "url"=>"/admin/category"
    }
    
    menu << {
      "text"=>"Box",
      "note"=>{
        "text"=>"12",
        "color"=>"red"
      },
      "active"=>"box",
      "icon"=>"square",
      "url"=>"/admin/box"
    }
    
    menu << {
      "text"=>"Albums",
      "active"=>'albums',
      "icon"=>"photo",
      "url"=>"/admin/albums"
    }
    
    menu << {
      "text"=>"Charts",
      "submenu"=>[
        {
          "text"=>"Morris",
          "url"=>"/"
        },{
          "text"=>"Flot",
          "url"=>"/"
        },{
          "text"=>"Inline charts",
          "url"=>"/"
        }
      ],
      "active"=>false,
      "icon"=>"bar-chart-o",
      "url"=>"/"
    }
  end

end
