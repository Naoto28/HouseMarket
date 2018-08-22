class UsersController < ApplicationController
  def index
  end

  def show
      @user = User.find(params[:id])
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    # @user = current_user
    # @user.soft_delete
    # sign_out(@user)
    # redirect_to new_user_registration_path
    # flash[:notice] = '退会が完了しました。'
  end

private

  def user_params
      params.require(:user).permit(:user_name,:email,:last_name,:first_name,:address,:tell_number,:profile_image,:birthday,:introduction,:living_city)
  end
end
