class User < ApplicationRecord

    has_one :address
    
    has_secure_password

    validates :email, presence: true, uniqueness: true
    
end
