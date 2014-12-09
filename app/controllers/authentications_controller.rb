class AuthenticationsController < ApplicationController
  def index
    @authentications = Authentication.all
  end
  
  def create
    omniauth = request.env["omniauth.auth"]
    
    authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    if authentication
      user = authentication.user
      sign_in!(user)

      redirect_to "/#"
    elsif current_user
      current_user.authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'])
      # redirect_to root_url
      redirect_to "/#"
    else
      user = User.create_by_omniauth(omniauth)
      user.authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
      
      sign_in!(user)
      redirect_to "/#"
      # redirect_to root_url
    end
  end
end
