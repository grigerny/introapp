class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
      # You need to implement the method below in your model (e.g. app/models/user.rb)
      @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)

      if @user.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
        sign_in_and_redirect @user, :event => :authentication
      else
        session["devise.google_data"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
    end
  end
  
  
  def update_with_password(params={}) 
      current_password = params.delete(:current_password)

      if params[:password].blank? 
        params.delete(:password) 
        params.delete(:password_confirmation) if params[:password_confirmation].blank? 
      end 
      update_attributes(params) 

      clean_up_passwords
    end
  
end