// JavaScript Olympics

// I paired [by myself, with: Timothy Meixell] on this challenge.

// This challenge took me [1] hours.

// Warm Up

// Bulk Up

// var athletes = [{name: "This guy", event:"Skiing"},{name:"joe", event:"sitting"},{}]

function olympics(array){

  for(var i = 0; i<array.length; i++){     

    array[i].win = array[i].name + " won the " + array[i].event + "!";

  } 

}
// olympics(athletes);
// console.log(athletes);

// Jumble your words

function reverseString(string){
  
  return string.split("").reverse().join("")
  
}

// 2,4,6,8

var numArray = [1,2,3,4,5,6,7,8,9,10]

function onlyEvens(array) {
  
  return array.filter(
    
    function (value) {
      
      return value % 2 == 0;
      
    }
  )
}

// console.log(onlyEvens(numArray))

// "We built this city"

function Athlete(name,age,event,comment){
  
  this.name = name;
  this.age = age;
  this.sport = event;
  this.quote = comment;
  
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);

// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// In this challenge I understood how to make objects and add properties to it. As well as how to handle strings and understand its methods.

// What are constructor functions?

// Constructor functions initialize properties of the objects and gives it its values.

// How are constructors different from Ruby classes (in your research)?

// Constructors dont have methods they just initialize the values of the object. Ruby classes
// initializes the values of the object and defines how they will behave giving it methods as well.