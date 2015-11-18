/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

// var gradebook = {
//   "Joseph": {},
//   "Susan": {},
//   "William": {},
//   "Elizabeth": {}
// };

// gradebook["Joseph"].testScores = scores[0];
// gradebook["Susan"].testScores = scores[1];
// gradebook["William"].testScores = scores[2];
// gradebook["Elizabeth"].testScores = scores[3];

// gradebook.addScore = function(name, score) {
//   gradebook[name].testScores.push(score);
// };

// gradebook.getAverage = function(name){
//   return average(gradebook[name].testScores);
// };

// average = function(array){
//   var sum = 0;
//   for (var i = 0; i < array.length; i++) {
//   sum += array[i];
//   };
//   return (sum / array.length);
// };

// __________________________________________
// Refactored Solution

var gradebook = {
  "Joseph": {},
  "Susan": {},
  "William": {},
  "Elizabeth": {}
};

gradebook["Joseph"].testScores = scores[0];
gradebook["Susan"].testScores = scores[1];
gradebook["William"].testScores = scores[2];
gradebook["Elizabeth"].testScores = scores[3];

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};

average = function(array){
  var total = array.reduce(function(a,b) {
  return a + b;
  });
  return total / array.length;
};

// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

// Adding a function to an object is really easy in javascript, it all comes to assigning
// a function to an object through the proper syntax. In this challenge we added functions by using
// this code: object.function_name = function (aguments){};

// How did you iterate over nested arrays in JavaScript?

// For this challenge we really did not have to iterate through a nested loop because once
// we assigned a given array in teh array o arrays to a student it simplified the code. So at the time
// we needed to call the specific score array in the score array of arrays we didnt have to deal with nested
// arrays. Once we knew what student we were claculating the average for we just needed to iterate through his
// score array and return the average.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?

// We implemented the reduce method that reduces the array to the sum of its elements returning a single output
// that refers to the acumulation of the array elements.

// __________________________________________
// Test Code:  Do not alter code below this line.

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)