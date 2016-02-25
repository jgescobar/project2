
class SharesController < ApplicationController

  def index
    @shares = Share.where(category: params[:category])
  end

  def new
    @share = Share.new
    @share.category = params[:category]
  end

  def create
    share = Share.new(params[:share])
    share.user = current_user
    if share.save
      redirect_to '/shares?category=' + share.category
    end

  end

end
