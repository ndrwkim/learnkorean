class CardsController < ApplicationController

  def index
    @allcards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @card.save
  end

  def show
    @card = Card.find(params[:id])
    @decks = @card.decks
  end

  private

    def card_params
      params.require(:card).permit(:english, :korean)
    end
end