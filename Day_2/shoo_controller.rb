require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/shoe')

get '/shoo/new' do
  erb( :new)
end

post '/shoo' do
  @shoo = Shoo.new(params)
  @shoo.save()
 
  erb( :create )
end

get '/shoo' do
  @shoos = Shoo.all()
  erb( :index )
end