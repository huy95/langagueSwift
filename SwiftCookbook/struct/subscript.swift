struct DaysOfWeek {
  private var days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
  subscript(index: Int) -> String {  //Đây là một hàm đặc biệt để truy 
//xuất đến từng  phần tử trong struct, class hoặc enum
    get {
      return days[index]
    }
    set {
      days[index] = newValue
		}
	}
}

var week = DaysOfWeek()
//you access an element of an array at index by array[index].
debugPrint(week[1])
debugPrint(week[0])
week[0] = "Sunday"
debugPrint(week[0])


struct Food {
  enum MealTime {
    case Breakfast, Lunch, Dinner
	}
  var meals: [MealTime: String] = [:]

	subscript (type: MealTime) -> String? {
    get {
      return meals[type]
    }
    set {
      meals[type] = newValue
		}
	}
}

var diet = Food()
diet[.Breakfast] = "Scrambled Eggs"
diet[.Lunch] = "Rice"
print("I had \(diet[.Breakfast]!) for breakfast")



