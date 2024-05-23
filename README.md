# SwiftAlgorithms

## Overview

Welcome to SwiftAlgorithms! This repository contains a collection of algorithms implemented in Swift.

## Algorithms

### Easy
1. [Two Sum](./Easy/Two%20Sum)
   - Description: Find two numbers in an array that sum up to a specific target.
   - Implementation: [Two Sum](./Easy/Two%20Sum/TwoSum.swift)
2. [Palindrome Number](./Easy/Palindrome%20Number)
   - Description: Given an integer x, return true if x is a palindrome, and false otherwise.
   - Implementation: [Palindrome Number](./Easy/Palindrome%20Number/PalindromeNumber.swift)
3. [Smallest Index With Equal Value](./Easy/Smallest%20Index%20With%20Equal%20Value)
   - Description: Given a 0-indexed integer array nums, return the smallest index i of nums such that i mod 10 == nums[i], or -1 if such index does not exist.
   - Implementation: [Smallest Index With Equal Value](./Easy/Smallest%20Index%20With%20Equal%20Value/SmallestIndexWithEqualValue.swift)
4. [Remove Duplicates from Sorted Array](./Easy/Remove%20Duplicates%20from%20Sorted%20Array)
   - Description: Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once.
   - Implementation: [Remove Duplicates from Sorted Array](./Easy/Remove%20Duplicates%20from%20Sorted%20Array/RemoveDuplicatesFromSortedArray.swift)
5. [Majority Element](./Easy/Majority%20Element)
   - Description: Given an array nums of size n, return the majority element.
   - Implementation: [Majority Element](./Easy/Majority%20Element/MajorityElement.swift)
6. [Best Time to Buy and Sell Stock](./Easy/Best%20Time%20to%20Buy%20and%20Sell%20Stock)
   - Description: You are given an array prices where prices[i] is the price of a given stock on the ith day.
   - Implementation: [Best Time to Buy and Sell Stock](./Easy/Best%20Time%20to%20Buy%20and%20Sell%20Stock/BestTimeToBuyAndSellStock.swift)

### Medium
1. [Add Two Numbers (Linked Lists)](./Medium/Add%20Two%20Numbers)
   - Description: Add two numbers represented by linked lists.
   - Implementation: [Add Two Numbers](./Medium/Add%20Two%20Numbers/AddTwoNumbers.swift)
2. [Longest Substring Without Repeating Characters](./Medium/Longest%20Substring%20Without%20Repeating%20Characters)
   - Description: Find the length of the longest substring without repeating characters.
   - Implementation: [Longest Substring Without Repeating Characters](./Medium/Longest%20Substring%20Without%20Repeating%20Characters/LongestSubstringWithoutRepeatingCharacters.swift)
3. [Longest Palindromic Substrings](./Medium/Longest%20Palindromic%20Substring)
   - Description: Return the longest palindromic substring in sring.
   - Implementation: [Longest Palindromic Substrin](./Medium/Longest%20Palindromic%20Substring/LongestPalindromicSubstrin.swift) 
4. [Zigzag Conversion](./Medium/Zigzag%20Conversion)
   - Description: The string is written in a zigzag pattern on a given number of rows. Write the code that will take a string and make this conversion.
   - Implementation: [Zigzag Conversion](./Medium/Zigzag%20Conversion/ZigzagConversion.swift) 
5. [Reverse Integer](./Medium/Reverse%20Integer)
   - Description: Given a signed 32-bit integer x, return x with its digits reversed.
   - Implementation: [Reverse Integer](./Medium/Reverse%20Integer/ReverseInteger.swift) 
