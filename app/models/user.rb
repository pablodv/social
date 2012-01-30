class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :real_estates

  attr_accessible :first_name, :last_name, :gender, :dob, :email, :password,
    :password_confirmation, :remember_me, :avatar

  has_attached_file :avatar, :styles => { :small => "150x150>" }

  validates_attachment_presence :avatar
  validates_attachment_size :avatar, :less_than => 2.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']
end
