
class SharesController < ApplicationController

  def show
    @share = Share.find(params[:id])
  end

  def index
    @shares = Share.where(category: params[:category])
  end

  def new
    @share = Share.new
    @share.category = params[:category]
  end

  def edit
    @share = Share.find(params[:id])
  end

  def update
    @share = Share.find(params[:id])
    @share.category = params[:category]
    @share.update(share_params)
    redirect_to '/shares?category=' + @share.category
  end

  def create
    @share = Share.new(share_params)
    @share.user = current_user
    if @share.save
      redirect_to '/shares?category=' + @share.category
    else
      flash.now.alert = "Both Title and Link are Required"
      render :new
    end
  end

  def destroy
    @share = Share.find(params[:id])
    @share.destroy
    redirect_to '/shares?category=' + @share.category
  end

  private
  def share_params
    params.require(:share).permit(:link, :title, :description, :category, :artist, :length, :address, :album)
  end
end