6. [String to Integer (atoi)](./Medium/String%20to%20Integer%20(atoi))
   - Description: Implement the myAtoi(string s) function, which converts a string to a 32-bit signed integer (similar to C/C++'s atoi function).
   - Implementation: [String to Integer (atoi)](./Medium/String%20to%20Integer%20(atoi)/Atoi.swift) 
7. [Remove Duplicates from Sorted Array II](./Medium/Remove%20Duplicates%20from%20Sorted%20Array%202)
   - Description: Given an integer array nums sorted in non-decreasing order, remove some duplicates in-place such that each unique element appears at most twice.
   - Implementation: [Remove Duplicates from Sorted Array II](./Medium/Remove%20Duplicates%20from%20Sorted%20Array%202/RemoveDuplicatesFromSortedArrayII.swift) 
8. [Rotate Array](./Medium/Rotate%20Array)
   - Description: Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
   - Implementation: [Rotate Array](./Medium/Rotate%20Array/RotateArray.swift) 
9. [Best Time to Buy and Sell Stock II](./Medium/Best%20Time%20to%20Buy%20and%20Sell%20Stock%20II)
   - Description: You are given an integer array prices where prices[i] is the price of a given stock on the ith day.
   - Implementation: [Best Time to Buy and Sell Stock II](./Medium/Best%20Time%20to%20Buy%20and%20Sell%20Stock%20II/BestTimeToBuyAndSellStockII.swift) 
10. [Jump Game](./Medium/Jump%20Game)
   - Description: You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position. Return true if you can reach the last index, or false otherwise.
   - Implementation: [Jump Game](./Medium/Jump%20Game/JumpGame.swift) 
10. [Jump Game2](./Medium/Jump%20Game%20II)
   - Description: You are given a 0-indexed array of integers nums of length n. You are initially positioned at nums[0]. Return the minimum number of jumps to reach nums[n - 1]. The test cases are generated such that you can reach nums[n - 1].
   - Implementation: [Jump Game2](./Medium/Jump%20Game%20II/JumpGame2.swift) 
11. [H-Index](./Medium/H-Index)
   - Description: Given an array of integers citations where citations[i] is the number of citations a researcher received for their ith paper, return the researcher's h-index.
   - Implementation: [H-Index](./Medium/H-Index/H-Index.swift) 

### Hard
1. [Median of Two Sorted Arrays](./Hard/Median%20of%20Two%20Sorted%20Arrays)
   - Description: Find the median of the two sorted arrays.
   - Implementation: [Median of Two Sorted Arrays](./Hard/Median%20of%20Two%20Sorted%20Arrays/MedianofTwoSortedArrays.swift)
2. [Regular Expression Matching](./Hard/Regular%20Expression%20Matching)
   - Description: Implement regular expression matching with support for '.' and '*'.
   - Implementation: [Regular Expression Matching](./Hard/Regular%20Expression%20Matching/RegularExpressionMatching.swift)

### Concurrency
1. [Producer-Consumer Problem](./Concurrency/Producer-Consumer%20Problem)
   - Description: Design a system where one or more producers generate data and place it into a buffer, and one or more consumers take data from the buffer. Ensure that the buffer never overflows and that consumers do not try to consume from an empty buffer.
   - Implementation: [Producer-Consumer Problem](./Concurrency/Producer-Consumer%20Problem/ProducerConsumerProblem.swift)
2. [Dining Philosophers Problem](./Concurrency/Dining%20Philosophers%20Problem)
   - Description: Five philosophers sit around a table with a fork between each pair. They spend their time thinking and eating. However, a philosopher can only eat if they have both forks. Design a synchronization mechanism to avoid deadlock.
   - Implementation: [Dining Philosophers Problem](./Concurrency/Dining%20Philosophers%20Problem/DiningPhilosophersProblem.swift)
3. [Readers-Writers Problem](./Concurrency/Readers-Writers%20Problem)
   - Description: Design a system where multiple threads can read a shared resource, but only one thread can write to it at a time. Ensure that readers do not starve writers and vice versa.
   - Implementation: [Readers-Writers Problem](./Concurrency/Readers-Writers%20Problem/ReadersWritersProblem.swift)
4. [Barbershop Problem](./Concurrency/Barbershop%20Problem)
   - Description: In a barbershop with one barber, multiple customers can enter. If the barber is busy, customers wait. If there are no customers, the barber sleeps. Design a synchronization mechanism for this scenario.
   - Implementation: [Barbershop Problem](./Concurrency/Barbershop%20Problem/BarbershopProblem.swift)
5. [Traffic Light Intersection](./Concurrency/Traffic%20Light%20Intersection)
   - Description: Design a traffic light system for an intersection where traffic lights change to allow vehicles from different directions to pass safely without collisions.
   - Implementation: [Traffic Light Intersection](./Concurrency/Traffic%20Light%20Intersection/TrafficLightIntersection.swift)
6. [Thread Pool](./Concurrency/Thread%20Pool)
   - Description: Design a thread pool where a fixed number of threads process tasks from a queue. This ensures that the system does not get overwhelmed by too many concurrent tasks.
   - Implementation: [Thread Pool](./Concurrency/Thread%20Pool/ThreadPool.swift)
7. [Concurrent Map Reduce](./Concurrency/Concurrent%20Map%20Reduce)
   - Description: Implement a concurrent map-reduce algorithm to process a large dataset in parallel.
   - Implementation: [Thread Pool](./Concurrency/Concurrent%20Map%20Reduce/ConcurrentMapReduce.swift)
8. [Bounded Buffer with Multiple Producers and Consumers](./Concurrency/Bounded%20Buffer%20with%20Multiple%20Producers%20and%20Consumers)
   - Description: Extend the Producer-Consumer problem to support multiple producers and consumers with a bounded buffer.
   - Implementation: [Bounded Buffer with Multiple Producers and Consumers](./Concurrency/Bounded%20Buffer%20with%20Multiple%20Producers%20and%20Consumers/BoundedBufferwithMultipleProducersandCnsumers.swift)
9. [Asynchronous File Processing](./Concurrency/Asynchronous%20File%20Processing)
   - Description: Process files asynchronously where multiple threads read from different files, process the content, and write the results to another file.
   - Implementation: [Asynchronous File Processing](./Concurrency/Asynchronous%20File%20Processing/AsynchronousFileProcessing.swift)
10. [Concurrent Access to Shared Resource](./Concurrency/Concurrent%20Access%20to%20Shared%20Resource)
   - Description: Design a system where multiple threads need to safely access and modify a shared resource.
   - Implementation: [Concurrent Access to Shared Resource](./Concurrency/Concurrent%20Access%20to%20Shared%20Resource/ConcurrentAccesstoSharedResource.swift)


## Contribution

Contributions are welcome! Feel free to submit a pull request with your algorithm implementations or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.