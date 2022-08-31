class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t| #←中間テーブル、どのユーザーがチャットルームに参加しているかを管理
      t.references :room, null: false, foreign_key: true#←vol2.4中間テーブルに保存する→
      t.references :user, null: false, foreign_key: true#→ためのテーブル情報をforeign_key: trueで参照
      t.timestamps
    end
  end
end
