class AdpanelController < ApplicationController
	before_filter :check_admin!, only: [:show,:index]
	#before_action :set_merchant, only: [:show, :edit, :update, :destroy]
	def show
		render template: "adpanel/index"
 	end


 	private
      #def valid_page?
      #  File.exist?(Pathname.new(Rails.root + "app/views/adpanel/#{params[:page]}.html.erb"))
      #end
      def check_admin!
      	if current_user && current_user.admin?
                  render template: "adpanel/index"
      	else
                  render file: "public/404.html", status: :not_found
      	end
      end
end
