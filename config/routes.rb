Rails.application.routes.draw do
  get("/", {:controller => "calculator", :action => "home"})
end
