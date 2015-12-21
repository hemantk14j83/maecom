class AddressesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_address, only: [:show,:edit,:update,:destroy]

	def create
		@user=User.find(current_user.id)
		@address=@user.addresses.create(address_params)
		redirect_to "/myaccount#address"
	end

	private
	def address_params
		params.require(:address).permit(:name,:address,:landmark,:city,:state,:zip,:contact)
	end
end
