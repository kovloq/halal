class Admin::MasjidsController < ApplicationController
  before_action :set_admin_masjid, only: [:show, :edit, :update, :destroy]

  # GET /admin/masjids
  # GET /admin/masjids.json
  def index
    @admin_masjids = Masjid.all
  end

  # GET /admin/masjids/1
  # GET /admin/masjids/1.json
  def show
  end

  # GET /admin/masjids/new
  def new
    @pref=Pref.all
    @masjid = Masjid.new
  end

  # GET /admin/masjids/1/edit
  def edit
    @pref=Pref.all
    @masjid = Masjid.find params[:id]
  end

  # POST /admin/masjids
  # POST /admin/masjids.json
  def create
    @admin_masjid = Masjid.new(admin_masjid_params)

  
      if @admin_masjid.save
        redirect_to :controller => "admin/masjids", :action => "index"
      else
        format.html { render :new }
        format.json { render json: @admin_masjid.errors, status: :unprocessable_entity }
      end
  
  end

  # PATCH/PUT /admin/masjids/1
  # PATCH/PUT /admin/masjids/1.json
  def update
    
      if @admin_masjid.update(admin_masjid_params)
        redirect_to :controller => "admin/masjids", :action => "index"
      else
        format.html { render :edit }
        format.json { render json: @admin_masjid.errors, status: :unprocessable_entity }
      end
   
  end

  # DELETE /admin/masjids/1
  # DELETE /admin/masjids/1.json
  def destroy
    @admin_masjid.destroy
    respond_to do |format|
      format.html { redirect_to admin_masjids_url, notice: 'Masjid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_masjid
      @admin_masjid = Masjid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_masjid_params
      params.require(:masjid).permit(:lat, :lng, :name, :pref_id, :description, :city, :post_code, :masjid_type, :address, :phone, :website, :email)
    end
end
