class AktuellController < ApplicationController
  def index
    @article = Article.last
  end

  def bilder
    @image = Image.find(params[:id])
  end 
end
