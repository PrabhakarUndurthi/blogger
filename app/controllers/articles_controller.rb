class ArticlesController < ApplicationController
	include ArticlesHelper

	def index
		@articles  = Article.all
	end


def show 
	@article = Article.find(params[:id])
end



def new
	@article = Article.new
end

def edit
	@article = Article.find(params[:id])
end

def create 
	@article = Article.new
	@article = Article.new(article_params)
	#@article.title = params[:article]
	#@article.body = params[:article][:body]
	@article.save
	redirect_to article_path(@article)

end


def update 
	@article = Article.find(params[:id])
	@article.update(article_params)
	flash.notice = "Article '#{@article.title}' updated!"

	redirect_to article_path(@article)
end




end
