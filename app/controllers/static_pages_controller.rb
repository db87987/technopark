class StaticPagesController < ApplicationController
  layout "static"
  
  def home
    @slides = Slide.all
  end
end
