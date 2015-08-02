class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+/i
	validates :name, presence: true, length: { maximum: 30 }
	validates :email, presence: true, length: { maximum: 255 },
										format: { with: VALID_EMAIL_REGEX },
										uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 6 }

	has_secure_password
end
