Rails.application.routes.draw do
  get 'marketing/page'
  # Resources
  resources "sessions"
  resources "users"
  resources "posts"
  
  # Login/logout
  get("/login", { :controller => "sessions", :action => "new" })
  get("/logout", { :controller => "sessions", :action => "destroy" })
  

  # Define the root route
  get("/", { :controller => "users", :action => "new" })
end
