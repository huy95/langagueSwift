enum Action {
  case jump
  case kick
	case move(distance: Float)  // The "move" case has an associated distance
	case climb(step: Int)
}

func performAction(action: Action) {
	switch action {
		case .jump:
			print("jump")
		case .kick:
			print("kick")
		case .move(let distance):
			print("move : \(distance)")
		case .climb(let step):
			print("climb : \(step)")
	}
}


performAction(action: .move(distance: 3.34))
performAction(action: .climb(step:10))
