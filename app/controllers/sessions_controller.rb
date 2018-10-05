class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params["email"], password: params["password"])

    if (@user)
      # render json: @user.to_json()
      render json: {
        email: @user.email,
        id: @user.id,
        status: 201
      }
    else
      render json: {
        errors: "Login failed"
      }, status: :unauthorized
    end
  end

end
