class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id = params[:id]
    @photo = Photo.find(@id)
  end

  def new_form
    @photo = Photo.new_photo_form

  end

end
