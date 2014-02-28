class User < ActiveRecord::Base
  #attr_accessor :password
  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\Z/i
  validates :email, presence: true, uniqueness: true, format: EMAIL_REGEX
  validates :password, length: { minmum: 6, maximum: 10 }
  validates :name,length: { minmum: 3, maximum: 15 }, presence: true
  validates :lastName,length: { minmum: 3, maximum: 15 }, presence: true
  #, confirmation: true #password_confirmation attr
  #validates :password_confirmation, presence: true
  #validates_length_of :password, in: 6..20, on: create
  has_secure_password
end
