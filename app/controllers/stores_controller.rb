class StoresController < ApplicationController

  def index
    @store = Store.all
  end
  
  def create
    @store = Store.new(store_params)
    respond_to do |format|
      if @store.save
        #format.html { redirect_to @store, notice: 'person was successfully created.' }
        format.json { render :show, status: :created, location: @store }
      else
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
      
  end

  def show
    
  end

  def edit
    
  end

  def new
    @store = Store.new
  end

  def destroy
    
  end

  def update
    
  end
  private

  def store_params
    params.require(:store).permit(:name, :kind)
  end
  
end

end
