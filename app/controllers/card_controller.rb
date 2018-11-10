class CardController < ApplicationController
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
    @card = Card.find_by(id: params[:id])
  end


  private
    def card_params
      params.require(:card).permit(:title, :memo, :list_id)
    end  
end