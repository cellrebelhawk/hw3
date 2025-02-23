Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get("/", { :controller => "travel", :action => "index" })
  resources "travel"
    get("/travel/new", {:controller => "travel", :action => "new"})
    get("/travel/:id", :controller => "travel", :action => "show") 
    post("/travel/", :controller => "travel", :action => "show") 
end
