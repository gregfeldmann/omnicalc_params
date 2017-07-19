class CalculationsController < ApplicationController
    def flex_square
        
       @user_number = params["a_number"].to_i
       
       @squared_number = @user_number**2
         
        
        render("calculations/flexible_square_template.html.erb")
    end
    
    def flexible_square_root 
    
      @user_number = params["a_number"].to_i
       
       @square_root = @user_number**0.5
         
        
        render("calculations/flexible_square_root_template.html.erb")
    end    
    
    def flexible_payment
    
     @bps_input = params["basis_points"].to_i
       
     @bps = @bps_input/10000
    
     @years_input = params["number_of_years"].to_i    
        
      @principal_input = params["present_value"].to_i
        
      # @payment = (@bps*@principal_input)/(1-(1+@bps)**@years_input).to_i
        
        
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
        
     #  @user_number = params["a_number"].to_i
       
     #  @squared_number = @user_number**2
        
        render("calculations/square_new_template.html.erb")
    end    
    
    def process_square
        
         @the_number = params["the_user_number"].to_f
       
         @the_square = @the_number**2
    
    
          render("calculations/process_square_template.html.erb")
    end
    
 def square_root_new
     
       #  @the_number = params["a_number"].to_f
       
      #   @the_square_root = @the_number**0.5
     
     render("calculations/square_root_new_template.html.erb")
     
 end
 
  def process_square_root_new
        
       @the_number = params["the_user_number"].to_f
       
       @the_square_root = @the_number**0.5
    
        
        render("calculations/process_square_root_template.html.erb")
 end
 
 def payment_new
     
       @bps_input = params["basis_points"].to_i
       
      @bps = @bps_input/10000
    
     @years_input = params["number_of_years"].to_i    
        
        @principal_input = params["present_value"].to_i
        
       @payment_new = (@bps*@principal_input)/(1-(1+@bps)**@years_input).to_i
        
        
    # P = (r*PV)/(1-(1+r)^-n  
     render("calculations/payment_new_template.html.erb")
     
 end
 
 def process_payment_new
     
     @user_apr = params["the_user_apr"].to_f
       
    @user_years = params["the_user_years"].to_f
    
    @user_pv = params["the_user_pv"].to_f
     
     render("calculations/process_payment_new_template.html.erb")
     
 end
 
 def random_new
 
  @min_input = params["the_user_min"].to_i
      
      @max_input = params["the_user_max"].to_i
      
      @random_number = rand(@min_input..@max_input)
 
 render("calculations/random_new_template.html.erb")
     
 end
 
 def process_random_new
 
   @the_user_min = params["the_user_min"].to_f
   
   @the_user_max = params["the_user_max"].to_f
    
   @random_number_new = rand(@the_user_min..@the_user_max)
 
 render("calculations/process_random_new_template.html.erb")
 
 end
   
  def word_count_new

   # @character_count_with_spaces = @word_.length
    

   # @character_count_without_spaces = @text.gsub(/\s+/, "").length
    

   # @occurrences = @text.count("hey")
   render("calculations/word_count_new_template.html.erb")
   
  end
      
     
  
   
  def process_word_count_new
   @user_text = params["user_text"]
 
   @user_text_input = @user_text.split.count
   
   render("calculations/process_word_count_new_template.html.erb")
  end
   
   
   
 end    