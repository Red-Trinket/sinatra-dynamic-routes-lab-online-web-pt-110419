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
    

end