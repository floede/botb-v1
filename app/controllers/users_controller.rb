class UsersController < ApplicationController
	def index
		@users = User.all
	end	
	
	def show
		# @user = User.find(params[:id])
	end	
	
	def new
		
	end
	
	def create
		@user = User.new(user_params)
		
		respond_to do |format|
			if @user.valid?
				if @user.save
					@user.subscribe
					flash.now[:notice] = 'User was created'
					format.html { redirect_to @user, notice: 'User was succesfully created.'}
					format.js { }
					#format.json {
					#	render json: @user, status: :created, location: @user 
					#}
				else
					format.html { render action: 'new'}
					#format.json { render json: @user.errors, status: :unprocesable_entity}
				end
			else
				flash[:notice] = 'Please make sure you\'ve filled out all inputs and typed a working email'
				format.html { render action: 'new'}
				format.js { render action: 'error'}
				#format.json { render json: @user.errors, status: :unprocesable_entity}				
			end
		end
	end
	
	private
		def user_params
			params.require(:user).permit(:nick, :email, :game)
		end
end
