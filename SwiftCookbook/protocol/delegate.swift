protocol UITableViewDelegate : class {
	func setData(data: [Any])
	func drawCell(row: Int)
}

class UITableView {
	weak var delegate : UITableViewDelegate?
}

class ViewController : UITableViewDelegate {
	var tableView: UITableView
	func setData(data: [Any]) {
			print("set data \(data)")
	}

	func drawCell(row: Int) {
	}

	init() {
		self.tableView = UITableView()
		self.tableView.delegate = self
	}
}

var viewController = ViewController()
viewController.setData(data: [1, 2, 3, 4])

