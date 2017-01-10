class DecksController < ApplicationController

  def new
    @deck = Deck.new
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def create
    @deck = Deck.new(user_params)
  end
end