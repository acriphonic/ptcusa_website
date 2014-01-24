class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 6 }

	before_save :assign_account_type

	private
		def assign_account_type
			self.admin = false
		end
end
