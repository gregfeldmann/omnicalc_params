class CalculationsController < ApplicationController
    def flex_square
        
       @user_number = params["a_number"].to_i
       
       @squared_number = @user_number**2
         
        
        render("calculations/flexible_square_template.html.erb")
    end
    
end    