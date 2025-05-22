Rails.application.routes.draw do
  # Homepage
  get("/", { :controller => "misc", :action => "homepage" })

  # About page (optional)
  get("/about", { :controller => "home", :action => "about" })

  # Directors routes
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/:the_id", { :controller => "directors", :action => "show" })

  # Movies routes
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:the_id", { :controller => "movies", :action => "show" })

  # Actors routes
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:the_id", { :controller => "actors", :action => "show" })
end
