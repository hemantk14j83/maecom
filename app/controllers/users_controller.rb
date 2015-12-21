class UsersController < ApplicationController
	before_action :authenticate_user!
def index
 	@user=User.all
 end
 
 def show
 	#@trainer = Trainer.find(params[:id])
 	@user=current_user
 end
end
