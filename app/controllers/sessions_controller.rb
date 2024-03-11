class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email].downcase)
    if @user && @user.authenticate(params[:user][:password])
      login @user
      redirect_to root_path, notice: "You have signed in successfully."
    else
      @error = true;
      flash[:alert] = "Invalid email or password."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout current_user
    redirect_to root_path, notice: "You have been logged out."
  end
end