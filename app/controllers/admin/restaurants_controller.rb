class Admin::RestaurantsController < ApplicationController
  before_action :set_admin_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /admin/restaurants
  # GET /admin/restaurants.json
  def index
    @restaurants = Restaurant.all
  end

  # GET /admin/restaurants/1
  # GET /admin/restaurants/1.json
  def show
  end

  # GET /admin/restaurants/new
  def new
    @restaurant = Restaurant.new
    @country=Country.all
    @category=Category.where("category_type='restaurant'")
    @pref=Pref.all
  end

  # GET /admin/restaurants/1/edit
  def edit
    @restaurant = Restaurant.find params[:id]
    @country=Country.all
    @category=Category.where("category_type='restaurant'")
      @pref=Pref.all
  end

  # POST /admin/restaurants
  # POST /admin/restaurants.json
  def create
    @restaurant = Restaurant.new(admin_restaurant_params)

    if @restaurant.save
        redirect_to :controller => "admin/restaurants", :action => "index"
    else
      render :action => 'add'
    end
  end

  # PATCH/PUT /admin/restaurants/1
  # PATCH/PUT /admin/restaurants/1.json
  def update
    
      if @admin_restaurant.update(admin_restaurant_params)
        redirect_to :controller => "admin/restaurants", :action => "index"
      else
        format.html { render :edit }
        format.json { render json: @admin_restaurant.errors, status: :unprocessable_entity }
      end
    
  end

  # DELETE /admin/restaurants/1
  # DELETE /admin/restaurants/1.json
  def destroy
    @admin_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to admin_restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_restaurant
      @admin_restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_restaurant_params
      params.require(:restaurant).permit(:lat, :lng, :name, :pref_id, :description, :kana_name, :address, :kana_address, :open, :close, :phone, :website, :status, :country_id)
    end
end
