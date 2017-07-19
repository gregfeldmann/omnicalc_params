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
     
     @interest=params["basis_points"].to_f
        @years=params["number_of_years"].to_i   
        @principal=params["present_value"].to_f
        @apr= @interest/100
        @apr=@apr/12
        
       @monthly_payment = (@principal * (@apr) * ((1+ @apr)**(@years*12))) / (((1+@apr)**(@years*12))-1)
   
        
        render("calculations/flexible_payment_template.html.erb")
    end    
    
    def min_max
    
      @min_input = params["min"].to_i
      
      @max_input = params["max"].to_i
      
      @random_number = rand(@min_input..@max_input)
    
     render("calculations/min_max_template.html.erb")
     
 end
 
    def square_new
        
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
     
  
     render("calculations/payment_new_template.html.erb")
     
 end
 
 def process_payment_new
     
      @interest=params["user_apr"].to_f   
        @years=params["user_years"].to_i
        @principal=params["user_principal"].to_i
        @apr= @interest/100
        @apr=@apr/12
        
       @monthly_payment = (@principal * (@apr) * ((1+ @apr)**(@years*12))) / (((1+@apr)**(@years*12))-1)
     
     
     render("calculations/process_payment_new_template.html.erb")
     
 end
 
 def random_new
 
 # @min_input = params["the_user_min"].to_i
      
  #    @max_input = params["the_user_max"].to_i
      
   #   @random_number = rand(@min_input..@max_input)
 
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
 
   @special_text = params["special_word"]
     
   @user_text_input = @user_text.split.count
   
   @characters_with = @user_text.length
   
   @characters_without = @user_text.gsub(/\s+/, "").length
   
  # @occurrences = @user_text.count(@special_text)
   
    @capitalizesw = @special_text.capitalize
        @countaaaa = @user_text.gsub(@special_text,"aaaaa")
        @countaaaa = @countaaaa.gsub(@capitalizesw,"aaaaa")
        
        @countaaaa = @countaaaa.count ("aaaaaa")
        @counttext = @user_text.count ("aaaaa")
        
        @occurrences =  (@countaaaa-@counttext)/4     
   
   
   render("calculations/process_word_count_new_template.html.erb")
  end
   
   def descriptive_stats_new
    
    render("calculations/descriptive_stats_new_template.html.erb")
   end
   
   def process_descriptive_stats_new
    
    @numbers= params["list_of_numbers"].gsub(',', '').split.map(&:to_f)
    
    @sorted_numbers = @numbers.sort
    
        @count = @numbers.count
    
        @min = @numbers.min
    
        @max = @numbers.max
    
        @range = @max-@min
        
        
  @sorted = @numbers.sort
  @len = @sorted.length
  @median_final = (@sorted[(@len - 1) / 2] + @sorted[@len / 2]) / 2.0

        
        @sum = @numbers.inject(0, :+)
    
        @mean = @sum/@count
        
        average=@mean
        squared_numbers=[]
        
        @sorted_numbers.each do |num|
            squared = (num-average)**2
          squared_numbers.push(squared)
        end  
        
        @variance = squared_numbers.sum/@count
    
        @standard_deviation = @variance ** 0.5 
     
     @nums = @numbers
@num_hash = Hash[@nums.uniq.map { |num| [num, @nums.count(num)] }]
@most_freq = @nums.sort_by { |num| @num_hash[num] }.last
     @most_freq = @mode_final
    
    render("calculations/process_descriptive_stats_new_template.html.erb")
    
   end
   
 end    