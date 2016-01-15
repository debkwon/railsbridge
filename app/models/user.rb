class User < ActiveRecord::Base
before_action :authenticate_user! #sets up a controller with user authentication, (assuming your devise model is 'User')
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
