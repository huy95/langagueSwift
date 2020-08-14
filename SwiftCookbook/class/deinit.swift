class Engine {
	public func start() {
		print("Start engine")
	}
	public func stop() {
		print("Stop engine")
	}
}
class Car {
	var engine: Engine
	init () {
		engine = Engine()
		engine.start()
	}
	deinit {
		engine.stop()
	}
}

var car: Car? = Car()
car = nil
