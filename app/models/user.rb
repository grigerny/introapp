class User < ActiveRecord::Base
  has_many :intros
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2]
         
  attr_accessible :email, :password, :signature, :current_password, :password_confirmation
  
         
end
