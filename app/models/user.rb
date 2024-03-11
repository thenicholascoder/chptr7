class User < ApplicationRecord
  # before_save { self.email = email.downcase }
  normalizes :email, with: ->(email) {email.strip.downcase}
  unless defined?(VALID_EMAIL_REGEX)
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  end
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end 