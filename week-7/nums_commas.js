// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Alan Alcesto .

// Pseudocode
// - We take an integer
// - Convert integer to string
// - put string into an array
// - measure the length of the array
// - if the array legth is greater than three
// - add a comma after the third element
// - else will return the string

// Initial Solution


// function separateComma(num_int) {

//   var string_num = num_int.toString();
  
//   var starting_end = string_num.slice(-3);
//   var i = -3;
  
//   while(string_num.length + i > 0) {
//     i += -3;
//     starting_end = string_num.slice(i,i+3) + "," + starting_end;
//   }
//   return starting_end;
// };

// console.log(separateComma(100000000000000))

// Refactored Solution

function separateComma(num_int) {

console.log(num_int.toLocaleString("en-EN", { maximumSignificantDigits: 3 }));
};

// Your Own Tests (OPTIONAL)

separateComma(100000000000000)

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// It was hard because the way things are done in ruby are not the same as in Java when it comes to syntax and functions, but
// we appraoched the problem in a similar way and were able to complete the challenge.

// What did you learn about iterating over arrays in JavaScript?

// We learned that for loop and while loops are best for iterating in Javascript and we learned how to use each method.

// What was different about solving this problem in JavaScript?

// First of all we cant use .each so we had to use a for loop or while loop. Also declaring variables and
// remembering that the function dont have a default return.

// What built-in methods did you find to incorporate in your refactored solution?

// We used the toLocaleString that returns the language senstive representation of the string, in this case the way
// numbers are represented for English speakers.


