class User < ApplicationRecord
  has_one: :wallet

  before_save { self.email = email.downcase }

  validates :cpf, presence: true, 
                  uniqueness: true, 
                  length: { maximum: 11 }

  validates :name, presence: true, 
                   length: { maximum: 80 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]-\z\i/
  validates :email, presence: true, 
                    uniqueness: {case_sensitive: false},
                    format: { with: VALID_EMAIL_REGEX }

  validates :password, presence: true

  validates :address, presence: true, 
                      length: { maximum: 100 }

  validates :number, presence: true, 
                     length: { maximum: 6 }

  validates :complement, length: { maximum: 50 }

  validates :neighborhood, presence: true, 
                           length: { maximum: 50}  

  validates :zipCode, presence: true, 
                      length: { maximum: 7 }

  has_secure_password
end