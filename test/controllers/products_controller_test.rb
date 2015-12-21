require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { base_price: @product.base_price, brand: @product.brand, category: @product.category, dealer_price: @product.dealer_price, description: @product.description, disclaimer: @product.disclaimer, features: @product.features, image_url: @product.image_url, offer_price: @product.offer_price, offer_test: @product.offer_test, quantity_limit: @product.quantity_limit, sales_package: @product.sales_package, shipping_cost: @product.shipping_cost, status: @product.status, sub_category: @product.sub_category, title: @product.title, type: @product.type, unit_type: @product.unit_type, updated_by: @product.updated_by, updated_on: @product.updated_on, uploaded_by: @product.uploaded_by, uploaded_on: @product.uploaded_on, vendor_id: @product.vendor_id }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { base_price: @product.base_price, brand: @product.brand, category: @product.category, dealer_price: @product.dealer_price, description: @product.description, disclaimer: @product.disclaimer, features: @product.features, image_url: @product.image_url, offer_price: @product.offer_price, offer_test: @product.offer_test, quantity_limit: @product.quantity_limit, sales_package: @product.sales_package, shipping_cost: @product.shipping_cost, status: @product.status, sub_category: @product.sub_category, title: @product.title, type: @product.type, unit_type: @product.unit_type, updated_by: @product.updated_by, updated_on: @product.updated_on, uploaded_by: @product.uploaded_by, uploaded_on: @product.uploaded_on, vendor_id: @product.vendor_id }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
