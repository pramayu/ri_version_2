class AdminsController < ApplicationController
	
	before_action :signed_in_user
	layout "admin"

	def dashboard

	end
end