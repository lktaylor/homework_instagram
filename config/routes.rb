Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/all_photos", { :controller => "photos", :action => "index" })
  get("/photo_details/:id", { :controller => "photos", :action => "show" })

  # Route for users to CREATE content
  get("/new_photo_form", { :controller => "photos", :action => "new_form" })

  # Route to destroy an existing photo
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

  # Route to EDIT form
  get("/edit_photo_form/:id", { :controller => "photos", :action => "edit_form" })
  get("update_photo/:id", { :controller => "photos", :action => "update_row" })

  get("/photobucket", { :controller => "photos", :action => "view_photobucket" })

end
