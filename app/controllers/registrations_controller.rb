class RegistrationsController < Devise::RegistrationsController
   
   def update
     if resource.update_with_password(params[resource_name])
       set_flash_message :notice, :updated
       sign_in resource_name, resource, :bypass => true
       redirect_to after_update_path_for(resource)
     else
       clean_up_passwords(resource)
       redirect_to after_update_path_for(resource)
       flash[:notice]  = 'Profile was updated.' 
     end
   end
   
  protected
  

  def after_sign_up_path_for(resource)
    after_signup_path(:confirm_profile)
  end
  

  
  private

   def sign_up_params
     params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :signature)
   end

   def account_update_params
     params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :signature)
   end
   

   
end