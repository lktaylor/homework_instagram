class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id = params[:id]
    @photo = Photo.find(@id)
  end

  def new_form
  end

  def create_row
      new_record = Photo.new
      new_record.caption = (params[:the_caption])
      new_record.source = (params[:the_source])
      new_record.save
  end

  def destroy
    i = Photo.find(params[:id])
    i.destroy
  end

  def edit_form
      @photo = Photo.find(params[:id])
  end

  def update_row
      old_record = Photo.find(params[:id]
      old_record.caption = (params[:the_caption])
      old_record.source = (params[:the_source])
      old_record.save
  end

end
