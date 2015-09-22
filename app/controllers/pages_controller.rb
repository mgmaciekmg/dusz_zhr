class PagesController < ApplicationController
	before_action :search_all

	# DRY!
	def search_all
		@pages = Page.all
	end

	def index
		@articles = Article.all
		@admins = Admin.all
	end

	def show
		@page = Page.find(params[:id])
	end
end
