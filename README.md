# Solve the sliding maximum window problem in O(n) time.

## Description
This is a solution to the sliding maximum window problem using a deque with the aim to obtain a solution of O(n) time complexity

## Problem Statement
Sliding Maximum
For every k continuous numbers in an array, print the  largest number. This challenge is easy to "brute-force", but see if you  can find the optimal solution.

Simple Solution: O(nk)
Better Solution: O(n log k)
Optimal Solution: O(n)

Example

This is an example of a test case:

* sliding_maximum(3, [1, 3, 5, 7, 9, 2])
> => [5, 7, 9, 9]

The first argument is k, which is 3 in this case. The output is the largest number for each group of 3 numbers in the list:

| 3 numbers | Largest |
|-----------|---------|
|   1 3 5   |    5    |
|   3 5 7   |    7    | 
|   5 7 9   |    9    | 
|   7 9 2   |    9    | 

### For better understanding read my tutorial for this problem
[How to solve the sliding maximum window in O(n) time](https://medium.com/better-programming/solving-the-sliding-maximum-window-problem-with-o-n-b43ea3dd871f)

### Need help understanding what a deque is or implement in one? Check out my [tutorial on deques](https://medium.com/@oluwadamilareo_/implementing-a-deque-in-ruby-cf6e9bfd9c3c)


## Follow me on [Medium](https://medium.com/@oluwadamilareo_), [Twitter](https://twitter.com/oluwadamilareo_) and [Instagram](https://instagram.com/oluwadamilareolusakin) to find out when I post tutorials! 
