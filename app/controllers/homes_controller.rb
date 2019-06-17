class HomesController < ApplicationController
  def index
    @realestates = Realestate.all
  end
end
