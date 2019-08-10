 class SimplePagesController < ApplicationController

   def index
     @products = Product.all
   end

   def thank_you
     @name = params[:name]
     @email = params[:email]
     @message = params[:message]
     UserMailer.contact_form( @name, @email, @message).deliver_now
 end

   def landing_page
     @products = Product.limit(3)
  end
end
