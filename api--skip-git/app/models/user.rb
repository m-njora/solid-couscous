class User < ApplicationRecord
    has_secure_password
    #validating the users username
    validates :username, {
        length: {minimum: 5, maximum: 8},
        uniqueness: true,
        presence: true
    }
    #validating the users email

    validates :email, {
        uniqueness: true,
        presence: true
 
    }

end
