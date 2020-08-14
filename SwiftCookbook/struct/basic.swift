struct Location {
	var latitude: Double
	var longitude: Double
}

struct DeliveryRange {
  var range: Double
  let center: Location
}
let storeLocation = Location(latitude: 44.9871,
                             longitude: -93.2758)

var pizzaRange = DeliveryRange(range: 200, center: storeLocation)

print(pizzaRange.center.latitude)
pizzaRange.range = 250
debugPrint(pizzaRange)
