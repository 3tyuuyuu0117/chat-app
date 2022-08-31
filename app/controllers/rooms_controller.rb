class RoomsController < ApplicationController

  def index
  end

  def new
    @room = Room.new
    #↑vol2.2チャットルームの新規作成の為「new」アクションを定義。form_withに渡す引数として、値が空のRoomインスタンスを@roomに代入。
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
