class User < ActiveRecord::Base
  has_many :intros
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2]
         
  attr_accessible :email, :password, :signature, :current_password, :password_confirmation
  
  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
      data = access_token.info
      user = User.where(:email => data["email"]).first

      unless user
            user = User.create(name: data["name"],
              email: data["email"],
              password: Devise.friendly_token[0,20]
           )
       end
      user
  end
  
  def update_with_password(params={})
          current_password = params.delete(:current_password)

          if params[:password].blank?
            params.delete(:password)
            params.delete(:password_confirmation) if params[:password_confirmation].blank?
          end 

            result = if params[:password].blank? && if params[:password].blank? || valid_password?(current_password)
            update_attributes(params)
          else
            self.attributes = params
            self.valid?
            self.errors.add(:current_password, current_password.blank? ? :blank : :invalid)
            false
          end 
        end

          clean_up_passwords
          result
        end
         
end
