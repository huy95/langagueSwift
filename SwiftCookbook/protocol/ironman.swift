protocol ISwim {
	func swim()
}

protocol IRun {
	func run()
}

protocol ICycle {
	func cycle()
}

class Duathlon : ISwim, IRun {

	func swim() {
		print("Duathlon swim")
	}
	func run() {
		print("Duathlon run")
	}
}

class Triathlon : ISwim, IRun, ICycle {
	func swim() {
    print("Triathlon swim")
  }
  func run() {
		print("Triathlon run")
  }
	func cycle() {
		print("Triathlon cycle")
	}
}

func getIronman(sportman: ISwim & ICycle) {
	sportman.swim()
	sportman.cycle()
}

let bozo = Duathlon()
let mone = Triathlon()
getIronman(sportman: mone)

