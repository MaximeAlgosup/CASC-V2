class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_news, :class_name => "UserNew", dependent: :destroy
  has_many :user_challenges, dependent: :destroy
  has_many :casc_news
end
