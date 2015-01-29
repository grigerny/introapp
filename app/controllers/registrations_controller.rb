class RegistrationsController < Devise::RegistrationsController
   
   def update
     if resource.update_with_password(params[resource_name])
       set_flash_message :notice, :updated
       sign_in resource_name, resource, :bypass => true
       redirect_to new_intro_path
     else
       clean_up_passwords(resource)
       redirect_to new_intro_path
       flash[:notice]  = 'Profile was updated.' 
     end
   end

   
  protected
  

  def after_sign_up_path_for(resource)
    after_signup_path(:confirm_profile)
  end
  
  private

   def sign_up_params
     params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :signature, :provider, :uid)
   end

   def account_update_params
     params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :signature)
   end
   

   
end