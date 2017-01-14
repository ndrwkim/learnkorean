class DecksController < ApplicationController

  def index
    @alldecks = Deck.all
  end

  def new
    @deck = Deck.new
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

  def show
    @deck = Deck.friendly.find(params[:id])
    @cards = @deck.cards
    r = rand(0...@cards.count)
    @randcard = @cards[r]
  end

  private

    def deck_params
      params.require(:deck).permit(:name)
    end
end