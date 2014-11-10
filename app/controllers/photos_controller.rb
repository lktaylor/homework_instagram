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

  def destroy
    photo = Photo.find{:id}
    photo.destroy
  end

  def edit_form
      @photo = Photo.find_by({:id => params[:id]})
      @photo.caption
      @picture = @photo.source
  end

  def update_row
      photo = Photo.find{:id}
      photo.caption = "the_caption"
      photo.save
  end

end
