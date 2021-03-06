class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

          has_many :books, dependent: :destroy
          attachment :profile_image

          validates :name, uniqueness: true #一意性
          validates :name, length: { in: 2..20 } #2～20文字の範囲
          validates :introduction, length: { maximum: 50 }#50文字以内
end
