// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Walter Kerr
// This challenge took me [4] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// Go through votes objects and retrieve candidate name.
// For each candidate name and his voted position, initiate an object that will store name of candidate and his vote count in
// the position he was voted for.
// Every time the candidate name reappears just update object vote count property in the respective position property.


// __________________________________________
// Initial Solution

// var tallyVotes = function(object_hash) {

//   x = 0;

//   for (var name in object_hash) {

//     if (object_hash.hasOwnProperty(name)) { 

//       var obj = object_hash[name];

//       for (var tally in obj){

//         if(obj.hasOwnProperty(tally))
//         {
//           if(tally == "president")
//           {
//             if (voteCount.president.hasOwnProperty(obj[tally]))
//             {
//               voteCount.president[obj[tally]] += 1;
//             }
//             else
//             {
//               voteCount.president[obj[tally]] = 1;
//             }
//           }
//           else if(tally == "vicePresident")
//           {
//             if (voteCount.vicePresident.hasOwnProperty(obj[tally]))
//             {
//               voteCount.vicePresident[obj[tally]] += 1;
//             }
//             else
//             {
//               voteCount.vicePresident[obj[tally]] = 1;
//             }
//           }
//           else if(tally == "secretary")
//           {
//            if (voteCount.secretary.hasOwnProperty(obj[tally]))
//            {
//             voteCount.secretary[obj[tally]] += 1;
//           }
//           else
//           {
//             voteCount.secretary[obj[tally]] = 1;
//           }
//         }
//         else if(tally == "treasurer")
//         {
//          if (voteCount.treasurer.hasOwnProperty(obj[tally]))
//          {
//           voteCount.treasurer[obj[tally]] += 1;
//         }
//         else
//         {
//           voteCount.treasurer[obj[tally]] = 1;
//         }
//       }

//     }
//   }
// }
// }

// console.log(voteCount);
// pick_Officers(voteCount);
// }

// var pick_Officers = function(object_hash) {

//   var p = v = s = t = 0;

//   for (var name in object_hash) {

//     if (object_hash.hasOwnProperty(name)) { 

//       var obj = object_hash[name];

//       if(name == "president")
//       {
//         for (var tally in obj){

//           if(obj[tally] >= p)
//           {
//             p = obj[tally];
//             officers[name] = tally;
//           }
//         }
//       }
//       else if(name == "vicePresident")
//       {
//         for (var tally in obj){

//           if(obj[tally] >= v)
//           {
//             v = obj[tally];
//             officers[name] = tally;
//           }
//         }
//       }
//       else if(name == "secretary")
//       {
//         for (var tally in obj){

//           if(obj[tally] >= s)
//           {
//             s = obj[tally];
//             officers[name] = tally;
//           }
//         }
//       }
//       else if(name == "treasurer")
//       {
//         for (var tally in obj){

//           if(obj[tally] >= t)
//           {
//             t = obj[tally];
//             officers[name] = tally;
//           }
//         }
//       }
//     }
//   }
// }


// console.log(tallyVotes(votes));
// console.log(officers);

// __________________________________________
// Refactored Solution

var tallyVotes = function(object_hash) {

  x = 0;

  for (var name in object_hash) {

    if (object_hash.hasOwnProperty(name)) { 

      var obj = object_hash[name];

      for (var tally in obj){

        if(obj.hasOwnProperty(tally))
        {
          switch (tally) {
            case "president":
            if (voteCount.president.hasOwnProperty(obj[tally]))
            {
              voteCount.president[obj[tally]] += 1;
            }
            else
            {
              voteCount.president[obj[tally]] = 1;
            }
            break;
            case "vicePresident":
            if (voteCount.vicePresident.hasOwnProperty(obj[tally]))
            {
              voteCount.vicePresident[obj[tally]] += 1;
            }
            else
            {
              voteCount.vicePresident[obj[tally]] = 1;
            }
            break;
            case "secretary":
            if (voteCount.secretary.hasOwnProperty(obj[tally]))
            {
              voteCount.secretary[obj[tally]] += 1;
            }
            else
            {
              voteCount.secretary[obj[tally]] = 1;
            }
            break;

            case "treasurer":

            if (voteCount.treasurer.hasOwnProperty(obj[tally]))
            {
              voteCount.treasurer[obj[tally]] += 1;
            }
            else
            {
              voteCount.treasurer[obj[tally]] = 1;
            }
          } 
        }
      }
    }
  }
console.log(voteCount);
pick_Officers(voteCount);
}

var pick_Officers = function(object_hash) {

  var p = v = s = t = 0;

  for (var name in object_hash) {

    if (object_hash.hasOwnProperty(name)) { 

      var obj = object_hash[name];

      switch (name) {
        case "president":
        for (var tally in obj){

          if(obj[tally] >= p)
          {
            p = obj[tally];
            officers[name] = tally;
          }
        }
        break;
        case "vicePresident":
        for (var tally in obj){

          if(obj[tally] >= v)
          {
            v = obj[tally];
            officers[name] = tally;
          }
        }
        break;
        case "secretary":
        for (var tally in obj){

          if(obj[tally] >= s)
          {
            s = obj[tally];
            officers[name] = tally;
          }
        }
        break;

        case "treasurer":

        for (var tally in obj){

          if(obj[tally] >= t)
          {
            t = obj[tally];
            officers[name] = tally;
          }
        }
        break;
      }
    }
  }
}

console.log(tallyVotes(votes));
console.log(officers);

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?

// Its hard but once you get a handle of it its very straightforward. Using the for...in you basically
// iterate through a objects in a porperty of an object, and then ask the program to do a specific task.

// Were you able to find useful methods to help you with this?

// We used the hasOwnProperty method to check if the object had said property we were looking to iterate through.

// What concepts were solidified in the process of working through this challenge?

//Nested object interation, team work, time managemenet and javascrip syntax.
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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)