class Admin::ShopsController < ApplicationController
  before_action :set_admin_shop, only: [:show, :edit, :update, :destroy]

  # GET /admin/shops
  # GET /admin/shops.json
  def index
    @admin_shops = Admin::Shop.all
  end

  # GET /admin/shops/1
  # GET /admin/shops/1.json
  def show
  end

  # GET /admin/shops/new
  def new
    @admin_shop = Admin::Shop.new
  end

  # GET /admin/shops/1/edit
  def edit
  end

  # POST /admin/shops
  # POST /admin/shops.json
  def create
    @admin_shop = Admin::Shop.new(admin_shop_params)

    respond_to do |format|
      if @admin_shop.save
        format.html { redirect_to @admin_shop, notice: 'Shop was successfully created.' }
        format.json { render :show, status: :created, location: @admin_shop }
      else
        format.html { render :new }
        format.json { render json: @admin_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/shops/1
  # PATCH/PUT /admin/shops/1.json
  def update
    respond_to do |format|
      if @admin_shop.update(admin_shop_params)
        format.html { redirect_to @admin_shop, notice: 'Shop was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_shop }
      else
        format.html { render :edit }
        format.json { render json: @admin_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/shops/1
  # DELETE /admin/shops/1.json
  def destroy
    @admin_shop.destroy
    respond_to do |format|
      format.html { redirect_to admin_shops_url, notice: 'Shop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_shop
      @admin_shop = Admin::Shop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_shop_params
      params.require(:admin_shop).permit(:lat, :lng, :name, :pref_id, :description)
    end
end
