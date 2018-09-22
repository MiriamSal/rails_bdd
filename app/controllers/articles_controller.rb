class ArticlesController < ApplicationController
  
  def index
    @article = Article.all
  end

  def create
    @article = Article.new(article_params)
    if @article.save
    redirect_to root_path, notice: "Article was successfully created."
    
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end
  # # When you post a form, you do it generally with POST request as opposed to GET request. 
  # You can think normal rails requests as GET requests, when you browse the site, if it helps.
  # When you submit a form, the control is thrown back to the application. 
  # How do you get the values you have submitted to the form? params is how.
  # @article = Article.new params[:title] creates new Article to database using data of params[:title]. 

private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end