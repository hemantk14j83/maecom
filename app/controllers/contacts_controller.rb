class ContactsController < ApplicationController
	before_filter :check_admin!, only: [:show,:index]
	before_action :set_contact, only: [:show, :edit, :update, :destroy]
	
	#before_filter do
#		redirect_to "/" unless current_user && current_user.admin?
	#end
	

	def index
		@contact=Contact.paginate(:page=>params[:page],:per_page=>10).all
		#by_status('open').recent
		#@contact=Contact.by_status('closed').recent
	end

	def closed
		
	end

	def show
	end
	
	def new
		@contact=Contact.new
	end

	def create
		@contact=Contact.new(contact_params)

		if @contact.save
			flash[:notice]="Thanks for contacting us, our support team will get back to you ASAP."
			Notifier.contact_rcd(@contact).deliver_now
			redirect_to contactus_path
		else
			flash[:notice]="Something went wrong, please try after sometime or you can contact us on below given numbers."
			redirect_to contactus_path
		end
	end

	def edit
	end

	def replied
		@contact=Contact.find(params[:id])
		
		if @contact.update_attributes(:status=>"closed",:replied_at=>Time.now)
			flash[:notice]="Done"
			redirect_to contacts_path
		else
			flash[:notice]="Error while updating status"
			redirect_to contacts_path
		end
	end

	private 
	def check_admin!
		if current_user && current_user.admin?
			
		else
			redirect_to contactus_path
		end
	end
	def set_contact
		@contact=Contact.find(params[:id])
	end
	def contact_params
		params.require(:contact).permit(:name,:email,:phone,:topics,:message,:status,:replied_at)
	end

end
