class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @letters = user.letters
  end
end
