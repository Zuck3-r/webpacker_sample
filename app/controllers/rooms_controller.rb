class RoomsController < ApplicationController
  def show
    @words = Word.all
  end
end
