class CardsController < ApplicationController

  def new
  end

  def show
    @card = Card.find(params[:id])
    @deck = @card.deck
  end

  def create
  end
end