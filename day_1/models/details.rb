class Contact

  def initialize(address, building, postcode, phone)
    @address = address
    @building = building
    @postcode = postcode
    @phone = phone
  end
 
  def postcode_upcase()
    result = @postcode.upcase
    return result
  end

  def building_camelcase()
    result = @building.split(" ").map {|word| word.capitalize}.join(" ")
    return result
  end



end