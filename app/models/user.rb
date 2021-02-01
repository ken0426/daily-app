class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze

         VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/

         with_options presence: true do
          validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
          validates :password, presence: true, length: { minimum: 6}, format: { with: PASSWORD_REGEX}
         end

         has_many :content

         has_one_attached :avatar

end
