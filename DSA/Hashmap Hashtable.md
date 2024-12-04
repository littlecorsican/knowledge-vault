# Hashmap / Hash table

Basically python dictionary or PHP associative array

Big O is always O(1), constant time, allows for very fast data retrieval no matter how much data there is

## Hash function
Takes an input and output a random output.
The same input will always yield same output.
Take the sum of the ASCII code of input and modulus the length of output will give u an index to put the value in it

## Hash collision
Sometimes u just have 2 values with the same hash function output.
In that case just put them in an 2 element array in an array at that index and loop through the index to find the value you want