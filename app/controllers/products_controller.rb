class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @products = Product.all
    @carts = Product.where(id: Cart.pluck(:product_id))
    @total_price = Cart.total_price
    
    p "!!!!!!!!!!! @total_price:"
    p  @total_price
  end

  def add_cart
    # p "params"
    # p params
    @product = Product.find(params[:id])
    @cart = @product.cart

    if @cart.nil?
      @cart = Cart.create({product_id: @product.id, quality: 1})
      @product.reload
    else
      @cart.quality += 1
      @cart.save
      p "qauuuly"
      p @cart.quality
    end
    @total_price = Cart.total_price
  end

  def remove_cart
    p "dele params"
    p params
    @product = Product.find(params[:id])
    @cart = @product.cart
    if @cart.quality > 1
      @cart.quality -= 1
      @cart.save
    else
      @cart.destroy
      @cart.save
      @cart = nil
    end
    @total_price = Cart.total_price
    @current_cart = Cart.all
  end

  def delete_cart
    @product = Product.find(params[:id])
    @cart = @product.cart.destroy
    @cart.save
    @cart = nil
    @total_price = Cart.total_price
    @current_cart = Cart.all
  end

  def show_all
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :image, :color)
    end
end
