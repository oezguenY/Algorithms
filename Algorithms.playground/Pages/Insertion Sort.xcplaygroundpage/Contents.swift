import Foundation

/*
 Insertion Sort is a sorting algorithm that picks an element from the array (usually the first), takes it out of the index it is currently in, and 'inserts' it in the correct position within a 'sorted sublist'. The elements swap indexes if the first element has a greater value than the second element. If not, the iteration continues with the second element & third element to check if they are in ascending order, while the first element has become a part of the 'sorted sublist'. This process of comparing adjacent elements continues throughout the array until the end has been reached.
 
 Best-Case Complexity: О(n) Worst-Case Complexity: О(n^2)
 */

func insertionSort(_ array: [Int]) -> [Int] {
  var a = array
  for x in 1..<a.count {
    var y = x // we store the current index
      // y == 1
      // y == 2
    let temp = a[y] // we store the value of the current index
      // temp == 3
      // temp == 2
      // we satisfy both conditions. Our index is 1 (greater than 0) and 3 is smaller than 4 (smaller than the value in the index prior to it)
      // in the last iteration of the while loop, y == 1. This means, we are comparing temp (which is 2), with 3. Since 2 < 3, the while condition is true
    while y > 0 && temp < a[y - 1] { // while the index is bigger than 0, and the                                  corresponding value of the index is                                     smaller than the value of the index before it
      a[y] = a[y - 1] // store the value of the index before it in the value of                     the current index
        // a[y] == 4
        // a[y] == 3
        // a[y] == 4
        // so our array at this point of the code looks like this:
        // [4,4,2]
        // [3,4,4]
        // [3,3,4]
      y -= 1 // y == 0 (this means our while condition is false and we are exiting the while loop)
            // y == 1
        // y == 0
    }
    a[y] = temp // our array looks like this now:
                // [3,4,2]
                // [2,3,4]
  }
  return a
}

var someNums = [4,3,2]

insertionSort(someNums)
