class ProductsController < ApplicationController
   def index
<<<<<<< HEAD
     @store = Store.find_by(id: params[:store_id])
     @products = @store.products
      respond_to do |format|
      format.json {render json: @products}
      format.html #index.html.haml
      end
  end

  def show
  end
 
  def edit
  end
 
  def new
    @store = Store.find_by(set_store)
    @product = @store.products.build
  end

def create
  @store = Store.find_by(set_store)
  if @store 
    @product = @store.products.build(product_params)
    if @product.save
      redirect_to @product, notice: 'Product was Created'
    else
      render :new
    end
  else
    redirect_to stores_path, notice: 'store not found'
  end
end


  def update
  end

  def destroy
  end
  
  private


  def set_store
    @store = Store.find_by(id: params[:store_id])
  end
  def product_params
    params.require(:product).permit(:name, :price, :quantity, :description, :img)
  end

end
