class Room < ApplicationRecord
  #↓vol.2.5 １つのチャットルームには、２人のユーザーが存在。
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users
  has_many :messages, dependent: :destroy

  validates :name, presence: true
  #↑vol2.6. チャットルームを新規作成する時にルーム名が存在している場合のみ作成可にする為の記述
end