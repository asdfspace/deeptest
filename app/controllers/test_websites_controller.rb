class TestWebsitesController < ApplicationController

  def new
    render :new
  end

  def create
    url = params[:url]
    puts url
    render :new
  end

end
