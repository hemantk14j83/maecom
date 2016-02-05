class WishlistsController < ApplicationController
	before_filter :set_wishlist, only: [:remove]
	before_filter :authenticate_user!

	def index
		@wishlists=Wishlist.find_by(user_id: current_user.id)
		#@user=User.find(current_trainer.id)
    	@product=Product.find(id: @wishlists.product_id)
	end

	def show
	end

	#def new
	#	@wishlist=Wishlist.new
	#end

	def create
		@user=User.find(current_user.id)
		@product=Product.find(params[:product_id])
		@wishlists=Wishlist.new(:product_id=>params[:product_id],:user_id=>current_user.id,:status=>'active')

		if @wishlists.save
			flash[:notice]="Product added to wihslist"
			redirect_to :back
		else
			flash[:notice]="Something went wrong"
			redirect_to :back
		end
	end

	def remove
	  	if @wishlist.update_attributes(:status=>'deleted')
			flash[:notice]='Product removed from wishlist'
			redirect_to "/myaccount#mywl"
		else
		   	flash[:notice]='Error removing product from wishlist.'
			redirect_to "/myaccount#mywl"
		end
	end
	#if @savedprogram.update_attributes(:status=>'active')
    #    format.html { redirect_to "/trainers/profile", notice: 'Added to saved list.' }
    #    format.json { head :no_content }
    #  else
    #    format.json {render json: @savedprogram.errors, status: :unprocessable_entity}
    #    redirect_to "/trainers/profile"
    #  end
    #end

	private
	def set_wishlist
		@wishlist=Wishlist.find(params[:id])
	end
	def wishlist_params
      params.require(:wishlist).permit(:status,:product_id, :user_id)
    end
end
