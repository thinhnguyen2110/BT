class User < ApplicationRecord
    has_secure_password

    validates :password, presence: true, length: { minimum: 6 }
    validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email adress" }
    validates :birth, presence: true
    validates :phone, presence: true, length: { is: 9 }
end
