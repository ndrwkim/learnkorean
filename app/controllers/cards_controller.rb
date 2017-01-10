class CardsController < ApplicationController

  def new
    @card = Card.new
  end

  def show
    @card = Card.find(params[:id])
    @deck = @card.decks
  end

  def create
    @card = Card.new(card_params)
    @card.save
  end

  private

    def card_params
      params.require(:card).permit(:name)
    end
end