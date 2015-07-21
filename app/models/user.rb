class User < ActiveRecord::Base
  # attr_accessible :name
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_secure_password
  # attr_accessible :date
  validates_presence_of :name, :password

end
