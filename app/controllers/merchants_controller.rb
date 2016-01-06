class MerchantsController < ApplicationController
	before_filter :check_admin!, only: [:show,:index,:rejected,:approve]
	before_action :set_merchant, only: [:show, :edit, :update, :destroy]

	def index
		@merchant=Merchant.paginate(:page=>params[:page],:per_page=>10).all
	end

	def new
		@merchant=Merchant.new
	end

	def create
		@merchant=Merchant.new(merchant_params)

		if @merchant.save
			flash[:notice]='Thanks for submitting details. Soon, our representative will get in touch with you.'
			Notifier.new_merchant(@merchant).deliver_now
			Notifier.to_merchant(@merchant).deliver_now
			redirect_to merchant_signup_path
		else
			flash[:error]="Something went wrong, please try after sometime or you #{view_context.link_to('Contact us','/contactus')}."
			redirect_to merchant_signup_path
		end
	end

	def edit
	end

	def update
		if @merchant.update(merchant_params)
			flash[:notice]="Merchant rejected successfully"
			redirect_to merchants_path
		else
			flash[:notice]="Error while rejecting merchant, please try after sometime."
			redirect_to merchants_path
		end
	end

	def approve
		@merchant=Merchant.find(params[:id])
		if @merchant.update_attributes(:status=>"approved")
			flash[:notice]="Merchant Approved successfully"
			#Notifier.merchant_approved(@merchant).deliver_now
			redirect_to merchants_path
		else
			flash[:notice]="Error while approving merchant, please check with admin"
			redirect_to merchants_path
		end
	end
	def reject
		@merchant=Merchant.find(params[:id])
		if @merchant.update_attributes(:status=>'rejected')
			#flash[:notice]="Merchant Rejected successfully"
			redirect_to edit_merchant_path
		else
			flash[:notice]="Error while rejecting merchant, please check with admin"
			redirect_to merchants_path
		end
	end
	def rejected #renders rejected merchant
		@merchant=Merchant.paginate(:page=>params[:page],:per_page=>10).by_status('rejected').recent
	end

	private

	def check_admin!
		if current_user && current_user.admin?
			
		else
			redirect_to merchant_signup_path
		end
	end
    # Use callbacks to share common setup or constraints between actions.
    def set_merchant
      @merchant = Merchant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merchant_params
      params.require(:merchant).permit(:company, :address, :city, :state,:country, :pincode, :pan_number, :tin_number, :interested_category, :listing_fee, :description, :fulfillment, :poc_name, :poc_designation, :poc_email, :poc_phone,:status,:reason)
    end
end
