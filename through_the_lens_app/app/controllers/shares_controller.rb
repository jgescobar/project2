
class SharesController < ApplicationController

  def index
    @shares = Share.where(category: params[:category])
  end

  def new
    @share = Share.new
    @share.category = params[:category]
  end

  def create
    share = Share.new(share_params)
    share.user = current_user
    if share.save
      redirect_to '/shares?category=' + share.category
    end
  end

  private
  def share_params
    params.require(:share).permit(:link, :title, :description, :category, :artist, :length, :address, :album)
  end
end
