class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users.to_json()
  end

  def show
    @user = User.find(params[:id])
    render json: @user.to_json()
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @employee.save if @user.valid?
    render json: @user.to_json()
  end

  private

    def user_params
      params.permit(:email)
    end

    def find_user
      @user = User.find(params[:id])
    end

end
