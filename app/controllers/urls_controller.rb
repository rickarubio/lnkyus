class UrlsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @url = Url.new params[:url]
    if @url.save
      session[:url_id] = @url.id
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
