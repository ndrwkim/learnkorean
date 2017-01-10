class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def new
    @deck = Deck.new
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
  end

  def create
    @deck = Deck.new(deck_params)
    @deck.save
  end

  def update
    @deck = Deck.find(params[:id])
    @deck.update_attributes(deck_params)
    @deck.save
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
  end

  private

    def deck_params
      params.require(:deck).permit(:name)
    end
end