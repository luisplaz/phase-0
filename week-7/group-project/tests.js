
// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum

//USER STORY ---> As a user I would like to have a function called sum.

assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

//USER STORY ---> As a user I would like the function sum to add all the elements in any odd length array and return the value.


assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

//USER STORY ---> As a user I would like the function sum to add all the elements in any even length array and return the value.

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

//USER STORY ---> As a user I want to have a function called mean.

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

//USER STORY ---> As a user I want the function mean to add all the elements in any odd lengthed array and divide it by the number of elements in this array and return the value.

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

//USER STORY ---> As a user I want the function mean to add all the elements in any even lengthed array and divide it by the number of elements in this array and return the value.

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median

//USER STORY ---> As a user I want to have a function called median.

assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

//USER STORY ---> As a user I want the function median to take an array check if it has an odd number of elements. If it does divide the array length by 2 and round up the result.
//Then return value that is in the index equal to the result obtained by this division.

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

//USER STORY ---> As a user I want the function median to take an array check if it has an even number of elements. If it does divide the array length by 2 and store the result.
//Then add the result stored with its equal plus one and divide this result by 2. Return result of this division.

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)