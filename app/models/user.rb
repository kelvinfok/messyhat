class User < ActiveRecord::Base
  has_one :profile
  has_one :skillset
  has_one :involvement, through: :skillset
  has_secure_password
  validates :password, :length => 6..20
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :email, presence: true, uniqueness: true









end
