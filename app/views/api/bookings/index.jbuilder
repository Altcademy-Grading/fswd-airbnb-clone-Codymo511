json.bookings do

  json.array! @bookings do |booking|
    json.id                 booking.id
    json.start_date         booking.start_date
    json.end_date           booking.end_date
    json.is_paid            booking.is_paid?

    json.property do
      json.id               booking.property.id
      json.city             booking.property.city
      json.title            booking.property.title
      json.images            url_for(booking.property.images)
      json.price_per_night  booking.property.price_per_night
      
      # json for the owner of the property
      json.user do
        json.id             booking.property.user.id
        json.username       booking.property.user.username
      end
    end

    # json for the user who booked to this property
    json.user do
      json.id               booking.user.id
      json.username           booking.user.username
    end
   
  end
end