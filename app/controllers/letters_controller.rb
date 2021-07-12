class LettersController < ApplicationController
  def index
  end

  def new
    @letter = Letter.new
  end

  def create
    @letter = Letter.create(letter_params)
    if @letter.save
    else
      render :new
    end
  end

  def show
  end

  private

  def letter_params
    params.require(:letter).permit(:text).merge(user_id: current_user.id)
  end
end
