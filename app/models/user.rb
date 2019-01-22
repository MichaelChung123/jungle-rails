class User < ActiveRecord::Base
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true
    validates :password_digest, presence: true

    validates_length_of :password_digest, minimum: 5, maximum: 20

    def authenticate_with_credentials (email, password)
        user = where('LOWER(email) = ?', email.downcase.strip)[0]
        user && user.authenticate(password)
    end
end
