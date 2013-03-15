class StaticPagesController < ApplicationController
  layout "static"
  
  def home
    @slides = Slide.order("SN ASC")
    @categories = Category.all
  end
end
