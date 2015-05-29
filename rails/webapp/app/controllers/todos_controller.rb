class TodosController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    params.permit!
    @item = Item.new(params[:item])
    @item.save

    respond_to do |format|
      format.js {}
    end
  end

  def destroy
    @item_id = params[:id]
    if item = Item.find_by_id(@item_id)
      item.destroy
    end

    respond_to do |format|
      format.js { render :template => "todos/destroy.js.erb"}
    end
  end
end
