import Foundation


/*
 
 A bubble sort iterates over an array and 'bubbles' up higher-value elements towards the end of the array. The 'bubble' operation is a swap of elements if the element at position i is greater than the one at position i+1.
 
 */
// we can either use 'inout', or assign the parameter 'array' to a new variable inside the function scope
func bubbleSort<T: Comparable>(array: inout [T]) -> [T] {
  var isSorted = false
    // 'counter' increases iteratively every time the for-loop finishes. This is because we don't want to sort values that have already been 'bubbled' to the top (bubbled means sorted within this context)
  var counter = 0

  while !isSorted {
      // once the array is sorted, 'isSorted' gets set to true. This also means, that we won't enter the for-loop anymore. This leads the code to exit the while condition, since 'isSorted' is not equal to false anymore.
      // this is our 'exit' out of the while loop (you don't want an infinite loop lol)
    isSorted = true
      // this loops until one value is sorted. This is why we are subtracting counter, which increases + 1 every time the for loop finishes
      // if the code doesn't enter the for-loop, this means we have already sorted the array
      // the algorithm still works if we leave out 'counter' completely - but it will then unnecessarily iterate over already sorted values
      for i in 0..<array.count - 1 - counter {
          // if we finish a whole iteration without swapping - that means that our array is already sorted and we can exit the while scope
      if array[i] > array[i + 1] {
        array.swapAt(i, i + 1)
        isSorted = false
      }
    }
      // we exited one iteration of the for-loop. This is tantamount with one value having been bubbled to the top (sorted). Now, we increase the counter, which we then use one line 20, so we won't sort a value that has already been sorted.
    counter += 1
      // after counter was incremented, we start at the beginning of the while loop again unless 'isSorted' is still true, in which case we exit the while condition and go straight to line 32 where we return the sorted array
  }
    print("Counter: \(counter)")
    print("Sorted Array: \(array)")
  return array
}

var numberArray = ["z","k","a","b"]

bubbleSort(array: &numberArray)

// - MARK: TIME & SPACE COMPLEXITY

/*
 
 SPACE

 Since we are performing the swap in-place, the space complexity is O(1).
 
 TIME

 Best case: O(n)

 In the best-case the algorithm would run in O(n) time. You can imagine an array where only one element is not sorted. One pass over the array will 'bubble' that element to its sorted position. That one pass would iterate through the entire length of the array. The while loop would run once and the for-loop would iterate over the length n of the array once.

 Worst case: O(n^2^)

 If all elements of the array are in an unsorted position, the while loop would iterate up to n times until no sorting swap was performed. The inner for-loop would loop once through the entire length n of the array even if subsequent iterations are up to the last sorted element's index. This would give you the asymptotic complexity of O(n^2^).
 
 */
