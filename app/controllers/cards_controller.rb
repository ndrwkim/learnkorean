class CardsController < ApplicationController

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @card.save
  end

  def update
    @card = Card.find(params[:id])
    @card.update_attributes(card_params)
    @card.save
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
  end

  def show
    @card = Card.find(params[:id])
  end

  private

    def card_params
      params.require(:card).permit(:english, :korean)
    end
end