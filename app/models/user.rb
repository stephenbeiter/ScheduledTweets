class User < ApplicationRecord
  has_many :twitter_accounts
  has_secure_password
  validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "Not a valid email address"}
end
