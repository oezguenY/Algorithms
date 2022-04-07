import Foundation

/*
 
 The essence of the binary search algorithm is dividing in half, and comparing the number in the middle against the number you’re looking for. Based on this comparison, you select either the left or the right half, and start over again.
 
 Binary search works because the input array is sorted. If the input array isn’t sorted, binary search won’t work. Moreover, binary search also only works for array values that can be compared, such as numbers. This doesn’t mean that you cannot use binary search for more complex values, such as objects, it just means those objects will need to have a unique numerical key (or index) you can search through. For example, searching for a primary key value in MySQL (a database tool) uses binary search.
 
 */

func binarySearch<T: Comparable>(in arr: [T], for value: T) -> Int? {
    var left = 0
    var right = arr.count - 1
    
    while left <= right {
        let middle = Int(floor(Double(left+right)/2))
        if arr[middle] < value {
            left = middle + 1
        } else if arr[middle] > value {
            right = middle - 1
        } else {
            return middle
        }
    }
    return nil
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
let value = 13
let letters = ["a","b","c","d","e","f","h"]
let favoriteLetter = "d"

binarySearch(in: numbers, for: value)

