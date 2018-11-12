class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user), status: 200 }
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token, status: 200 }
    else
      render json: { error: 'failed to create user', status: 500 }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
