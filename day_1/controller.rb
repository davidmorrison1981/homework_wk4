require('sinatra')
require('sinatra/contrib/all')

a change

require( 'json' )

require_relative('./models/details')

get( '/' ) do
 return "David Morrison, Elliot House, mechanical engineer lost in the world of ruby"
end

get( '/address' ) do
 address =[
  street: '3 ARGYLE HOUSE', 
  building: 'CODEBASE', 
  postcode: 'e13 zqf', 
  phone: '0131558030']
 return address.to_json
end

get( '/address2' ) do
  content_type( :json )
  
  contact = Contact.new( params[:street, :building, :postcode, :phone])
  results = {
    upcase: @contact.postcode_upcase(),
    camelcase: @contact.building_camelcase()
    }
    return results.to_json
  end