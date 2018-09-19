class ArticlesController < ApplicationController

    def index
        @articles = Article.all
        @articles = @articles.keywords(params[:keywords]) if params[:keywords].present?
    end

    def show
        @article = Article.find(params[:id])
    end

    def gallery
        @image = Image.find(params[:id])
    end

end
