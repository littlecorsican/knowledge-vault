# Quick Sort

Pivot - a point is used to divide the array, u can pick the first or last element.


## How quick sort works

1) in an array simply pick an item to be the pivot
2) reshuffle the elements in array so that left is smaller than pivot and right is bigger
    a) There are two selectors, i and j, i starts from -1, j starts from 0
    b) if index 0 is bigger than pivot, do nothing, if its smaller, swap with i
    c) move j forward 1 step, i doesnt move unless j is smaller than pivot
    d) keep doing so until j reaches pivot
    e) once j reaches pivot, i move forward + 1 , then swap your pivot with i.
3) split the array into 2 sub arrays. Left side will include the pivot.
4) recursively sort both sides of the pivot the same way as 2), repeat until every sub array has just one or no elements.



big O = O(n log n)

at each recursion level takes O(n) time