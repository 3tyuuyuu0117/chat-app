class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :room_users
  has_many :users, through: :room_users  #←vol.2 5.１人のユーザーには複数のチャットルームに参加できる為の記述
  has_many :messages

  validates :name, presence: true #
    #↑11「name」カラムに、presence: trueを設けることで、空の場合はDBに保存しないというバリデーションを設定

end
