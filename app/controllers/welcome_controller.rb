class WelcomeController < ApplicationController
	def index
		@studio_array = Studio.all
		@posts = Post.all

		render "index"
	end


	def yogawyn
			@act = Studio.where(activity: "Yoga", area: "Wynwood")
			@activity_name = "Yoga"
			@area_name = "Wynwood"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end

	def yogasb
			@act = Studio.where(activity: "Yoga", area: "Southbeach")
			@activity_name = "Yoga"
			@area_name = "Southbeach"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end
	def yogabrick
			@act = Studio.where(activity: "Yoga", area: "Brickell")
			@activity_name = "Yoga"
			@area_name = "Brickell"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
		@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
		@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end
	def yogadt
			@act = Studio.where(activity: "Yoga", area: "Downtown")
			@activity_name = "Yoga"
			@area_name = "Downtown"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
			render "show"

	end
	def boxingdt
			@act = Studio.where(activity: "Boxing", area: "Downtown")
			@activity_name = "Boxing"
			@area_name = "Downtown"
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end

	def boxingsb
			@act = Studio.where(activity: "Boxing", area: "Southbeach")
			@activity_name = "Boxing"
			@area_name = "Southbeach"
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end

	def boxingwyn
			@act = Studio.where(activity: "Boxing", area: "Wynwood")
			@activity_name = "Boxing"
			@area_name = "Wynwood"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end
	def boxingbrick
			@act = Studio.where(activity: "Boxing", area: "Brickell")
			@activity_name = "Boxing"
			@area_name = "Brickell"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end
	def pilateswyn
			@act = Studio.where(activity: "Pilates", area: "Wynwood")
			@activity_name = "Pilates"
			@area_name = "Wynwood"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end

	def pilatessb
			@act = Studio.where(activity: "Pilates", area: "Southbeach")
			@activity_name = "Pilates"
			@area_name = "Southbeach"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end
	def pilatesdt
			@act = Studio.where(activity: "Pilates", area: "Downtown")
			@activity_name = "Pilates"
			@area_name = "Downtown"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end

	def pilatesbrick
			@act = Studio.where(activity: "Pilates", area: "Brickell")
			@activity_name = "Pilates"
			@area_name = "Brickell"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end
	def barrebrick
			@act = Studio.where(activity: "Barre", area: "Brickell")
			@activity_name = "Barre"
			@area_name = "Brickell"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end

		def barresb
			@act = Studio.where(activity: "Barre", area: "Southbeach")
			@activity_name = "Barre"
			@area_name = "Southbeach"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end
	def barredt
			@act = Studio.where(activity: "Barre", area: "Downtown")
			@activity_name = "Barre"
			@area_name = "Downtown"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
		@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
		@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end

	def barrewyn
			@act = Studio.where(activity: "Barre", area: "Wynwood")
			@activity_name = "Barre"
			@area_name = "Wynwood"
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end

	def cyclewyn
			@act = Studio.where(activity: "Cycling", area: "Wynwood")
			@activity_name = "Cycling"
			@area_name = "Wynwood"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end
		def cycledt
			@act = Studio.where(activity: "Cycling", area: "Downtown")
			@activity_name = "Cycling"
			@area_name = "Downtown"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end

	def cyclesb
			@act = Studio.where(activity: "Cycling", area: "Southbeach")
			@activity_name = "Cycling"
			@area_name = "Southbeach"
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end
		def cyclebrick
			@act = Studio.where(activity: "Cycling", area: "Brickell")
			@activity_name = "Cycling"
			@area_name = "Brickell"
			@activity_tmr = @act.where("time > ? and time < ?", Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
			@activity_today = @act.where("time > ? and time < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			@other_activity = @act.where("time > ?", Date.tomorrow.end_of_day)
		render "show"

	end
	
	


end
