class AuthenticationsController < ApplicationController
  def index
    @authentications = Authentication.all
  end
  
  def create
    auth = request.env["omniauth.auth"]
    current_user.authentications.create(:provider => auth['provider'], :uid => auth['uid'])
    flash[:notice] = "Auth Successful!"
    redirect_to root_url
  end
end
