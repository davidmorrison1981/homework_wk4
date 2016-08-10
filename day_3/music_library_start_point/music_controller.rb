require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/album') 
require_relative('./models/artist')

#index - artist
get '/artists' do
  @artists = Artist.all()
  erb ( :'index/artists' )
end

#index - album
get '/albums' do
  @albums = Album.all()
  erb ( :'index/albums' )
end

#new  - artist
get '/artists/new' do 
  erb( :'new/artist' )
end

#new  - album
get '/albums/new' do 
  erb( :'new/album' )
end

#create - artist
post '/artists' do 
  @artist = Artist.new( params )
  @artist.save() 
  erb( :'create/artist' )
end

#create - album
post '/albums' do 
  @album = Album.new( params )
  @album.save() 
  erb( :create_album )
end

#show - artist
get '/artists/:id' do
  @artist = Artist.find( params[:id] )
  erb(:show_artist)
end

#show - album
get '/albums/:id' do
  @album = Album.find( params[:id] )
  erb(:show_album)
end

#edit artist
get '/artists/:id/edit' do
  @artist = Artist.find( params[:id] )
  erb( :'artists/edit' )
end  

#edit album
get '/albums/:id/edit' do
  @album = Album.find( params[:id] )
  erb( :'albums/edit' )
end  

#update artist
post '/artists/:id' do
  Artist.update( params )
  redirect (to( "/artists/#{params[:id]}" ))
end  

#update albums
post '/albums/:id' do
  Album.update( params )
  redirect (to( "/albums/#{params[:id]}" ))
end  

#destroy artists
post '/artists/:id/delete' do 
  Artist.destroy( params[:id] )
  redirect (to( '/artists' ))
end  

#destroy albums
post '/albums/:id/delete' do 
  Album.destroy( params[:id] )
  redirect (to( '/albums' ))
end  