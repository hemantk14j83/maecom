class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  #render layout: "carts"

  # GET /orders
  # GET /orders.json
  def index
    @address=Address.by_user(current_user.id)
    @orders = Order.all
    @user=User.find(current_user)
    @selected_items=SelectedItem.find(@order)
    @product=Product.find(@selected_items)
    if @orders.nil
      render :partial => order
    else
      render :partial => noorder
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @address=Address.by_user(current_user.id)
    @selected_items=SelectedItem.by_cart(session[:cart_id])
    @cart=current_cart
    if @cart.selected_items.empty?
      redirect_to "/", :notice=>"Your Cart is empty."
      return
    end
    @order = Order.new
    respond_to do |format|
      format.html
      format.json {render json: @order}
    end
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    #@user=User.find(current_user.id)
    params[:user_id]=current_user.id
    @order = Order.new(order_params)
    @order.add_selected_items_from_cart(current_cart)

    respond_to do |format|
      if @order.save
        @order.update_attributes(:user_id=>current_user.id,:total_amount=>@order.total_amount)
        Cart.destroy(session[:cart_id])
        session[:cart_id]=nil
        format.html { redirect_to @order, notice: 'Order was successfully placed.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :phone, :address, :city, :state, :zip,:user_id,:total_amount)
    end
end
