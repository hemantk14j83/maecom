class VendorsController < ApplicationController
  	before_filter :check_admin!, only: [:new,:create,:edit,:update,:show,:index,:destroy]
	before_action :set_vendor, only: [:show, :edit, :update, :destroy]

	def index
		@vendor=Vendor.paginate(:page=>params[:page],:per_page=>10).by_status("active")
	end

	def show
	end

	def new
		@vendor=Vendor.new
	end

	def create
		@user=User.find(current_user.id)
		@vendor=Vendor.new(vendor_params)
		@vendor.created_by=current_user.fname
		@vendor.status="active"
		if @vendor.save
			flash[:notice]="Vendor created successfully."
			#Notifier.new_vendor(@vendor).deliver_now
			redirect_to :action => :index
		else
			flash[:error]="Error while creating vendor"
			render 'new'
		end
	end

	def edit
	end

	def update
	  respond_to do |format|
	      if @vendor.update(vendor_params)
	        format.html { redirect_to @vendor, notice: 'Vendor updated successfully.' }
	        format.json { render :show, status: :ok, location: @vendor }
	      else
	        format.html { render :edit }
	        format.json { render json: @vendor.errors, status: :unprocessable_entity }
	      end
	   end
	end

	def destroy
	  respond_to do |format|
	      if @vendor.update_attributes(:status=>"deleted")
	        format.html { redirect_to "/vendors", notice: 'Vendor de-activated successfully.' }
	        format.json { render :show, status: :ok, location: @vendor }
	      else
	        format.html { render :edit }
	        format.json { render json: @vendor.errors, status: :unprocessable_entity }
	      end
	  end
	end

	private

	def check_admin!
		if current_user && current_user.admin?
			
		else
			redirect_to "/"
		end
	end

	def set_vendor
		@vendor=Vendor.find(params[:id])
	end

	def vendor_params
		params.require(:vendor).permit(:name, :email, :product_category, :is_seller, :cod_available, :address, :proprietor_name, :pan_no, :tin_no, :status, :comments, :payment_method, :currency_code, :return_period, :return_term, :manager_email, :poc_name, :poc_contact, :payable_name, :created_by, :created_at,:updated_by, :updated_at)
	end
end