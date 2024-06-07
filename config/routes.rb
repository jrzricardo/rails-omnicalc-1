Rails.application.routes.draw do
  get("/", {:controller => "calc", :action => "home"})
  get("/square/new/", {:controller => "calc", :action => "square"})
  get("/square/results/", {:controller => "calc", :action => "square_results"})
end
