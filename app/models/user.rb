class User < ApplicationRecord
    has_secure_password
    has_many :twitter_accounts

    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { within: 6..40 }
end
