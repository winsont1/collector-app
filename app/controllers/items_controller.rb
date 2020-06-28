class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.save

    redirect_to item_path(@item)
  end

  def update
    @item.update(item_params)

    redirect_to item_path(@item)
  end

  def destroy
    @item.destroy

    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :description, :quantity, :weight, :categories)
  end

  def set_restaurant
    @item = Item.find(params[:id])
  end
end
