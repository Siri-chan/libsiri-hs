module LibSiri (binSearch, takeR, mergeSort) where

---- Take Right
-- Equivalent to the prelude `take`, but takes from a List's tail.
takeR :: Int -> [a] -> [a]
takeR n arr = drop (length arr - n) arr
-- todo warn when length arr <= n

---- Binary Search
-- Given a value to find, and a SORTED list of the same type, returns the index of the value (or errors if it doesnt contain the value).
binSearch :: (Ord a) => a -> [a] -> Int
binSearch query arr = binSearch' query arr 0

binSearch' :: (Ord a) => a -> [a] -> Int -> Int
binSearch' query arr offset 
    -- todo this should fail safely if array is empty or if `query > length arr`
    | null arr = error "test"
    | arr!!m == query = m + offset
    | arr!!m > query  = self (take m arr) offset
    | arr!!m < query  = self (takeR m arr) (m + offset)
    | otherwise       = error "unreachable"
    where l = offset
          r = length arr + offset - 1
          m = l + (r-l) `div` 2
          self = binSearch' query

---- Merge Sort
-- Sort a list.
mergeSort :: (Ord a) => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort arr = merge (mergeSort l, mergeSort r)
    where midpoint = length arr `div` 2
          (l, r) = splitAt midpoint arr

merge :: (Ord a) => ([a], [a]) -> [a]
merge ([], arr) = arr
merge (arr, []) = arr
merge (x : arrx, y : arry)
   | x < y      = x : merge (arrx, y : arry)
   | otherwise  = y : merge(x : arrx, arry)
