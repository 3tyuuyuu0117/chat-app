class Room < ApplicationRecord
  #↓vol.2.5 １つのチャットルームには、２人のユーザーが存在。
  has_many :room_users
  has_many :users, through: :room_users
end