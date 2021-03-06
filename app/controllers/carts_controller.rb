class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  before_action :authenticate_user!
  # GET /carts
  # GET /carts.json
  def index
    #@carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  #  begin
  #    @cart=Cart.find(params[:id])
  #  rescue ActiveRecord::RecordNotFound
  #    logger.error "Attempt to access Invalid Cart #{params[:id]}"
  #    redirect_to store_url, :notice => "Inalid cart"
  #  else
  #    respond_to do |fortmat|
  #      fortmat.html
  #      fortmat.json {render json: @cart}
  #    end
  #  end
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart=current_cart
    @cart.destroy
    session[:cart_id]=nil
    #@cart.destroy
    respond_to do |format|
      format.html { redirect_to "/", notice: 'Your cart is empty' }
      format.json { head :ok}#head :no_content }
    end
  end

  protected
  def not_found
      logger.error "Attempted to access Invalid cart #{params[:id]}"
      redirect_to "/"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params[:cart]
    end
end
