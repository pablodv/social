class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :real_estates

  attr_accessible :first_name, :last_name, :gender, :dob, :email, :password,
    :password_confirmation, :remember_me
end
