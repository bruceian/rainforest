class User < ActiveRecord::Base
  has_secure_password
  has_many :favourites
  has_many :condos, through: :favourites
  validates :name, presence: true
end
