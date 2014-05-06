class UrlsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @short_url = Url.new params[:url]
    if @short_url.save
      flash[:notice] = "url saved to db"
      redirect_to root_url
    else
      flash[:failed] = "url failed to save to db"
      redirect_to root_url
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
