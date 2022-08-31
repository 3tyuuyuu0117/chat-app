class RoomUser < ApplicationRecord
  belongs_to :room
  belongs_to :user
  #↑vol.2 5.どのユーザーがどのチャットルームに参加しているかを管理するのが、
  #中間テーブルであるroom_userテーブル。
end
