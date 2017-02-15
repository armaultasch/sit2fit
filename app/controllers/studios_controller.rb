class StudiosController < ApplicationController

	def show
		render "show"
	end
	def brickell
		areas = Studio.where(area: "Brickell")
		
		render json: areas.to_json
		
	end

	def downtown
			areas = Studio.where(area: "Downtown")
		
		render json: areas.to_json

	end

	def wynwood
			areas = Studio.where(area: "Wynwood")
		
		render json: areas.to_json

	end

	def southbeach
			areas = Studio.where(area: "Southbeach")
		
		render json: areas.to_json

	end
end
