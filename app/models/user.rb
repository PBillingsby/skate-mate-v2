class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :ratings
  has_many :spots
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  attr_writer :login

  def login
    @login || self.username || self.email
  end
  
end
