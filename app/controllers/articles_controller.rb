class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
    @count = Article.count
    @articles = Article.all
    #Pedir los campos específicos: @articles = Article.select("id, title, body")
  end

  def show
    @article = Article.friendly.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: "Tu articulo ha sido creado" }
        format.json { render :show, status: :crated, location: @article}
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: "Tu articulo ha sido creado" }
        format.json { render :show, status: :crated, location: @article}
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: "Tu articulo ha sido eliminado" }
      format.json { head :no_content}
    end
  end

  private

  def set_article
    @article = Article.friendly.find(params[:id])
  end

  def article_params 
    params.require(:article).permit(:title,
                                    :body,
                                    :user_id)
  end

end
