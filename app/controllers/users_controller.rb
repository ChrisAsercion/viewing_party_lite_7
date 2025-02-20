# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index; end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
# require 'pry'; binding.pry
  end
end

  private

def user_params
  params.require(:user).permit(:name, :email)
end
