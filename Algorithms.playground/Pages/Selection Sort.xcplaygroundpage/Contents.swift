import UIKit

/*
 
 Selection Sort is a sorting algorithm that goes through an unsorted array, finds the lowest value, and stores it at the begining of the array (as a sorted sublist). It continues from the 2nd element onwards and once again finds the lowest value in the unsorted array to store as the 2nd element of the sorted sublist. This process continues until the array is sorted.
 
 // MARK: Complexity
 
 Best Case: О(n^2)
 Worst Case: О(n^2)
 
 */


func selectionSort(_ arr: inout [Int]) -> [Int] {
    // if there is less than one value, there isn't anything sortable
    guard arr.count > 1 else { return arr }
    
    for x in 0 ..< arr.count - 1 {
        // here will the index of the lowest value during an iteration be stored
        var lowest = x
        for y in x + 1 ..< arr.count {
            if arr[y] < arr[lowest] {
                
                lowest = y
            }
        }
        if x != lowest {
            arr.swapAt(x, lowest)
            print(arr)
        }
    }
    return arr
}

var numsArray = [34,22,10,19,17]

selectionSort(&numsArray)
