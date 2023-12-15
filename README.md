# libSiri-hs

libSiri is a haskell library. 
It's not really a cohesive library to achieve a specific goal or anything like that, 
but just a place for me to implement whatever algorithms I feel like, and to keep them all in one place.

## Current Components
- **Take Right (`takeR`):** An alternative to `drop` that acts more like `take`.
- **Binary Search (`binSearch`):** Given a value to find, and a ***sorted*** list of the same type, returns the index of the value (or errors if it doesnt contain the value).
- **Merge Sort (`mergeSort`):** Sorts a list based on ordering from `Ord`.