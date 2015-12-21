class StoreController < ApplicationController
  def index
  	@products = Product.where(:status=>'active')
  end
end
