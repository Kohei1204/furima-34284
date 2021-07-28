class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :comments
  
  validates :name, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :fkananame, presence: true
  validates :lkananame, presence: true
  validates :birth, presence: true
end
