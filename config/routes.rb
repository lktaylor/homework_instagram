Rails.application.routes.draw do
  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/all_photos", { :controller => "photos", :action => "index" })
  get("/photo_details/:id", { :controller => "photos", :action => "show" })

  # Route for users to CREATE content
  get("/new_photo_form", { :controller => "photos", :action => "new_form" })

end
