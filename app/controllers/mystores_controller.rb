class MystoresController < ApplicationController
	def jiyacollection
 		@products=Product.all
 		#@products=Product.find_by(:vendor_id=>'Test Vendor')
 	end
end