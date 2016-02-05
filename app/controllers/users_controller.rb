class UsersController < ApplicationController
	before_action :authenticate_user!
def index
 	@user=User.all
 end
 
 def show
 	#@trainer = Trainer.find(params[:id])
 	@user=current_user
 	#@wishlists=Wishlist.find_by(user_id: current_user.id)
 	@wishlists=Wishlist.by_status('active')
 	@wishedproducts=Product.by_status('active')
 end
end
