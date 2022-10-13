class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :username, presence: true,
                       uniqueness: { case_sensitive: false },
                       length: { minimum: 8, maximum: 15 }
  validates :birthday, presence: true
  validates :bio, length: { minimum: 5, maximum: 200 }
  validates :password, presence: true, confirmation: true,
                       length: { minimum: 8, maximum: 12},
                       if: :password_digest_changed?
  validates :password_confirmation, presence: true, if: :password_digest_changed?
  
  def full_name
    [first_name, last_name].compact_blank.join(" ")
  end                 
end
