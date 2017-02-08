Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/", { :controller => "director", :action => "index" })

  get("/director", { :controller => "director", :action => "index" })
  get("/director/new",     { :controller => "director", :action => "new_director" })
  get("/director/add",     { :controller => "director", :action => "add_director" })
  get("/director/delete/:id", { :controller => "director", :action => "destroy" })
  get("/director/:id/edit",  { :controller => "director", :action => "edit_director" })
  get("/director/update/:id", { :controller => "director", :action => "update_director" })
  get("/director/:id",       { :controller => "director", :action => "show" })

  get("/actor", { :controller => "actor", :action => "index" })
  get("/actor/new",     { :controller => "actor", :action => "new_actor" })
  get("/actor/add",     { :controller => "actor", :action => "add_actor" })
  get("/actor/delete/:id", { :controller => "actor", :action => "destroy" })
  get("/actor/:id/edit",  { :controller => "actor", :action => "edit_actor" })
  get("/actor/update/:id", { :controller => "actor", :action => "update_actor" })
  get("/actor/:id",       { :controller => "actor", :action => "show" })

  get("/movie", { :controller => "movie", :action => "index" })
  get("/movie/new",     { :controller => "movie", :action => "new_movie" })
  get("/movie/add",     { :controller => "movie", :action => "add_movie" })
  get("/movie/delete/:id", { :controller => "movie", :action => "destroy" })
  get("/movie/:id/edit",  { :controller => "movie", :action => "edit_movie" })
  get("/movie/update/:id", { :controller => "movie", :action => "update_movie" })
  get("/movie/:id",       { :controller => "movie", :action => "show" })





end
