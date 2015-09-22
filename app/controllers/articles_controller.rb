class ArticlesController < ApplicationController
  before_action :search_all

	# DRY!
	def search_all
		@pages = Page.all
	end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @admins_array = Admin.all.map { |admin| [admin.email, admin.id] }
  end

  def create
    @article = Article.new(articles_params)
    @admins_array = Admin.all.map { |admin| [admin.email, admin.id] }
    if @article.save
      redirect_to root_path, notice: "Sukces!"
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
    @admins_array = Admin.all.map { |admin| [admin.email, admin.id] }
  end

  def update
    @article = Article.find(params[:id])
    @admins_array = Admin.all.map { |admin| [admin.email, admin.id] }
    if @article.update_attributes(articles_params)
      redirect_to article_path(@article), notice: "Sukces!"
    else
      render :update
    end
  end

  def destroy
  end

  private

  def articles_params
    params.require(:article).permit(:title, :content, :category, :admin_id)
  end
end
