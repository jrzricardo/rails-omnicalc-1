Rails.application.routes.draw do
  get("/", {:controller => "calculator", :action => "home"})
  get("/square/new/", {:controller => "calculator", :action => "square"})
end
