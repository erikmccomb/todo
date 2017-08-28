class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(items_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def create
    @item = Item.new(items_params)
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def destroy
    page = Item.find(params[:id]).destroy
    redirect_to items_path
  end

  private
    def items_params
      params.require(:item).permit(:title, :owner, :details)
    end
end