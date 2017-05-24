class StoresController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  def index
    if params.key?(:query)
      @stores = Store.where('stores.name LIKE ?', "%#{params[:query]}%")
    else
      @stores = Store.all
    end
  end
  
 def create
    @store = Store.create(store_params)

    respond_to do |format|
      if @store.save
        format.html { redirect_to @store, notice: 'person was successfully created.' }
        format.json { render :show, status: :created, location: @store }
      else
         format.html { render :new }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end
    
      
  end

  def show
    @stores
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

