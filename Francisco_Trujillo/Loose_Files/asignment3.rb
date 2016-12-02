h = {:fname => "Francisco",
	:lname => "Trujillo",
	:nickname => "maracayero"}

h.delete(:nickname)
h.empty
h.has_key(:nickname)
h.has_value?("Francisco")