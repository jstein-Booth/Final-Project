Rails.application.routes.draw do
get("/", { :controller => "users", :action => "index" })

  # User routes
  #SIGN IN
  get("/user_sign_in", {:controller => "users", :action => "new_session_form" })
  post("/verify_credentials", {:controller => "users", :action => "authenticate" })
  
  #SIGN UP
  get("/user_sign_up", {:controller => "users", :action => "new_registration_form" })
  get("/user_sign_up", {:controller => "users", :action => "sign_up" })

  #SIGN OUT
  get("/users_sign_out", {:controller => "users", :action => "sign_out" })
  

  # CREATE
  get("/insert_user_record", {:controller => "users", :action => "create" })

  # READ
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:the_username", {:controller => "users", :action => "show"})

  # UPDATE
  get("/update_user/:the_user_id", {:controller => "users", :action => "update" })

  # DELETE
  get("/delete_user/:the_user_id", {:controller => "users", :action => "destroy"})

  # Photo routes

  # CREATE
  get("/insert_photo_record", { :controller => "photos", :action => "create" })

  # READ
  get("/photos", { :controller => "photos", :action => "index"})

  get("/photos/:the_photo_id", { :controller => "photos", :action => "show"})

  # UPDATE
  get("/update_photo/:the_photo_id", { :controller => "photos", :action => "update" })

  # DELETE
  get("/delete_photo/:the_photo_id", { :controller => "photos", :action => "destroy"})



  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
