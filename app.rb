require 'sinatra'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/prs' do
  erb :prs
end

get '/education' do
  erb :education
end
