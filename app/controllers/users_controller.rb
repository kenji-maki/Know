class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
  end

  def create

    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger]="登録に失敗しました"
      render :new
    end
  end
  
  def update
    @user = current_user.find(user_params)
    if @user.update
      redirect_to user_path(current_user), success:'更新に成功しました'
    else
      flash.now[:danger]="更新に失敗しました"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email ,:password ,:password_confirmation ,:introduction)
  end
end
