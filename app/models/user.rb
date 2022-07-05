class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: { case_sensitive: false }

    # include BCrypt
    # validate :password_present?

    # def password=(new_password)
    #     @password = Password.create(new_password)
    #     self.password_digest = @password
    # end

    # def password
    #     return nil unless password_digest.present?

    #     @password ||= Password.new(password_digest)
    # end

    # def authenticate(unencrypted_password)
    #     self.password.is_password?(unencrypted_password) && self
    # end

    # def password_present?
    #     errors.add(:password, :blank) unless password.present?
    # end
end
