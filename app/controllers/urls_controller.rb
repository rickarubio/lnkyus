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

  def redirect
    @url = Url.where(:short => params[:short])
    if @url.empty?
      flash[:failed] = "you are trying to go to a url that doesn't exist!"
      redirect_to '/'
    else
      redirect_to @url.first.address
    end
  end
end
