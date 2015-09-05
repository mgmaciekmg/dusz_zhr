class SubpagesController < ApplicationController
	def index
	end

	def show
		@subpage = Subpage.find(params[:id])
	end
end
