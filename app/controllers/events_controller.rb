class EventsController < ApplicationController
  def index
    @tags = Tag.all
  end
end
