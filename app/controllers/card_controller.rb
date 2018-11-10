class CardController < ApplicationController
  
  before_action :set_card, only: %i(show edit update)

  
  def new
    # ここに追加する
    @card = Card.new
    @list = List.find_by(id: params[:list_id])
  end
  
  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to :root
    else
      @card.valid?
      render action: :new
    end
  end
  
  def show
  end

  def edit
  end

  def update
    @card = Card.find_by(id: params[:id])
    if @card.update_attributes(card_params)
      redirect_to :root
    else
      @card.valid?
      render action: :edit
    end
  end

  private
    def card_params
      params.require(:card).permit(:title, :memo, :list_id)
    end  
    
    def set_card
      @card = Card.find_by(id: params[:id])
    end
end