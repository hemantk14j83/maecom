class SelectedItemsController < ApplicationController
  before_action :set_selected_item, only: [:show, :edit, :update, :destroy]

  # GET /selected_items
  # GET /selected_items.json
  def index
    @selected_items = SelectedItem.all
    @product=Product.all
  end

  # GET /selected_items/1
  # GET /selected_items/1.json
  def show
  end

  # GET /selected_items/new
  def new
    @selected_item = SelectedItem.new
  end

  # GET /selected_items/1/edit
  def edit
  end

  # POST /selected_items
  # POST /selected_items.json
  def create
    #@selected_item = SelectedItem.new(selected_item_params)
    @cart = current_cart
    product=Product.find(params[:product_id])
    @selected_item = @cart.add_product(product.id)

    respond_to do |format|
      if @selected_item.save
        format.html { redirect_to @selected_item.cart} #notice: 'Selected item successfully added in your cart.' }
        format.json { render :show, status: :created, location: @selected_item }
      else
        format.html { render :new }
        format.json { render json: @selected_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selected_items/1
  # PATCH/PUT /selected_items/1.json
  def update
    respond_to do |format|
      if @selected_item.update(selected_item_params)
        format.html { redirect_to @selected_item, notice: 'Selected item was successfully updated.' }
        format.json { render :show, status: :ok, location: @selected_item }
      else
        format.html { render :edit }
        format.json { render json: @selected_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selected_items/1
  # DELETE /selected_items/1.json
  def destroy
    @selected_item.destroy
    respond_to do |format|
      format.html { redirect_to selected_items_url, notice: 'Selected item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_item
      @selected_item = SelectedItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selected_item_params
      params.require(:selected_item).permit(:product_id, :cart_id)
    end
end
