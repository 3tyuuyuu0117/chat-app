class UsersController < ApplicationController

  def edit #6-2 ビューファイルを表示するだけの為アクションの定義のみ 
  end

  def update #保存できた場合とできなかった場合の条件分岐処理
    if current_user.update(user_params)
        #↑7-1編集内容が更新されるようにUserモデルの更新を行うupdateアクションを定義
      redirect_to root_path
    else  #↑8current_user.updateに成功した場合、root（チャット画面）にリダイレクト
      render :edit
    end  #↑8失敗した場合、render :editでeditのアクションを指定した為、editのビューが表示
  end
      
  private

  def user_params
    params.require(:user).permit(:name, :email)
  end#7-2ストロングパラメーターを使用し、user_paramsを定義
end  #permitメソッドを使用し「name」と「email」の編集を許可
     #ユーザー情報が格納されているcurrent_userメソッドを使用して、ログインしているユーザーの情報を更新 