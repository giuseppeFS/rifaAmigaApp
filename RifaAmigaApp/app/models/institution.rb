class Institution < ApplicationRecord
  before_save { self.email = email.downcase }

  validates :cnpj, presence: true, 
                   uniqueness: true, 
                   length: { maximum: 14 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]-\z\i/
  validates :email, presence: true, 
                    uniqueness: {case_sensitive: false},
                    format: { with: VALID_EMAIL_REGEX }

  validates :password, presence: true

  validates :corporate_name, presence: true,
						                 length: { maximum: 100 }

  # validates :qualification

  # validates :state_registration

end