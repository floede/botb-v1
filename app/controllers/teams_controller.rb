class TeamsController < ApplicationController
	def index
		@teams = Team.all
	end	
	
	def show
		# @team = Team.find(params[:id])
	end	
	
	def new
		
	end
	
	def create
		@team = Team.new(team_params)
		
		respond_to do |format|
			if @team.valid?
				if @team.save
					@team.subscribe
					flash.now[:notice] = 'Team was created'
					format.html { redirect_to @team, notice: 'Team was succesfully created.'}
					format.js { }
					#format.json {
					#	render json: @team, status: :created, location: @team 
					#}
				else
					format.html { render action: 'new'}
					#format.json { render json: @team.errors, status: :unprocesable_entity}
				end
			else
				flash[:notice] = 'Please make sure you\'ve filled out all inputs and typed a working email'
				format.html { render action: 'new'}
				format.js { render action: 'error'}
				#format.json { render json: @team.errors, status: :unprocesable_entity}				
			end
		end
	end
	
	private
		def team_params
			params.require(:team).permit(:captains_name, :captains_email, :team_name)
		end
end
