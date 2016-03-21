class User < ActiveRecord::Base
  has_one :profile
  has_one :skillset
  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, :length => 6..20
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

end
