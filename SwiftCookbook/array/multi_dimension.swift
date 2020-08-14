let array2x3 = [ [1, 2, 3], [4, 5, 6]]

for row in array2x3 {
		//print(row)
  	for (index, cell) in row.enumerated() {
			print("\(cell)", terminator: "")
			if index < row.count-1 {
				print(", ", terminator: "")
			} else {
				print()
			}
		}
}

//Tạo array có nhiều chiều hơn 2
var array3x4x2 = Array(repeating: Array(repeating: Array(repeating: 0,count: 2),count: 4),count: 3)
print(array3x4x2)

var arr: [[Int]] = [[Int]]()
/*
arr[0] = [1, 2, 3]
arr[1] = [4, 5, 6]
arr[2] = [7, 8, 9]
*/

arr.append([1, 2, 3])
arr.append([4, 5, 6])
arr.append([7, 8, 9, 10])
print(arr)


var groups = [[String]]()

// we create three simple string arrays for testing
var groupA = ["England", "Ireland", "Scotland", "Wales"]
var groupB = ["Canada", "Mexico", "United States"]
var groupC = ["China", "Japan", "South Korea"]

// then add them all to the "groups" array
groups.append(groupA)
groups.append(groupB)
groups.append(groupC)

// this will print out the array of arays
print("The groups are:", groups)

// we now append an item to one of the arrays
groups[1].append("Costa Rica")
print("\nAfter adding Costa Rica, the groups are:", groups)

// and now print out groupB's contents again
print("\nGroup B still contains:", groupB)
