class ProductsController < ApplicationController
 def new
    @store = Store.find_by(id: params[:store_id])
    @product = @store.products.build
    @kinds = Product.kinds.keys.to_a
  end

  def create
    @store = Store.find_by(id: params[:store_id])
    if @store
      @product = @store.products.build(product_params)
      if @product.save
        redirect_to @store, notice: 'product was successfully created.'
      else
        render :new
      end
    else
      redirect_to store_path, notice: 'store not found'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @store = @product.store
    @product.destroy
    respond_to do |format|
      format.html { redirect_to @store, notice: 'product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :quantity, :description)
  end
end
