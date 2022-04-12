import Foundation

/*
 
 Merge Sort is a sorting algorithm that divides the array into two parts, right down the middle. What about odd numbered arrays? [3,4,5,1,0,8,1] The array would get split after the 4th element and create two sublists. This process would be repeated till there is one single element in a few (7 to be exact in this situation) different 'sorted' sublists. One by one, the elements are compared and merged into a sorted array.
 
 Best-Case Complexity: O(n log(n))
 Worst-Case Complexity: O(n log(n))
 
 
 */

let unorderedArr = [10,24,76,73]

func merge(arr1: [Int], arr2: [Int]) -> [Int] {
  
  var i = 0
  var j = 0

  var mergedArr = [Int]()

  while i < arr1.count && j < arr2.count {
    if arr1[i] < arr2[j] {
      mergedArr.append(arr1[i])
      i += 1
    } else if arr1[i] > arr2[j] {
      mergedArr.append(arr2[j])
      j += 1
    } else {
      mergedArr.append(arr1[i])
      i += 1
      mergedArr.append(arr2[j])
      j += 1
    }
  }

  
  while i < arr1.count {
    mergedArr.append(arr1[i])
    i += 1
  }

  while j < arr2.count {
    mergedArr.append(arr2[j])
    j += 1
  }

  return mergedArr
}

func mergeSort(_ array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }

  let middleIndex = array.count / 2

  let leftArray = mergeSort(Array(array[0..<middleIndex]))

  let rightArray = mergeSort(Array(array[middleIndex..<array.count]))

  return merge(arr1: leftArray, arr2: rightArray)
}


mergeSort(unorderedArr)
