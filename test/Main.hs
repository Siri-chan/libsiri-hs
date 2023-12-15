{-# OPTIONS_GHC -Wno-type-defaults #-}

module Main (main) where

import LibSiri

import System.Exit (exitSuccess, exitFailure)

main :: IO ()
main = if tests then exitSuccess else exitFailure

tests:: Bool
-- todo figure out how to make intentional-fail tests like rust's should_panic
tests = binSearch 10 [0..20] == 10 && mergeSort [2, 1, 4, 5, 101, 12, 1] == [1,1,2,4,5,12,101]