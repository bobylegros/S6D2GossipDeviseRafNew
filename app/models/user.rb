class User < ApplicationRecord
  attr_accessor :sign_up_code
 validates :sign_up_code,
 on: :create,
 presence: true,
 inclusion: { in: ["SESSION3"] }


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  FORMAT_USERNAME = /\A[a-zA-Z0-9 _\.]*\z/
  validates :username, presence: true, uniqueness: { case_sensitive: false }, format: { with: FORMAT_USERNAME }

  has_many :gossips
end
