class Admin::ImagesController < ApplicationController
	def index
		@images = Image.where("image_type = ?",params[:type]).where("parent_id = ?",params[:parent_id])
		@type=params[:type]
		@parent_id=params[:parent_id]
	end 

	def update
	end

	def destroy
		@image=Image.find(params[:id])
		type=@image.image_type
		parent_id=@image.parent_id
		@image.destroy
		redirect_to :controller => "admin/images", :action => "index", :parent_id=>parent_id,:type => type
	end

	def create
		@image = Image.new(image_params)

	    if @image.save
	        redirect_to :controller => "admin/images", :action => "index", :parent_id=>params[:image][:parent_id], :type => params[:image][:image_type]
	    else
	      render :action => 'add'
	    end
	end

	def new
		@image=Image.new
		@type=params[:type]
		@parent_id=params[:parent_id]
		
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_id
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:name, :url, :image_type, :parent_id)
    end
end
