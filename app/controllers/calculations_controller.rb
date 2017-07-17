class CalculationsController < ApplicationController
    def flex_square
        
       @user_number = params["a_number"].to_i
       
       @squared_number = @user_number**2
         
        
        render("calculations/flexible_square_template.html.erb")
    end
    
    def flexible_square_root 
    
      @user_number = params["a_number"].to_i
       
       @square_root = @user_number**2
         
        
        render("calculations/flexible_square_root_template.html.erb")
    end    
    
    def flexible_payment
    
      @bps_input = params["basis_points"].to_i
       
      @bps = @bps_input/100
    
     @years_input = params["number_of_years"].to_i    
        
        @principal_input = params["present_value"].to_i
        
        @payment = (@bps*@principal_input)/(1-(1+@bps)**@years_input).to_i
        
        
    # P = (r*PV)/(1-(1+r)^-n    
        
        render("calculations/flexible_payment_template.html.erb")
    end    
    
    def min_max
    
      @min_input = params["min"].to_i
      
      @max_input = params["max"].to_i
      
      @random_number = rand(@min_input..@max_input)
    
     render("calculations/min_max_template.html.erb")
     
 end
 
    def square_new
        
       @user_number = params["a_number"].to_i
       
       @squared_number = @user_number**2
        
        render("calculations/square_new_template.html.erb")
    end    
    
    def process_square
        
         @the_number = params["the_user_number"].to_f
       
         @the_square = @the_number**2
    
        
          render("calculations/process_square_template.html.erb")
    end
    
 
end    