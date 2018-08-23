class Admin::ShopsController < ApplicationController
  before_action :set_admin_shop, only: [:show, :edit, :update, :destroy]

  # GET /admin/shops
  # GET /admin/shops.json
  def index
    @admin_shops = Shop.all
  end

  # GET /admin/shops/1
  # GET /admin/shops/1.json
  def show
  end

  # GET /admin/shops/new
  def new
    @shop = Shop.new
    @pref=Pref.all
  end

  # GET /admin/shops/1/edit
  def edit
    @shop=Shop.find(params[:id])
    @pref=Pref.all
  end

  # POST /admin/shops
  # POST /admin/shops.json
  def create
    @shop = Shop.new(admin_shop_params)
    @pref=Pref.all
    
      if @shop.save
        redirect_to :controller => "admin/shops", :action => "index"
      else
        

        
      end
    
  end

  # PATCH/PUT /admin/shops/1
  # PATCH/PUT /admin/shops/1.json
  def update
    @shop = Shop.find(params[:id])
    @pref=Pref.all
      if @admin_shop.update(admin_shop_params)
        redirect_to :controller => "admin/shops", :action => "index"
      else
        format.html { render :edit }
        format.json { render json: @admin_shop.errors, status: :unprocessable_entity }
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
      @admin_shop = Shop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_shop_params
      params.require(:shop).permit(:lat, :lng, :name, :pref_id, :description, :city, :post_code, :address)
    end
end
