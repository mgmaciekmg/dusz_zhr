class PagesController < ApplicationController
	before_action :search_all

	# DRY!
	def search_all
		@pages = Page.all
	end

	def index
	end

	def show
		@page = Page.find(params[:id])
	end
end
