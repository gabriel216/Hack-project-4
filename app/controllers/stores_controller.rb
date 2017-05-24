class StoresController < ApplicationController
  # skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  def index
    if params.key?(:query)
      @stores = Store.where('stores.name LIKE ?', "%#{params[:query]}%")
    else
      @stores = Store.all
    end
  end

  def show
    @store = Store.first
  end
 
  def edit
  end
 
  def new
    @store = Store.new
  end
  
def create
    @store = Store.new(store_params)

    respond_to do |format|
      if @store.save
        format.html { redirect_to @store, notice: 'store was successfully created.' }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render :new }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    
  end

  def destroy
    
  end
  
  private

  def store_params
    params.require(:store).permit(:name, :kind)
  end

end
