// # Die Class 2: Arbitrary Symbols Translate to Javascript

// # I worked on this challenge [by myself, with: ].
// # I spent [#] hours on this challenge.

// # Pseudocode

// # Input: Array of strings
// # Output: String
// # Steps:
	
// 1. If passed array in constructor is empty show error message
// 2. Else 
// 	2.1 Count number of string in array
// 	2.2 Set this number as property sides.
// 3. If rolled method is called
// 	3.1 Randomily Select and index number
// 	3.2 Return Selected String in that index number.
	
// # Initial Solution

// function dice(array)
// {
//   if (array.length == 0)
//   {
//     throw "Array Empty, Retry";
//   }
//   else
//   {
//   this.sides = array.length;
//   this.strings = array;
//   }
// }

// function sides(object)
// {
//   return object.sides;  
// }

// function roll(object)
// {
//   index = Math.floor((Math.random() * (object.sides)));
//   return object.strings[index];  
// }

// var newDice = new dice(["One","Two","Three","Four"]);
// console.log(sides(newDice));
// console.log(roll(newDice));

// # Refactored Solution

// function dice(array)
// {
//   if (array.length == 0)
//   {
//     throw "Array Empty, Retry";
//   }
//   else
//   {
//   this.sides = array.length;
//   this.strings = array;
//   }
// }

// function sides(object)
// {
//   return object.sides;  
// }

// function roll(object)
// {
//   return object.strings[Math.floor((Math.random() * (object.sides)))];  
// }

// var newDice = new dice(["One","Two","Three","Four"]);
// console.log(sides(newDice));
// console.log(roll(newDice));

// # Reflection

// What concepts did you solidify in working on this challenge? 

// Mostly translating ruby code to javascript and realizing some things like attribute reader and writers dont exist
// in javascript.

// What was the most difficult part of this challenge?

// I would say transalting the code, it wasnt very difficult but still its hard to change from one to the other
// and remember which methods work with each one.

// Did you solve the problem in a new way this time?

// I cant see another way of solving this problem, I did use different methods but the solution is similar but in javascript
// language.

// Was your pseudocode different from the Ruby version? What was the same and what was different?

// The pseudocode was exactly the same because I was able to solve it with different methods but in the same way.

// ------------------------------------------------------------------------------------------------------------------//

// Gocery List Challenge

// User Stories

// Create a new list
// Add an item with a quantity to the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

// Pseudocode

// 1. Creat a new grocery list with empty array.
// 2. When add function is called add new property object for new item.
// 3. When update is called
// 3.1 If object is in grocery list then update item count
// 3.2 Else if uodate item cunt for item.
// 4. When print function is called print items in list.

// Initial Solution

function grocery_List()
{
  this.list = [];
}

function item(name,amount)
{
this.name = name;
this.amount = amount;
}

function add(object,name,amount)
{
var add = new item(name,amount);

object.list.push(add);

}

function update(object,name,amount)
{
  for (var list in object) {

    var object_1 = object[list];

    for (var item in object_1) {

      var object_2 = object_1[item];

      for (var item_inf in object_2) {

        console.log(object_2[item_inf.name]);


      }

      // console.log("name is " + glist[name]);
    }
  }
}


var new_grocery_list = new grocery_List();

add(new_grocery_list,"apple",1);
add(new_grocery_list,"pear",1);
add(new_grocery_list,"watermelon",1);
add(new_grocery_list,"milk",1);

update(new_grocery_list,"milk",2);

// console.log(new_grocery_list);




