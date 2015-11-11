// Eloquent JavaScript

// Run this file in your terminal using `node eloquent.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// var thing = "stars"

// console.log("Look at the " + thing)

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var number = 1; number <= 100; number +=1)
{
	if (number%3 == 0 && number%5 == 0)
	{
		console.log("FizzBuzz")
	}
	else if (number%3 == 0)
	{
		console.log("Fizz")
	}
	else if (number%5 == 0)
	{
		console.log("Buzz")
	}
	else
	{
		console.log(number)
	}
}

// Functions

// Complete the `minimum` exercise.

function min(num1,num2) {

	if (num1<num2)

		return num1

	else

		return num2

}

console.log(min(3,2))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Luis Fernando Plaz",
	age: 27,
	foods: ["pizza", "chinese", "meat"]
	quirk: "Love Dogs"
};

// prompt("What is your favorite food")
// console.log("Hey! That's my favorite too!")