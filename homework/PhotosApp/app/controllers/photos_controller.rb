class PhotosController < ApplicationController
  def new
      
  end
  
  def index
    @photos = Photo.all
  end
  
  def show
    @photo = Photo.find(params[:id])
  end
  
  def edit
     @photo=Photo.find(params[:id])
     
  end
  
  def update
    @photo=Photo.find(params[:id])
    @photo.update_attributes(params[:photo])
    
   redirect_to photos_url
  
  end
  

  def create
    @photo = Photo.new
    @photo.title = params[:title]
    @photo.url= params[:url]
    @photo.save
    redirect_to photos_url
  end

  def destroy
    @photo = Photo.find_by_id(params[:id])
    @photo.destroy
    redirect_to photos_url
  end

end
