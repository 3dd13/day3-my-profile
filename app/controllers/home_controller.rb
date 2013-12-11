class HomeController < ApplicationController
  def index
    @name = "Eddie Lau"
    @description = "Ruby Coder"
    
    @positions = Position.all
  end
end
