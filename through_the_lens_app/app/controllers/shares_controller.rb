
class SharesController < ApplicationController

  def index
    @shares = Share.where(category: params[:category])
  end
end
