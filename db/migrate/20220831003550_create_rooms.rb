class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      # ↑vol2.1roomsテーブルには「room名のみ」を保存するための記述
      t.timestamps
    end
  end
end
