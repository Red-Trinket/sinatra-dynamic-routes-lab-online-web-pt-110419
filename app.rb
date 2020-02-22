require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/' do 
    "This is my home"
  end
  
  get '/reversename/:name' do 
    @name = params[:name].to_s.reverse 
    "#{@name}"
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i 
    @square = @number ** 2 
    "#{@square}"
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i 
    @phrase = params[:phrase].to_s 
    @str = "" 
    n = 0 
    while n < @number do 
      @str << "\n#{@phrase}\n\n"
      n = n + 1 
    end 
    "#{@str}"
  end 

end