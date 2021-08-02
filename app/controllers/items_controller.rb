class ItemsController < ApplicationController
  before_action :set_item, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]
  before_action :move_to_index, except: [:index, :show, :search]


  def index
    @items = Item.includes(:user).order("created_at DESC")
    # @items = Item.all
    # @area = Area.find_by_id  @item.area_id
  end

  def new
    @item = Item.new
  end

  def create
    # Item.create(item_params)
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
    # item = Item.find(params[:id])
    # item.update(item_params)
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def search
    @items = Item.search(params[:keyword])
  end


  private

  def item_params
    params.require(:item).permit(:image, :title, :detail, :category_id, :condition_id, :burden_id, :area_id, :day_id, :price).merge(user_id: current_user.id)
  end


  def set_item
    # @item = Item.find(params[:id])
    @item = Item.find(params[:item_id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @item.user
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end










