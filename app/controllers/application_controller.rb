class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_u_permitted_parameters, if: :devise_controller?
  #before_filter :after_sign_in_path_for, if: :devise_controller?
  #before_filter :after_sign_out_path_for, if: :devise_controller?

  private

  def current_cart
  	Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
  	cart = Cart.create
  	session[:cart_id] = cart.id
  	cart
  end
  def store_referrer_location
    session[:return_to] = request.referrer
  end

  protected
    def configure_u_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) do |t|
      t.permit(:fname,:email,:encrypted_password,:lname)      
    end

    
    #devise_parameter_sanitizer.for(:sign_up) do |t|
    #  t.permit(:email, :encrypted_password,:fname,:lname)
    #end
    #devise_parameter_sanitizer.for(:sign_in) do |t|
    #  t.permit(:email, :password)
    #end
  end
end
