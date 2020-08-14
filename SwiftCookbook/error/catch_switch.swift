class Plane {
    enum Emergency: Error {
        case NoFuel
        case EngineFailure(reason: String)
        case DamagedWing
    }
    var fuelInKilograms: Int
		init(_ fuel: Int = 2000) {
			fuelInKilograms = fuel
		}

    func fly() throws {
        fuelInKilograms -= 100
        if fuelInKilograms <= 0 {
            // uh oh...
            throw Emergency.NoFuel
        }
		}
}

let airforceOne = Plane(1500)

do {
	for _ in 1...100 {
		try airforceOne.fly()
	}
} catch let emergency as Plane.Emergency {
    switch emergency {
    case .NoFuel:
        // call nearest airport for emergency landing
				print("No more fuel. Request emergency landing!")
    case .EngineFailure(let reason):
        print(reason) // let the mechanic know the reason
    case .DamagedWing:
        // Assess the damage and determine if the president can make it
				print("Try to land with other wing")
		}
}

