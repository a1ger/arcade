json.extract! booking, :id, :firstname, :lastname, :date, :start, :hours, :players, :zone, :created_at, :updated_at
json.url booking_url(booking, format: :json)