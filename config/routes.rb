Rails.application.routes.draw do
  
  get("/flexible/square/:a_number", { :controller => "calculations", :action => "flex_square"})
  
  # get("/square/new", { :controller => "calculations", :action => "square_form"})
  
    get("/flexible/square/root/:a_number", { :controller => "calculations", :action => "flexible_square_root"})
    
   get("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller => "calculations", :action => "flexible_payment"})  
   
   get("/flexible/random/:min/:max", { :controller => "calculations", :action => "min_max"})
   
   get("/square/new", { :controller => "calculations", :action => "square_new"})
   
   get("/square/results", { :controller => "calculations", :action => "process_square"})
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
