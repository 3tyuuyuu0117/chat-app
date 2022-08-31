class RoomsController < ApplicationController
  def new
    @room = Room.new
    #↑vol2.2チャットルームの新規作成の為「new」アクションを定義。form_withに渡す引数として、値が空のRoomインスタンスを@roomに代入。
  end
end
