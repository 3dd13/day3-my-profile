class PositionsController < ApplicationController
  def index
    @positions = Position.all
  end
  
  def create
    # "position"=>{"title"=>"Cleaner", "company"=>"Cocoon"}
    position = Position.create(title: params[:position][:title], company: params[:position][:company])
    
    redirect_to positions_path
    # redirect_to position_path(position)
  end
  
  def update
    @position = Position.find(  params[:id]  )
    @position.update(title: params[:position][:title], company: params[:position][:company])
    
    redirect_to positions_path
  end  
  
  def new
    @position = Position.new
  end
  
  def edit
    @position = Position.find(  params[:id]  )
  end
  
  def show
    @position = Position.find(  params[:id]  )
  end
  

  
  def destroy
    @position = Position.find(  params[:id]  )    
    @position.destroy
    
    redirect_to positions_path
  end
end