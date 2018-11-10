class TopController < ApplicationController
  def index
    # ここに追加する
    # user_idがcurrent_user（現在ログインしているユーザー）のレコードを取得
    @lists = List.where(user: current_user).order("created_at ASC")
  end
end