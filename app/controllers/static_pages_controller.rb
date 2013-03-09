class StaticPagesController < ApplicationController
  layout "static"
  
  def home
    @slides = Slide.order("SN ASC")
  end
end
