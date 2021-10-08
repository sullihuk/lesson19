require 'sinatra'
require 'sinatra/contrib/all'

get '/' do
    erb :index  
end

get '/contacts' do 
  '19191991'
end

post '/' do
  @login = params[:aaa]
  @password =params[:bbb]
  if @login == 'admin' && @password == 'secret'
    erb :welcome
  else
    @error_message = 'Access Denied'
  erb :index
  end
end
