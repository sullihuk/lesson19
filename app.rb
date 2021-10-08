require 'sinatra'
require 'sinatra/contrib/all'

get '/faq' do
  @title = "FAQ"
  @message= "Under construction"
  erb :message  
end
get '/something' do
  @title = "Something"
  @message= "something else"
  erb :message  
end

get '/' do
    erb :index  
end

get '/contacts' do 
  @title = "Contacts"
  @message= "Phone number"
  erb :message  

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
